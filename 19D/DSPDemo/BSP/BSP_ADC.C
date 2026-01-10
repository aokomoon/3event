#include "BSP_ADC.h"
#include "fft.h"
#include "FFTInc.h"
#include "main.h"
#include "usart.h"
#include "adc.h"
#include "stdio.h"
#include "arm_math.h"
//----------- ADC -----------//
volatile uint32_t sample_rate = ADC_SAMPLE_RATE;
__attribute__((section (".RAM_SDRAM"))) ADC_def	adc_ch[3];
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

float32_t pdata1  =0;
float32_t pdata2  =0;
float32_t pdata3  =0;

float32_t U_source;    //输出电压源的值
float32_t U_real;      //负载电阻的值

//电阻值
#define R_IN_f   5000.0f		//输入电阻负载
#define R_OUT_f  20000.0f		//输出电阻负载
#define U_IN_ZOOM  1.0f     	//输入电压增益			待定
#define U_OUT_ZOOM  1.0f     	//输出电压增益	

float32_t R_IN;	     //输入电阻
float32_t R_OUT;	 //输出电阻



//扫频
volatile uint8_t FSK_mode;
float32_t freq_response[400];		//扫频对应的频幅特性

// fir
float32_t fir_output[ADC_SAMPLE_LENGTH];

//采样时钟819200hz   分辨率200hz

//输入电阻是ADC1,ADC2,其中ADC1是负载电阻的左端，就是信号输入，ADC2是负载电阻右侧，实际就是输入电阻的电压
//输出电阻分两个采样周期测量，ADC3是测量输出电压的点
//SWITCH引脚为低电平的时候就是负载空接的时候，高电平的时候就是负载接入的状态

//第一版比例
//直流和交流的缩放倍数0.265，原来的直流5.16，衰减后的直流1.42      交流峰峰值：1.52V   衰减后：0.4v				

/**
 * @brief ADC数字数据处理函数
 */
void adc_dsp_working(void)
{

	if((adc_ch[0].conv_end_flag == 1) &&(adc_ch[1].conv_end_flag == 1)&&(adc_ch[2].conv_end_flag == 1))
	{	

		adc_ch[0].conv_end_flag = 0;
		adc_ch[1].conv_end_flag = 0;
		adc_ch[2].conv_end_flag = 0;
		
		/* 将 ADC 采集到的整形数据提前转换为浮点数据存储 */
		for (uint32_t i = 0; i < ADC_SAMPLE_LENGTH; i ++) {
			adc_ch[0].adc_float_buf[i] = (float32_t)adc_ch[0].adc_buf[i];
			adc_ch[1].adc_float_buf[i] = (float32_t)adc_ch[1].adc_buf[i];
			adc_ch[2].adc_float_buf[i] = (float32_t)adc_ch[2].adc_buf[i];

		}
		
		/* 去除直流分量 */
		remove_dc_part(adc_ch[0].adc_float_buf, &adc_ch[0].da_part, ADC_SAMPLE_LENGTH);
		remove_dc_part(adc_ch[1].adc_float_buf, &adc_ch[1].da_part, ADC_SAMPLE_LENGTH);
		remove_dc_part(adc_ch[2].adc_float_buf, &adc_ch[2].da_part, ADC_SAMPLE_LENGTH);

		//去直流之后FFT变换，得出的有效值，就是电压交流时的有效值，但是在ADC3中的要加入直流分量
		inf_fft_with_mag_norm_f32(adc_ch[0].adc_float_buf, adc1_fft_input, adc1_fft_output, MAX_FFT_N);
		inf_fft_with_mag_norm_f32(adc_ch[1].adc_float_buf, adc2_fft_input, adc2_fft_output, MAX_FFT_N);
		inf_fft_with_mag_norm_f32(adc_ch[2].adc_float_buf, adc3_fft_input, adc3_fft_output, MAX_FFT_N);
		
		arm_max_f32(adc1_fft_output,MAX_FFT_N/2,&pdata1,&pindex1);
		arm_max_f32(adc2_fft_output,MAX_FFT_N/2,&pdata2,&pindex2);
		arm_max_f32(adc3_fft_output,MAX_FFT_N/2,&pdata3,&pindex3);

	/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	/*---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
	   if((FSK_mode == 1)&&(start_flag == 0))//扫频输出幅频特性曲线，ADC1是输入电压，ADC3是输出电压
		{
			freq2 = 819200*pindex2/4096;
			if(freq2<=400000)
			{
				freq_response[400000/freq2 - 1] = (pdata3/pdata1);  //频率对应的增益比值
			}
			else 
			{
				__NOP();
			}
			
	
			start_flag = 1;
		}
		else //普通采样,电阻、增益的测量
		{
			//在进入这个函数之前已经把R_OUT_state翻转了
			if(R_OUT_state == 1) 			//此时这组数据是空载数据
			{
				U_source = (pdata1*ZOOM);   //输入电压
			}
			else 
			{
				U_real = (pdata3*ZOOM);     //输出电压
			}
			R_OUT = (U_source/U_real - 1)*R_OUT_f;   //输出电阻计算



			printf("%f,%f,%f\n",(pdata1*ZOOM),(pdata2*ZOOM),(pdata3*ZOOM));
			
		}
 }
}

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
	if (hadc->Instance == ADC3) 
	{
		adc_ch[2].conv_end_flag = 1;
		R_OUT_state = !R_OUT_state;//翻转，R_OUT_state=0是空载，R_OUT_state=1是带载
		HAL_GPIO_WritePin(SWITCH_GPIO_Port,SWITCH_Pin,R_OUT_state);
	}

	
	
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



