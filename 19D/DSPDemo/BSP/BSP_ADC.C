#include "BSP_ADC.h"
#include "fft.h"
#include "FFTInc.h"
#include "main.h"
#include "usart.h"
#include "adc.h"
#include "stdio.h"
#include "arm_math.h"
#include "AD9854_Parallel.h"
//----------- ADC -----------//
volatile uint32_t sample_rate = ADC_SAMPLE_RATE;
__attribute__((section (".RAM_SDRAM"))) ADC_def	adc_ch[3];
__attribute__((section (".RAM_SDRAM"))) float32_t adc1_to_dc[ADC_SAMPLE_LENGTH];
__attribute__((section (".RAM_SDRAM"))) float32_t dac_out_buf[ADC_SAMPLE_LENGTH];

//----------- WINDOW -----------//
__attribute__((section (".RAM_SDRAM"))) float32_t adc1_window[ADC_SAMPLE_LENGTH];
__attribute__((section (".RAM_SDRAM"))) float32_t adc2_window[ADC_SAMPLE_LENGTH];
__attribute__((section (".RAM_SDRAM"))) float32_t adc3_window[ADC_SAMPLE_LENGTH];


//----------- FFT -----------//
__attribute__((section (".RAM_SDRAM"))) float32_t adc1_fft_input[MAX_FFT_N * 2];
__attribute__((section (".RAM_SDRAM"))) float32_t adc1_fft_output[MAX_FFT_N];
__attribute__((section (".RAM_SDRAM"))) float32_t adc2_fft_input[MAX_FFT_N * 2];
__attribute__((section (".RAM_SDRAM"))) float32_t adc2_fft_output[MAX_FFT_N];
__attribute__((section (".RAM_SDRAM"))) float32_t adc3_fft_input[MAX_FFT_N * 2];
__attribute__((section (".RAM_SDRAM"))) float32_t adc3_fft_output[MAX_FFT_N];
float32_t adc1_phase, adc2_phase, adc3_phase;
float32_t adc1_freq, adc2_freq, adc3_freq;
float32_t adc1_base_amp, adc2_base_amp, adc3_base_amp;
uint32_t adc1_base_ampIndex, adc2_base_ampIndex, adc3_base_ampIndex;

// 变量标志位
uint16_t flag =1;
uint8_t start_flag;
uint32_t freq2 =0;

uint32_t pindex1  =0;
uint32_t pindex2  =0;
uint32_t pindex3  =0;


//交流信号值
float32_t pdata1  =0;		//输出
float32_t pdata2  =0;		//输入外（靠近dds）
float32_t pdata3  =0;		//数入内（靠近电路）


//基础部分
float32_t U_source;    //输出电压源的值
float32_t U_source_reg;//空载输出电压值
float32_t U_in_reg;	   //空载输入电压的值
float32_t U_real;      //负载电阻的值

//进阶部分
float32_t U_DC_reg;    //空载输出电压直流记录量    记录的是频率为1K时的值
float32_t U_AC_reg;	   //空载输出电压交流记录量
uint32_t  freq_new;    //新的频率值
float32_t U_DC_new;
uint16_t  ele_state;   //电路目前状态
volatile uint16_t  re_flag = 0;     //状态混叠改变输入条件重新判断标志位
uint16_t RE_CT_state;  //输入信号幅值标志位   0：25mv     1：300mv
uint16_t  C_flag;
uint32_t  freqc;

//判断条件
						float32_t pdata_re;
						uint16_t index_re;




//电阻值
#define R_IN_f   5000.0f		//输入电阻负载
#define R_OUT_f  20000.0f		//输出电阻负载
#define U_IN_ZOOM  10.0f     	//输入电压放大增益			
#define U_OUT_ZOOM  4.35f     	//输出电压缩小增益	

float32_t U_ZOOM;


float32_t R_IN;	     //输入电阻
float32_t R_OUT;	 //输出电阻
float32_t R_IN_reg;	     //输入电阻缓存
float32_t R_OUT_reg;	 //输出电阻缓存


static int R_OUT1_count = 0;
static int R_OUT2_count = 0;
float32_t R_OUT_DC;

//扫频
volatile uint8_t FSK_mode;  //扫频模式
volatile uint8_t power_mode = 0;//故障模式

float32_t freq_response[4000];		//扫频对应的频幅特性

// fir
float32_t fir_output[ADC_SAMPLE_LENGTH];

//采样时钟819200hz   分辨率200hz

//输入电阻是ADC1,ADC2,其中ADC1是负载电阻的左端，就是信号输入，ADC2是负载电阻右侧，实际就是输入电阻的电压			75倍
//输出电阻分两个采样周期测量，ADC3是测量输出电压的点
//SWITCH引脚为低电平的时候就是负载空接的时候，高电平的时候就是负载接入的状态

//第一版比例
//直流和交流的缩放倍数0.265，原来的直流5.16，衰减后的直流1.42      交流峰峰值：1.52V   衰减后：0.4v	
//第二版比例
//直流和交流的缩放倍数2.95，原来的直流7.04，衰减后的直流2.38      交流峰峰值：3.28V   衰减后：1.10v	




//实际判断较长，有待优化

/**
 * @brief ADC数字数据处理函数
 */
void adc_dsp_working(void)
{


	/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	 if(FSK_mode == 1)//扫频输出幅频特性曲线，ADC1是输入电压，ADC3是输出电压
		{
			
		//printf("%d\n",adc_ch[0].conv_end_flag )	;
	   if((adc_ch[0].conv_end_flag == 1))//&&(adc_ch[2].conv_end_flag == 1))
	   {	

		adc_ch[0].conv_end_flag = 0;
		adc_ch[2].conv_end_flag = 0;
		
		/* 将 ADC 采集到的整形数据提前转换为浮点数据存储 */
		for (uint32_t i = 0; i < ADC_SAMPLE_LENGTH; i ++) {
			adc_ch[0].adc_float_buf[i] = (float32_t)adc_ch[0].adc_buf[i];
			adc_ch[2].adc_float_buf[i] = (float32_t)adc_ch[2].adc_buf[i];
		}
		
		    remove_dc_part(adc_ch[0].adc_float_buf, &adc_ch[0].da_part, ADC_SAMPLE_LENGTH);
			remove_dc_part(adc_ch[2].adc_float_buf, &adc_ch[2].da_part, ADC_SAMPLE_LENGTH);


		    inf_fft_with_mag_norm_f32(adc_ch[0].adc_float_buf, adc1_fft_input, adc1_fft_output, MAX_FFT_N);
			inf_fft_with_mag_norm_f32(adc_ch[2].adc_float_buf, adc3_fft_input, adc3_fft_output, MAX_FFT_N);

			arm_max_f32(adc1_fft_output,MAX_FFT_N/2,&pdata1,&pindex1);
			arm_max_f32(adc3_fft_output,MAX_FFT_N/2,&pdata3,&pindex3);
			freq2 = 819200*pindex1/4096;

			//float32_t zoom_new = ((pdata1*U_OUT_ZOOM)/(pdata3/U_IN_ZOOM));
			freq_response[freq2/1000] = ((pdata1*U_OUT_ZOOM)/(pdata3/U_IN_ZOOM));
			
			if(start_flag == 0)
			{
				
				if(freq2<380000)
				{
					//printf("add 1,0,%d\xFF\xFF\xFF",(int)(freq_response[freq2/1000]));
					printf("%f,%d\n",freq_response[freq2/1000],freq2);
					//printf("%f,%f,%f,%d\n",,(pdata1*U_OUT_ZOOM),(pdata3/U_IN_ZOOM),freq2);
					//printf("%f,%f,%d\n",(pdata2/U_IN_ZOOM),(pdata3/U_IN_ZOOM),freq2);
				}
				else if(freq2>=380000)
				{
					float32_t U_data;
					int U_index;
					arm_max_f32(freq_response,200,&U_data,(uint32_t*)U_index);
					for(int i=0;i<200;i++)
					{
						if(freq_response[i] >= (U_data*0.707-3.0f)&& freq_response[i] <= (U_data*0.707+3.0f))
						{
							printf("freqH.txt=\"%d\"\xFF\xFF\xFF\n",i*1000);
							
							break;
						}
					}
				}
				
				start_flag = 1;
			}
		
		}
		}
		else
		{
			if((adc_ch[0].conv_end_flag == 1)&& (adc_ch[1].conv_end_flag == 1) && (adc_ch[2].conv_end_flag == 1))
			{
				adc_ch[1].conv_end_flag = 0;
				adc_ch[1].conv_end_flag = 0;
				adc_ch[2].conv_end_flag = 0;
				//printf("%d\n",FSK_mode )	;

				/* 将 ADC 采集到的整形数据提前转换为浮点数据存储 */
				for (uint32_t i = 0; i < ADC_SAMPLE_LENGTH; i ++) {
					adc_ch[0].adc_float_buf[i] = (float32_t)adc_ch[0].adc_buf[i];
					adc_ch[1].adc_float_buf[i] = (float32_t)adc_ch[1].adc_buf[i];
					adc_ch[2].adc_float_buf[i] = (float32_t)adc_ch[2].adc_buf[i];
				
				}

				//remove_dc_part(adc_ch[0].adc_float_buf, &adc_ch[0].da_part, ADC_SAMPLE_LENGTH);
				remove_dc_part(adc_ch[1].adc_float_buf, &adc_ch[1].da_part, ADC_SAMPLE_LENGTH);
				remove_dc_part(adc_ch[2].adc_float_buf, &adc_ch[2].da_part, ADC_SAMPLE_LENGTH);

				//去直流之后FFT变换，得出的有效值，就是电压交流时的有效值，但是在ADC3中的要加入直流分量
				inf_fft_with_mag_norm_f32(adc_ch[0].adc_float_buf, adc1_fft_input, adc1_fft_output, MAX_FFT_N);
				inf_fft_with_mag_norm_f32(adc_ch[1].adc_float_buf, adc2_fft_input, adc2_fft_output, MAX_FFT_N);
				inf_fft_with_mag_norm_f32(adc_ch[2].adc_float_buf, adc3_fft_input, adc3_fft_output, MAX_FFT_N);

				R_OUT_DC = adc1_fft_output[0];
				adc1_fft_output[0] = 0;

				

			    arm_max_f32(adc1_fft_output,MAX_FFT_N/2,&pdata1,&pindex1);
			    arm_max_f32(adc2_fft_output,MAX_FFT_N/2,&pdata2,&pindex2);
			    arm_max_f32(adc3_fft_output,MAX_FFT_N/2,&pdata3,&pindex3);

				freqc = 819200*pindex1/4096;



			    U_source_reg  = (R_OUT_state==1) ?pdata1 : U_source_reg;  //空载输出电压
			    U_in_reg      = (R_OUT_state==1) ?pdata3 : U_in_reg;      //空载输入电压
			
			if(R_OUT_state==0)				
			{ 
				R_OUT1_count++;
				
				if(R_OUT1_count>=4)
				{
			      R_OUT1_count=0;
				  R_OUT_state = 1;
				  HAL_GPIO_WritePin(SWITCH_GPIO_Port,SWITCH_Pin,R_OUT_state);
				}
				else  if(R_OUT1_count <=1)
				{
				    __NOP();
				}
				else
				{
					U_real = (pdata1*2+R_OUT_DC);  //空载电压
				}
			}
			else 
			{

				R_OUT2_count++;
				
				if(R_OUT2_count>=4)
				{
			      R_OUT2_count=0;
				  R_OUT_state = 0;
				  HAL_GPIO_WritePin(SWITCH_GPIO_Port,SWITCH_Pin,R_OUT_state);
				}
				else  if(R_OUT2_count<=1)
				{
				    __NOP();
				}
			    else
				{
					U_source = (pdata1*2+R_OUT_DC); 	//负载电压
				}
				
			}
			if(U_source!=0&&U_real!=0&&(U_source>U_real))
			{
				R_OUT = (U_source/U_real  - 0.988)*R_OUT_f;   //输出电阻计算
			}


			R_IN = (pdata3)*R_IN_f/(pdata2-pdata3);   //输入电阻计算
			U_ZOOM = ((U_source_reg*U_OUT_ZOOM))/((U_in_reg/U_IN_ZOOM));
			
			
			//printf("%f,%f,%f,%d\n",R_OUT,R_IN,U_ZOOM,FSK_mode);

			if(power_mode == 0)				//故障模式判断
			{
				R_OUT_reg =R_OUT;  
				R_IN_reg = R_IN;   
				U_AC_reg = pdata1*U_OUT_ZOOM;
			    U_DC_reg = R_OUT_DC;
				//printf("Rout.txt=\"%.2f\"\xFF\xFF\xFF",R_OUT);
			    //printf("Rin.txt=\"%.2f\"\xFF\xFF\xFF",R_IN);
			    //printf("U.txt=\"%.2f\"\xFF\xFF\xFF",U_ZOOM);
				printf("%f,%f,%f,%f,%f\n",R_IN,R_OUT,U_ZOOM,R_OUT_DC,pdata1);
				//printf("%f\n",R_OUT*100);
				//printf("%f,%f,%f,%f,%f,%f\n",R_OUT_DC,pdata2,pdata3,R_IN,R_OUT,U_ZOOM);
				//printf("%f,%f\n",R_OUT_DC,pdata1);


			}
			else 
		    {
			
				
			  //R1的情况    开路：交流分量为0，直流分量为电源电压    
			  //R2的情况    开路：交流信号为0.9，直流分量为4.1的直流分量
			  //R3的情况    开路：交流信号为0， 直流分量也近乎为0
			  //R4的情况    开路：交流信号为微小，直流分量近乎为大
			  //float32_t U_DC_reg;    //空载输出电压直流记录量    记录的是频率为1K时的值
              //float32_t U_AC_reg;	   //空载输出电压交流记录量
              //uint32_t  freq_new;    //新的频率值
              //float32_t U_DC_new;
              //uint16_t ele_state;   //电路目前状态s
			
			  //判断R的情况应该是基于输出电阻和输入电阻的情况来判断
			  //条件找区别其他比较显著的判断，尽量条件少一点
			  if(re_flag == 0)			//重新调整条件判断标志位
			  {
				if(freqc == 1000)
				{
					if(R_IN > (R_IN_reg*4.5))    ele_state = 1; 		//R1开路，电阻大概为15000+，实际上的电压也是趋近于直流电压，后续有输入电阻相近的做第二个判断条件
			    else if((R_OUT_DC >(U_DC_reg*0.5))&&(R_OUT_DC<(U_DC_reg*1.1))&&(pdata1 < 0.1)) 
				{
					if(R_IN>(R_IN_reg*4)) ele_state = 10; //C2开路
					else if(R_IN < (2*(-R_IN_reg)))   ele_state = 9;			//C1开路
					else
					ele_state = 2; //R2开路
				}
				
			  //else if((R_OUT_DC<(U_DC_reg*0.5))&&(pdata1 < 0.04))  ele_state = 3;  //R3开路
			    else if((R_IN > (R_IN_reg*4))&& (R_IN < (R_IN_reg*4.5))) ele_state = 4; //R4开路
/*--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/


			    else if((R_OUT_DC>(3))&&(pdata1 < 0.04)&&(R_OUT<(R_OUT_reg*0.21))&&((R_IN<(R_IN_reg*0.5)))) ele_state = 5; //R1短路
			    else if((R_OUT_DC<3.0f)&&(R_OUT_DC>(U_DC_reg)&&(R_IN<(R_IN_reg*0.3)))) ele_state = 6;//R2短路
			    else if((R_OUT_DC>(3))&&((R_IN>R_IN_reg*0.85)&&(R_IN<R_IN_reg*1.15))) ele_state = 7; //R3短路
			 // else if((R_OUT_DC<(U_DC_reg*0.5))&&((pdata1 < 0.04))&&(R_IN<(R_IN_reg*0.16))&&(R_OUT<(R_OUT_reg*0.5))) ele_state = 8;         //R4短路
				
				//else if((R_OUT_DC<U_DC_reg*1.2)&&(R_OUT_DC>U_DC_reg*0.8))

			    else 
			     {
			   		if((R_OUT_DC<(U_DC_reg*0.5))&&(pdata1 < 0.04)&&(R_IN<(R_IN_reg*0.16))&&(R_OUT<(R_OUT_reg*0.5)))//3、8区别判断，需要调整输入幅值
			   		{
			   			re_flag = 1;
						RE_CT_state = 0;
						// power_mode  = 1;
						HAL_GPIO_WritePin(RE_CT_GPIO_Port,RE_CT_Pin,RE_CT_state);			//当前状态设置，0：500mv；1：25mv

			   		}
			   		else 
			   		{
						if(R_IN<2600.0f)
						{
							ele_state = 11;			//C2两倍
						}
						else
						{
							static uint8_t counter  = 0;
							if(counter <=3)
							{
								counter ++;
							}
							else
							{
								AD9854_SetSine(100000,4095);
								counter =0;
							}
							 
						}
			   		}
				 }
				
			   }
			   else if(freqc == 100000)
			   {
				if(((pdata1*U_OUT_ZOOM))/((pdata3/U_IN_ZOOM)) >137)
					    ele_state = 12;		//C3开路
					else 
					{
						AD9854_SetSine(1000,4095);
						ele_state = 0;	
					}
			   }
			  }
			  else 
			  {
				// static uint8_t RE_ct_count = 0;	//	由于在开关时会有不稳定状态，所以取稳定时的状态作为判断标准
				// if(RE_ct_count <= 3)			//等到稳定之后在判断
				// {
				// 	RE_ct_count ++;
					// if(RE_ct_count == 1)
					// {
						
						//两者在输出幅值有较大变化，3：依然较小，8：由于饱和幅值有个尖峰
						//3：R3开路       8：R4短路
						arm_max_f32(adc_ch[0].adc_float_buf,4096,&pdata_re,(uint32_t*)index_re);
						if((pdata_re*ZOOM) >0.9&&(pdata_re*ZOOM)<3)
						{
							ele_state = 8;  	 //R4短路
						}
						else  if((pdata_re*ZOOM) >0&&(pdata_re*ZOOM)<0.9)
						{
							ele_state = 3;   	 //R3开路
						}
						else if((pdata_re*ZOOM)>3.0f)
						{
							//RE_ct_count = 0;
						    //power_mode  = 0;
						    RE_CT_state = 1;
						    HAL_GPIO_WritePin(RE_CT_GPIO_Port,RE_CT_Pin,RE_CT_state);
							re_flag = 0;
						}
						else
						{
							ele_state = 0;
						}

					//}
					// else if(RE_ct_count == 3)
					// {
						
						
					//} 
			}
				
			 // }
			  

			  
			//printf("%d,%d,%d,%f,%f,%f\n",ele_state,re_flag,RE_CT_state,(pdata_re*ZOOM),R_OUT_DC,R_IN);
			
			 
			  printf("%d,%d,%f\n",ele_state,freqc,U_ZOOM);
			
			  //printf("%d,%f,%f,%f,%f\n",ele_state,R_OUT_DC,pdata1,R_OUT,R_IN);
 			}
			
		}	
		
    }
		
 }
//}

	// 第一版方案没有考虑实际
			// 所以实际上要除以根号二
			// 实际上还要判断各ADC的具体增益
			// 设置1，2是采样输入电阻负载的两端电压，实际增益也就是输入电压/输出电压
			// 或许外部硬件电路取两端电压做减法后输出到单片机，这时只需要2路ADC
			// 但是后面扫频又要做输入电压比输出电压的比值，实际上也就要测两路，
			// 如果纯做减法的话，输入电压（一级信号幅值-负载电压）*有效值缩减    这个负载电压是有的
			// 但是输出电压的话，就是要测试输出电压位与地的比值才是准确的，也就是要有一路负载电阻前的电压与地的值交给ADC读取
			// 那就输出电压就不是纯做减法来得到，也就是实际读取的就是输出口的负载电压的两端
			// 由于三极管中有地隔离输入输出电压，那么处理就简单了
			// ADC1->输入负载电阻的差值		ADC2->输出负载电阻的左端,相当于输出电压		ADC3->输出负载电阻的右端
			// 输入电阻 = AD9854输出/（ADC*(有效值)*(增益倍数)/(输入负载电阻))	- 输入负载电阻
			// 输出电阻 =ADC3/((ADC3-ADC2)*(有效值)*(增益倍数)/(输出负载电阻)) - 输出负载电阻
			// FFT变化的是信号的幅值,但是上述的算法实际的电压值应该是有效值,如果直接拿FFT变换的幅值来求就是与实际偏差根号2倍
			// 增益就是(输出信号幅值-ADC1)/(ADC2),扫频就是不断求各频率下的增益比值


/**
 * @brief ADC转换完成回调函数
 */
void HAL_ADC_ConvCpltCallback(ADC_HandleTypeDef* hadc)
{
	if (hadc->Instance == ADC1) adc_ch[0].conv_end_flag = 1;
	if (hadc->Instance == ADC2) adc_ch[1].conv_end_flag = 1;
	if (hadc->Instance == ADC3) adc_ch[2].conv_end_flag = 1;

	
}



/**
 * @brief ADC初始化函数
 */
void adc_init(void)
{
	/* 设置采样率 */
	/* 双边谱：可测频率范围 0 <= f <= fs/2 */
	/* 单边谱：可测频率范围 0 <= f <= fs/2 */

	/* ADC校准 */
	HAL_ADCEx_Calibration_Start(&hadc1, ADC_CALIB_OFFSET, ADC_SINGLE_ENDED);	
	HAL_ADCEx_Calibration_Start(&hadc2, ADC_CALIB_OFFSET, ADC_SINGLE_ENDED);
	HAL_ADCEx_Calibration_Start(&hadc3, ADC_CALIB_OFFSET, ADC_SINGLE_ENDED);

	/* ADC启动 */
	HAL_ADC_Start_DMA(&hadc1,(uint32_t*)&adc_ch[0].adc_buf, ADC_SAMPLE_LENGTH);	
	HAL_ADC_Start_DMA(&hadc2,(uint32_t*)&adc_ch[1].adc_buf, ADC_SAMPLE_LENGTH);
	HAL_ADC_Start_DMA(&hadc3,(uint32_t*)&adc_ch[2].adc_buf, ADC_SAMPLE_LENGTH);

}




/**
 * @brief 计算并去除输入信号直流分量
 */
void remove_dc_part(float32_t* inputdata, float32_t* DCpart, uint32_t length)
{
    arm_mean_f32(inputdata, length, DCpart);
	arm_offset_f32(inputdata, -(*DCpart), inputdata, length);
}



/**
 * @brief 计算能量
 */
float32_t ADC_calculate_energy(float32_t *data, uint32_t length)
{
    float32_t dot;
    arm_dot_prod_f32(data, data, length, &dot); // dot = sum_i (data[i] * data[i])
    dot *= (ZOOM * ZOOM); // 缩放
    return dot / length;
}



