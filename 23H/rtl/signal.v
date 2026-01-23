module signal
(
    input   wire          sys_clk       ,        //系统时钟50M
    input   wire          sys_rst       ,
    input   wire signed [9:0]   mix_signal    ,        //ADC采集的数据,目前是无符号数据采样率1.024Mhz
    
    output  reg           fft_flag               //数据采集完成之后转为FFT
    
);


//unsign->signed
reg     signed [9:0]    sign_signal     ;



//test
wire  [9:0]  signal_test    ;
reg   [9:0]  address        ;    
wire         updata_flag    ;       //FFT更新标志位


//PLL
wire    clk_50M     ;
wire    clk_1_024M  ;
wire    locked      ;
wire    rst_real    ;

//ADC_RAM
wire  [9:0]  rdaddress   ;
reg     rden        ;
reg  [9:0]   wraddress   ;
reg     wren        ;
wire signed [9:0]   signdata    ;


//采样转移标志位
reg     ADC_over_en     ;


/* 

PLL	PLL_inst 
(
	.areset (!sys_rst       ),
	.inclk0 (sys_clk        ),
	.c0     (clk_50M        ),      //50M，FFT处理的时钟
	.c1     (clk_1_024M     ),      //1.024M，系统采样时钟
	.locked (locked         )       //信号有效标志位
); */


//assign  rst_real = (locked)&(sys_rst);      //实际的复位键，信号有效位与复位



//状态转化
reg  [3:0]      adc_state   ;
parameter   ADC_wait    =   4'b0    ,
            ADC_RAM     =   4'b1    ,
            RAM_read    =   4'd2    ;



always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        address <=  10'd0;
    else 
        address <=  address +1'd1;
        
//无符号数转有符号数        
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        sign_signal    <=  10'd0;
    else    if((signal_test < 10'd511)||(signal_test == 10'd511))
        sign_signal    <=  {1'b1,(signal_test[8:0])};
    else    if(signal_test > 10'd511)
        sign_signal    <=  {1'b0,(signal_test[8:0])};




always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        begin
            wren     <=  1'b0       ;
            wraddress<=  10'd0      ;
            adc_state<= ADC_wait    ;
            ADC_over_en<=   1'b0    ;
        end 
    else 
        begin
            case(adc_state)
            ADC_wait:
                begin 
                    if((signal_test>10'd508)&&(signal_test<10'd514)) 
                        begin
                            wren     <=  1'b1        ;
                            adc_state<= ADC_RAM      ;
                        end 
                    else    
                        adc_state<= ADC_wait    ;
                
                end 
            ADC_RAM:
                begin
                    if(wraddress<10'd1023) 
                        wraddress<= wraddress  + 1'b1;
                    else if(wraddress==10'd1023)
                        begin
                            wraddress<= 10'd0        ;
                            wren     <= 1'd0         ;
                            ADC_over_en<=  1'd1      ;
                            adc_state<= RAM_read     ;
                        end 
                end 
            RAM_read:
                begin 
                    if(rden == 1'b0)
                        begin
                            ADC_over_en <= 1'b0      ;
                            adc_state<= ADC_wait     ;
                        end 
                    else 
                        adc_state<= adc_state    ;
                end 
            
            endcase 
            
            
        
        
        end  
        
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        fft_flag <= 1'd0     ;   
    else if(ADC_over_en == 1'd1)
        fft_flag <= 1'd1     ; 
    else if(rdaddress==10'd1023) 
        fft_flag <= 1'd0     ;
    else 
        fft_flag <= fft_flag ;
        


 
//存储1024个波形数据提交到FFTmodule，判断采样条件是合成C信号的零点
RAM	RAM1 
(
	.data       (sign_signal  ),
	.rdaddress  (rdaddress    ),
	.rdclock    (sys_clk      ),
	.rden       (fft_flag     ),
	.wraddress  (wraddress    ),
	.wrclock    (sys_clk      ),
	.wren       (wren         ),
	.q          (signdata     )
);

//存储1024个波形数据提交到FFTmodule，判断采样条件是合成C信号的零点
RAM	RAM2 
(
	.data       (sign_signal  ),
	.rdaddress  (rdaddress    ),
	.rdclock    (sys_clk      ),
	.rden       (fft_flag     ),
	.wraddress  (wraddress    ),
	.wrclock    (sys_clk      ),
	.wren       (wren         ),
	.q          (signdata     )
);




ROM	ROM_inst 
(
	.address (address     ),
	.clock   (sys_clk     ),
	.rden    (1           ),
	.q       (signal_test )
);

FFT_CT  FFT_CT_inst
(
    .sys_clk      (sys_clk     ) ,       //系统时钟50M
    .sys_rst      (sys_rst    ) ,
    .mix_signal   (signdata    ) ,       //ADC采集的数据
    .adc_flag     (fft_flag    ) ,       //数据推送标志位
                  
    .updata_flag  (updata_flag ) ,       //数据更新标志位 
    .address      (rdaddress   )         //ADC数据的地址位
    

);



endmodule 


