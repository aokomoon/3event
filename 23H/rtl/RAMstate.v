//双RAM采样
module RAMstate
(
    input       wire                    sys_clk       ,
    //input       wire                    sys_clk2      ,
    input       wire                    sys_rst       ,
    input       wire      [9:0]         ADC_signal    ,       //ADC传入的无符号数据
    output      wire                    ADC_clk       


);
/* reg   [9:0]  address        ;  
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        address <=  10'd0;
    else 
        address <=  address +1'd1;
 */


//PLL
wire    clk_50M     ;
wire    clk_5_12M   ;
wire    locked      ;
wire    rst_real    ;


(* keep = "true" *)wire   [9:0]            count_realA   ;
(* keep = "true" *)wire   [9:0]            mag_max_sqrtA ;
(* keep = "true" *)wire  signed  [18:0]    q_mul_outA    ;
(* keep = "true" *)                                     
(* keep = "true" *)wire   [9:0]            count_realB   ;
(* keep = "true" *)wire   [9:0]            mag_max_sqrtB ;
(* keep = "true" *)wire  signed  [18:0]    q_mul_outB    ;
(* keep = "true" *)wire  signed  [19:0]    ans           ;
//wire          [9:0]     address       ;

PLL	PLL_inst 
(
	.areset (!sys_rst       ),
	.inclk0 (sys_clk        ),
	.c0     (clk_50M        ),      //50M，FFT处理的时钟
	.c1     (clk_5_12M      ),      //5.12M，系统采样时钟
	.locked (locked         )       //信号有效标志位
);


assign  rst_real = (locked)&(sys_rst);      //实际的复位键，信号有效位与复位
 
 
assign ADC_clk = clk_5_12M;
 
 
//wire         [9:0]   ADC_signal      ;
reg          [9:0]   ADC_signal_reg  ;  //寄存器缓存
reg          [9:0]   ADC_signal_reg2 ;  //寄存器缓存2

wire         [9:0]   FFT_adder   ;   //FFT同步的数据位

//un->signed

reg  signed [9:0]   sign_signal  ;   //转化后的有符号数据

//RAM1  
wire        [9:0]   rdaddress1   ;
wire                rden1        ;
reg         [9:0]   wraddress1   ;
reg         [9:0]   wraddress1reg;
reg                 wren1        ;
wire signed [9:0]   signdata1    ;
wire signed [9:0]   outdata1     ;

//RAM2  
wire        [9:0]   rdaddress2   ;
wire                rden2        ;
reg         [9:0]   wraddress2   ;
reg         [9:0]   wraddress2reg;
reg                 wren2        ;
wire signed [9:0]   signdata2    ;
wire signed [9:0]   outdata2     ;



//FFT
reg                 start_en     ;      //数据开始使能,只要FFT转换结束就置1
wire signed [9:0]   outdata      ;

//状态转换
reg                 RAM_sec      ;      //数据通道的切换
reg         [3:0]   RAM_state    ;      //RAM的状态

parameter   RAM1_WR =   4'd0     ,      //第一次采样是RAM1
            RAM2_WR =   4'd1     ,
            RAM_INIT=   4'd2     ;      //初始化


always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        begin
            ADC_signal_reg  <=  10'd0               ;
            //ADC_signal_reg2 <=  10'd0               ;
        end 
    else 
        begin
            ADC_signal_reg  <=  ADC_signal          ;
            //ADC_signal_reg2 <=  ADC_signal_reg      ;
        end
            






//无符号数转有符号数        
always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        sign_signal    <=  10'd0;
    else    if((ADC_signal_reg < 10'd511)||(ADC_signal_reg == 10'd511))
        sign_signal    <=  {1'b1,(ADC_signal_reg[8:0])};
    else    if(ADC_signal_reg > 10'd511)
        sign_signal    <=  {1'b0,(ADC_signal_reg[8:0])};
        

        
        
        
        

//数据的通道切换
assign   signdata1  =  (RAM_sec == 1'd0)?sign_signal:10'd0  ;
assign   signdata2  =  (RAM_sec == 1'd1)?sign_signal:10'd0  ;
assign   outdata    =  ((rden1 == 1'd1)&&(start_en == 1'd1))?outdata1:outdata2;

assign   rdaddress1 =  (rden1==1'd1)?FFT_adder:1'd0;
assign   rdaddress2 =  (rden2==1'd1)?FFT_adder:1'd0;


always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        begin
            RAM_state   <=  RAM_INIT    ;
            RAM_sec     <=  1'd0        ;
            wren2       <=  1'b0        ;
            wren1       <=  1'b1        ;
            
        end 
    else 
        case(RAM_state)
            RAM_INIT:
                begin 
                    wren2       <=  1'b0        ;
                    wren1       <=  1'b1        ;
                    RAM_state   <=  RAM1_WR     ;
                end
            RAM1_WR:
                begin
                    if(wraddress1 == 10'd1023)
                        begin
                            wren1       <=      1'b0    ;
                            wren2       <=      1'b1    ;
                            RAM_sec     <=      1'b1    ;
                            RAM_state   <=      RAM2_WR ; 
                        end 
                    else    
                            RAM_state   <=      RAM1_WR ;
                end 
            RAM2_WR:
                begin
                    if(wraddress2 == 10'd1023)
                        begin                          
                            wren2       <=      1'b0    ;
                            wren1       <=      1'b1    ;
                            RAM_sec     <=      1'b0    ;
                            RAM_state   <=      RAM1_WR ;    
                        end
                    else 
                            RAM_state   <=      RAM2_WR ; 
                end 
        endcase 


//写地址状态
always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        wraddress1  <=  10'd0                     ;
    else    if(wren1  ==  1'd1) 
        wraddress1  <=  wraddress1  +   1'd1      ;
    else    
        wraddress1  <=  10'd0                     ;
        
always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        wraddress2  <=  10'd0                     ;
    else    if(wren2  ==  1'd1) 
        wraddress2  <=  wraddress2  +   1'd1      ;
    else    
        wraddress2  <=  10'd0                     ;
        
always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        wraddress1reg  <=  10'd0                  ;
    else    
        wraddress1reg  <=  wraddress1             ;
        
always@(posedge clk_5_12M or negedge rst_real)
    if(!rst_real)
        wraddress2reg  <=  10'd0                  ;
    else    
        wraddress2reg  <=  wraddress2             ;        
 


//读地址
always@(posedge clk_50M or negedge rst_real)
    if(!rst_real)
        start_en    <=  1'b0                      ;
    else    if((wraddress1reg == 10'd1023)||(wraddress2reg == 10'd1023))
        start_en    <=  1'b1                      ;
    else    if((rdaddress1 == 10'd1023)||(rdaddress2 == 10'd1023))    
        start_en    <=  1'b0                      ;
    else
        start_en    <=  start_en                  ;

assign  rden1 = ((start_en==1'd1)&&(RAM_state==RAM2_WR))?1'd1:1'd0;
assign  rden2 = ((start_en==1'd1)&&(RAM_state==RAM1_WR))?1'd1:1'd0;




/* always@(posedge sys_clk2 or negedge rst_real)
    if(!rst_real)
        rdaddress1  <=  10'd0                     ;
    else    if(rden1  ==  1'd1) 
        rdaddress1  <=  rdaddress1  +   1'd1      ;
    else    
        rdaddress1  <=  10'd0                     ;
        
always@(posedge sys_clk2 or negedge rst_real)
    if(!rst_real)
        rdaddress2  <=  10'd0                     ;
    else    if(rden2  ==  1'd1) 
        rdaddress2  <=  rdaddress2  +   1'd1      ;
    else    
        rdaddress2  <=  10'd0                     ; */




//存储1024个波形数据提交到FFTmodule
RAM	RAM1 
(
	.data       (signdata1  ),
	.rdaddress  (rdaddress1 ),
	.rdclock    (clk_50M    ),
	.rden       (rden1      ),
	.wraddress  (wraddress1 ),
	.wrclock    (clk_5_12M  ),
	.wren       (wren1      ),
	.q          (outdata1   )
);

//存储1024个波形数据提交到FFTmodule
RAM	RAM2 
(
	.data       (signdata2  ),
	.rdaddress  (rdaddress2 ),
	.rdclock    (clk_50M    ),
	.rden       (rden2      ),
	.wraddress  (wraddress2 ),
	.wrclock    (clk_5_12M  ),
	.wren       (wren2      ),
	.q          (outdata2   )
);

/* 
ROM	ROM_inst 
(
	.address (address     ),
	.clock   (sys_clk     ),
	.rden    (1           ),
	.q       (ADC_signal )
); */







FFT_CT      FFT_CT_inst
(
    .sys_clk     (clk_50M )  ,       //系统时钟50M
    .sys_rst     (rst_real)  ,
    .mix_signal  (outdata )  ,       //ADC采集的数据
    .adc_flag    (start_en)  ,       //数据推送标志位

                 
    .address      (FFT_adder),          //ADC数据的地址位
    .count_realA  (count_realA  ) ,       //最大峰值坐标
    .mag_max_sqrtA(mag_max_sqrtA) ,       //基波幅值
    .q_mul_outA   (q_mul_outA   ) ,       //基波相角
                                
    .count_realB  (count_realB  ) ,       //最大峰值坐标
    .mag_max_sqrtB(mag_max_sqrtB) ,       //B波幅值
    .q_mul_outB   (q_mul_outB   ) ,       //B波相角
    .ans          (ans          ) ,       //频谱平方，实际还需要开根 

);







endmodule 



