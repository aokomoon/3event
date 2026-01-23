module FFT_CT
(
    input       wire                    sys_clk       ,       //系统时钟50M
    input       wire                    sys_rst       ,
    input       wire  [9:0]             mix_signal    ,       //ADC采集的数据
    input       wire                    adc_flag      ,       //数据推送标志位
                                        
                                        
    output      reg                     updata_flag   ,       //幅值和坐标更新标志位
    output      reg    [9:0]            count_realA   ,       //最大峰值坐标
    output      wire   [9:0]            mag_max_sqrtA ,       //基波幅值
    output      wire  signed  [18:0]    q_mul_outA    ,       //基波相角
    
    
    output      wire [5:0]source_exp            ,
    output      reg    [9:0]            count_realB   ,       //最大峰值坐标
    output      wire   [9:0]            mag_max_sqrtB ,       //B波幅值
    output      wire  signed  [18:0]    q_mul_outB    ,       //B波相角
    output      wire  signed  [19:0]    ans           ,       //频谱平方，实际还需要开根     
    output      reg           [9:0]     address               //ADC数据的地址位
    

);


//FFT
wire inverse                    ;           // 输入，为1时进行IFFT，为0时进行FFT
wire sink_ready                 ;           // 输出，FFT引擎准备好接收数据时该信号置位
reg source_ready                ;           // 输入，下传流模块在可以接收数据时将该信号置位
reg sink_valid                  ;           // 输入，有效标记信号，sink_valid和sink_ready都置位时开始数据传输
reg sink_sop                    ;           // 输入，高电平表示1帧数据载入开始
reg sink_eop                    ;           // 输入，高电平表示1帧数据载入结束
wire signed [9:0]sink_imag      ;           // 输入，输入数据的虚部，二进制补码数据
wire [1:0] sink_error           ;           // 输入，表示载入数据状态，一般置0
wire [1:0] source_error         ;           // 输出，表示FFT转换出现的错误
wire source_sop                 ;           // 输出，高电平表示一帧数据转换开始
wire source_eop                 ;           // 输出，高电平表示一帧数据转换结束
reg  source_eop_reg             ;           // 输出延时，一周期
//(* keep = "true" *)wire [5:0]source_exp            ;           // 输出的缩放系数，例如如果是-11，原数据就为原来的2^(-11)倍，实际数据应该是输出数据的  点数/2^(11)倍
wire source_valid               ;
reg  source_valid_reg           ;           // 输出有效标志位的延时，一周期
reg  source_valid_reg2          ;           // 输出有效标志位的延时，二周期
reg  source_valid_reg3          ;           // 输出有效标志位的延时，三周期
wire signed [9:0] xkre          ;           // 输出，输出数据的实部，二进制补码数据
wire signed [9:0] xkim          ;           // 输出，输出数据的虚部

assign inverse  =   1'b1        ;           //只准备FFT正变换
assign sink_imag=   10'd0       ;           //虚部为0 ，实数  FFT

wire [4:0]  fft_zoom            ;           //FFT缩放倍数

assign sink_error = 2'b00;
assign fft_zoom  = (source_exp[5] == 1)?{(~source_exp[4:0])-5'd8}:{(~source_exp[4:0])-5'd8};




//结束位延时
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        begin 
            source_eop_reg      <=  1'b0                    ;
            source_valid_reg    <=  1'b0                    ;
            source_valid_reg2   <=  1'b0                    ;
            source_valid_reg3   <=  1'b0                    ;
        end 
    else    
         begin 
            source_eop_reg      <=  source_eop              ;
            source_valid_reg    <=  source_valid            ;
            source_valid_reg2   <=  source_valid_reg        ;
            source_valid_reg3   <=  source_valid_reg2       ;
        end 
        

       
        
        
    


//wire    [9:0] signal_test ;

    
//FFT_MAX
   reg   signed  [19:0]     mag_max         ;        //最大峰值
   reg   signed  [19:0]     mag_max2        ;        //最大峰值
   reg           [11:0]     count           ;        //最大峰值坐标
   reg           [11:0]     count2          ;
   reg   signed  [19:0]     mag_max_real    ;        //最大峰值
   reg   signed  [19:0]     mag_max_real2   ;        //最大峰值
   



//real_RAM
reg   signed[9:0]      re_data     ;             //实部数据 
reg   [11:0]           re_adder    ;
reg                    re_wren     ;
wire  signed[9:0]      re_out      ;


//image_RAM
reg   signed[9:0]      im_data     ;             //虚部数据
reg   [11:0]           im_adder    ;
reg                    im_wren     ;   
wire  signed[9:0]      im_out      ; 

reg                        rden           ;
reg            [9:0]       rd_adder       ;
reg      signed[9:0]       data_re_reg    ;
reg      signed[9:0]       data_im_reg    ;



//状态机状态表
reg     [3:0]       FFT_state       ;
parameter   FFT_wait    =   4'd0    ,
            FFT_input   =   4'd1    ,
            FFT_inend   =   4'd2    ,
            FFT_out_st  =   4'd3    ,
            FFT_out_end =   4'd4    ,
            FFT_end     =   4'd5    ;
            
            
            
//主状态机，主要读取数据获取频谱数据
always@(posedge sys_clk  or negedge sys_rst)
    if(!sys_rst)
        begin   
            source_ready    <=    1'b0          ;
            sink_valid      <=    1'b0          ;
            sink_sop        <=    1'b0          ;
            sink_eop        <=    1'b0          ;     //一包数据结束输入信号
            address         <=    10'd0         ;     //DDS信号源地址
            data_re_reg     <=    9'd0          ;
            data_im_reg     <=    9'd0          ;
            re_wren         <=    1'b0          ;     //RAM写使能
            im_wren         <=    1'b0          ;
            re_adder        <=    10'b0         ;     //RAM写地址
            im_adder        <=    1'b0          ;
            rd_adder        <=    9'd0          ;     //测试读地址
            rden            <=    1'b0          ;     //测试读使能
            re_data         <=    10'd0         ;
            im_data         <=    10'd0         ;
            FFT_state       <=    FFT_wait      ; 
        end 
    else    
        begin
            case(FFT_state)
                FFT_wait:   //等待数据采集完成标志位
                    begin
                        if(adc_flag ==  1)
                            begin
                                source_ready <= 1'b1            ;//首先是开始准备使能
                                sink_valid   <= 1'b1            ;//高电平时期读一个数据，此时高电平期间已经读了首位地址位的数据
                                sink_sop     <= 1'b1            ;
                                FFT_state    <= FFT_input       ;//跳转状态，还有一个开始数据使能
                            end 
                        else    
                            begin
                                FFT_state    <= FFT_state       ;
                            end 
                    end  
                FFT_input:
                    begin
                            sink_sop     <= 1'b0            ;
                            if(address < 10'd1022)
                                begin
                                    address      <= address +   1'b1;
                                end 
                            else   if(address == 10'd1022)   
                                begin
                                    address      <= 10'd1023          ;
                                    sink_eop     <= 1'b1            ;//拉高时就是最后一个数据了
                                    
                                end 
                            else   if(address == 12'd1023)   
                                begin
                                    address      <= 10'd0           ;
                                    sink_eop     <= 1'b0            ;
                                    sink_valid   <= 1'b0            ;
                                    FFT_state    <= FFT_inend       ;
                                end 
                            else    
                                    address      <= 10'd0           ;
                    end 
                FFT_inend:
                        begin
                                    sink_eop     <= 1'b0            ;
                                    address      <= 10'd0           ;
                            if((source_sop == 1'b1)&&(source_valid == 1'b1))//开始读取FFT数据存入到RAM中
                                begin                                         //由于缩放比例是（-11），实际幅值应该是2^(11-9)=4)倍
                                    data_re_reg  <= xkre              ;       //由于当开始输出使能为高电平时的数据已经是有效数据了，所以这个要加一个缓存
                                    data_im_reg  <= xkim              ;       //防止数据丢失
                                    re_wren      <= 1'b1              ;
                                    im_wren      <= 1'b1              ;       //RAM写使能
                                    FFT_state    <= FFT_out_st        ;       //输出写数据开始
                                end 
                        end 
                FFT_out_st:
                        begin
                            if(((source_eop == 1'b0)&&(source_valid == 1'b1))||((source_eop == 1'b1)&&(source_valid == 1'b1)))
                                begin
                                    re_data      <= data_re_reg       ;       //相较于原数据延时了两个周期，地址写入也是，不过在求ans的时候是延时两个周期之后的数据
                                    im_data      <= data_im_reg       ;       //所以写入地址就是该ans对应幅值平方的坐标
                                    data_re_reg  <= xkre              ;
                                    data_im_reg  <= xkim              ;
                                    FFT_state    <= FFT_out_end       ; 
                                end 
                        end
                FFT_out_end:
                         begin                                               //最后结尾数据应该是延时一个周期的标志位，事实上由于频谱是对称的，只需要读取一半即可
                            if(((source_eop_reg == 1'b0)&&(source_valid_reg == 1'b1))||((source_eop_reg == 1'b1)&&(source_valid_reg == 1'b1)))
                                begin
                                    re_data      <= data_re_reg       ;
                                    im_data      <= data_im_reg       ;
                                    data_re_reg  <= xkre              ;
                                    data_im_reg  <= xkim              ;
                                    re_adder     <= re_adder +1'b1    ; 
                                    im_adder     <= im_adder +1'b1    ;
                                end     
                            else    
                                begin
                                    re_data      <= data_re_reg     ;
                                    im_data      <= data_im_reg     ;
                                    re_wren      <= 1'b0            ;
                                    im_wren      <= 1'b0            ;       //关闭RAM写使能，避免重复写入
                                    re_adder     <= 10'd0           ; 
                                    im_adder     <= 10'd0           ;
                                    FFT_state    <= FFT_end         ;
                                end     
                        end  
                FFT_end:
                        begin
                           // updata_flag     <=      1'b1        ;
                            FFT_state       <=   FFT_wait       ;
                        end 
                endcase         
        end 


//输出数据处理函数
wire signed [18:0] xkre_square, xkim_square;
assign xkre_square = re_data * re_data;               //对实部平方
assign xkim_square = im_data * im_data;               //对虚部平方
assign ans   =  ((source_valid==1'b1)||(source_valid_reg3==1'b1))?xkre_square+xkim_square:'d0; //实时频谱输出


//A波
reg   signed  [9:0]     re_data_max          ;       //求相角
reg   signed  [9:0]     im_data_max          ;

reg   signed  [9:0]     re_data_max_real     ;       //求相角
reg   signed  [9:0]     im_data_max_real     ;

//B波
reg   signed  [9:0]     re_data_max2         ;       //求相角
reg   signed  [9:0]     im_data_max2         ;

reg   signed  [9:0]     re_data_max_real2    ;       //求相角
reg   signed  [9:0]     im_data_max_real2    ;





//峰值寻找,分离A、B波
//A波是频率小的波，B波是频率大的波
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        begin
            count            <=  10'd0       ;
            count2           <=  10'd0       ;
            count_realA      <=  10'd0       ;
            count_realB      <=  10'd0       ;
            mag_max          <=  19'd0       ;
            mag_max2         <=  19'd0       ;
            mag_max_real     <=  19'd0       ;
            mag_max_real2    <=  19'd0       ;
                             
            re_data_max      <=  9'd0        ;   //A波
            im_data_max      <=  9'd0        ;
            re_data_max2     <=  9'd0        ;   //B波
            im_data_max2     <=  9'd0        ;
                             
            updata_flag      <=  1'b0        ;
            re_data_max_real <=  9'd0        ;
            im_data_max_real <=  9'd0        ;
            
            re_data_max_real2<=  9'd0        ;
            im_data_max_real2<=  9'd0        ;  
        end 
    else    if((source_valid==1'b1)&&(re_adder == 12'd1))       //初始化值
        begin
            count        <=  re_adder    ;    //实时更新FFT的峰值，在读取时的re_adder就是对应的编号
            count2       <=  re_adder    ;   
            mag_max      <=  ans         ;    //本次是第一次初始化峰值，但是在0处是直流分量，不应该计入，所以是从1开始
            mag_max2     <=  ans         ;
            re_data_max  <=  re_data     ;    //记录初次的值  
            im_data_max  <=  im_data     ;                          
            re_data_max2 <=  re_data     ;   
            im_data_max2 <=  im_data     ;
            
        end     
    else    if((source_valid==1'b1)&&((re_adder > 12'd1)&&(re_adder < 10'd512)))//峰值寻找只需要半边谱即可，因为幅度谱对称
        begin
            if(mag_max < ans)                                  //上次记录的幅值小于本次读取的幅值，就是遇到下一个峰值了，更换记录
                begin 
                    count        <=  re_adder    ;
                    count2       <=  count       ;
                    mag_max      <=  ans         ; 
                    mag_max2     <=  mag_max     ;
                    re_data_max  <=  re_data     ;            //记录值更新
                    im_data_max  <=  im_data     ;
                    re_data_max2 <=  re_data_max ;
                    im_data_max2 <=  im_data_max ;    
                end
            else  if(((ans<mag_max)&&(ans>mag_max2))||(ans==mag_max))
                begin
                    count2       <= re_adder     ;
                    mag_max2     <= ans          ;
                    re_data_max2 <= re_data      ;
                    im_data_max2 <= im_data      ;
                end 
            else
                begin
                    count   <=  count       ;                 //不成立就不会改变
                    count2  <=  count2      ;
                    mag_max <=  mag_max     ;
                    mag_max2<=  mag_max2    ; 
                end 
        end
    else    if((source_valid==1'b1)&&(re_adder == 10'd512))     //最后一个地址比较
        begin                                                   //上次记录的幅值小于本次读取的幅值，就是遇到下一个峰值了，更换记录
            if((mag_max < ans)||(((ans<mag_max)&&(ans>mag_max2))||(ans==mag_max)))                                  
                begin                                         
                    count_realA  <=  count       ;              //更新实际最大幅值和坐标 
                    count_realB  <=  re_adder    ;                  
                    mag_max_real2<=  (source_exp[5] == 1)?ans*(19'b1<<(2*fft_zoom)):ans/(19'b1<<(2*fft_zoom));
                    mag_max_real <=  (source_exp[5] == 1)?mag_max*(19'b1<<(2*fft_zoom)):mag_max/(19'b1<<(2*fft_zoom));                    
                    re_data_max_real  <=   re_data_max ;
                    im_data_max_real  <=   im_data_max ;
                    re_data_max_real2 <=   re_data     ;
                    im_data_max_real2 <=   im_data     ;
                end 
            /* else if(((ans<mag_max)&&(ans>mag_max2))||(ans==mag_max))
                begin
                    count_realA  <=  count       ;
                    count_realB  <=  re_adder    ;
                    mag_max_real <=  (source_exp[5] == 1)?mag_max*(19'b1<<(2*fft_zoom)):mag_max/(19'b1<<(2*fft_zoom));
                    mag_max_real2<=  (source_exp[5] == 1)?ans*(19'b1<<(2*fft_zoom)):ans/(19'b1<<(2*fft_zoom));
                    re_data_max_real  <=  re_data_max     ;
                    im_data_max_real  <=  im_data_max     ;
                    re_data_max_real2 <=  re_data     ; 
                    im_data_max_real2 <=  im_data     ;
                end  */
            else
                begin
                    count_realA  <=  (count2>count)?count:count2; 
                    count_realB  <=  (count2<count)?count:count2;
                    mag_max_real <=  (count2>count)?mag_max:mag_max2;
                                                    //((source_exp[5] == 1)?mag_max:mag_max2//*(19'b1<<(2*fft_zoom)):mag_max/(19'b1<<(2*fft_zoom)))
                                                   //:((source_exp[5] == 1)?mag_max2:mag_max//*(19'b1<<(2*fft_zoom)):mag_max2/(19'b1<<(2*fft_zoom)));          //A波平方和                                                          
                    mag_max_real2<=  (count2<count)?mag_max:mag_max2;
                                                   //:((source_exp[5] == 1)?mag_max:mag_max2//*(19'b1<<(2*fft_zoom)):mag_max/(19'b1<<(2*fft_zoom)))
                                                   //:((source_exp[5] == 1)?mag_max2:mag_max//*(19'b1<<(2*fft_zoom)):mag_max2/(19'b1<<(2*fft_zoom)));          //B波平方和
                    re_data_max_real  <=  (count2>count)?re_data_max:re_data_max2    ;
                    im_data_max_real  <=  (count2>count)?im_data_max:im_data_max2    ;
                    re_data_max_real2 <=  (count2<count)?re_data_max:re_data_max2    ;
                    im_data_max_real2 <=  (count2<count)?im_data_max:im_data_max2    ;
                end 

            updata_flag          <=  1'b1        ;              //更新标志位
        end 
    else
        begin
            updata_flag          <=  1'b0        ;
            count                <=  10'd0       ;
            count2               <=  10'd0       ;
            mag_max              <=  19'd0       ;
            mag_max2             <=  19'd0       ;
            re_data_max          <=  9'd0        ;
            im_data_max          <=  9'd0        ;
            re_data_max2         <=  9'd0        ;
            im_data_max2         <=  9'd0        ;
        end  




//幅值开根
sqrt	sqrtA_inst 
(
	.clk        (sys_clk        ),
	.radical    (mag_max_real   ),
	.q          (mag_max_sqrtA  ),       //幅值
	.remainder  (               )        //余数
);

sqrt	sqrtB_inst 
(
	.clk        (sys_clk        ),
	.radical    (mag_max_real2  ),
	.q          (mag_max_sqrtB  ),       //幅值
	.remainder  (               )        //余数
);

//相角求解
 
//cordic计算atan2
wire  signed 	[12:0]  q   ;  
cordic cordicA_inst 
(
	.areset (1'd0        )     ,
	.clk    (sys_clk     )     ,   
	.en     (updata_flag )     ,
	.q      (q           )     ,        //角度结果
	.x      (re_data_max_real ),
	.y      (im_data_max_real )
);

wire  signed 	[12:0]  q2  ;  
cordic cordicB_inst 
(
	.areset (1'd0        )     ,
	.clk    (sys_clk     )     ,   
	.en     (updata_flag )     ,
	.q      (q2          )     ,        //角度结果
	.x      (re_data_max_real2),
	.y      (im_data_max_real2)
);

//角度转换  定点数，后十位是小数位，第一位是符号位，乘的K是180/PI  
parameter signed    toAngle = 57;    


//有符号数的扩展
//A相角
wire signed [18:0]  q_extA;     
assign q_extA = {{6{q[12]}}, q}; 

assign q_mul_outA = q_extA * toAngle;  


//B相角
wire signed [18:0]  q_extB;     
assign q_extB = {{6{q[12]}}, q2}; 

assign q_mul_outB = q_extB * toAngle; 





//FFT数据暂存
RAM	real_FFT 
(
	.data       (re_data    ),
	.rdaddress  (rd_adder   ),
	.rdclock    (sys_clk    ),
	.rden       (rden       ),
	.wraddress  (re_adder   ),
	.wrclock    (sys_clk    ),
	.wren       (re_wren    ),
	.q          (re_out     )
);

//FFT数据暂存
RAM	image_FFT 
(
	.data       (im_data    ),
	.rdaddress  (rd_adder   ),
	.rdclock    (sys_clk    ),
	.rden       (rden       ),
	.wraddress  (im_adder   ),
	.wrclock    (sys_clk    ),
	.wren       (im_wren    ),
	.q          (im_out     )
);



fftsign FFT_C 
(
	.clk          (sys_clk      ),
	.reset_n      (sys_rst      ),
	.sink_valid   (sink_valid   ),
	.sink_ready   (sink_ready   ),
	.sink_error   (sink_error   ),
	.sink_sop     (sink_sop     ),
	.sink_eop     (sink_eop     ),
	.sink_real    (mix_signal   ),      //实际使用要更改
	.sink_imag    (sink_imag    ),
	.inverse      (inverse      ),
	.source_valid (source_valid ),
	.source_ready (source_ready ),
	.source_error (source_error ),
	.source_sop   (source_sop   ),
	.source_eop   (source_eop   ),
	.source_real  (xkre         ),
	.source_imag  (xkim         ),
	.source_exp   (source_exp   )
);

endmodule 

