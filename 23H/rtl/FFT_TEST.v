//FFTdemo
//每4096个数据变换一次，输出结果有幅值平方根，相角，和最大幅值点与频率

module FFT_TEST
(
    input       wire        sys_clk     ,
    input       wire        sys_rst     ,   
    input       wire        data_flag   ,
    
    output      reg         updata_flag ,              //幅值和坐标更新标志位
    output      reg    [9:0]count_real  ,              //最大峰值坐标
    output      wire   [9:0]    mag_max_sqrt,          //基波幅值
    output      wire  signed  [18:0]  q_mul_out,         //基波相角
    output      wire  signed  [19:0]       ans2,         //RAM读取的频谱
    output      wire  signed  [19:0]       ans           //频谱平方，实际还需要开根    
    
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
    reg  source_eop_reg             ;           //输出延时，一周期
    wire [5:0]source_exp            ;           //输出的缩放系数，例如如果是-11，原数据就为原来的2^(-11)倍，实际数据应该是输出数据的  点数/2^(11)倍
    wire source_valid               ;
    reg  source_valid_reg           ;           //输出有效标志位的延时，一周期
    wire signed [9:0] xkre         ;           // 输出，输出数据的实部，二进制补码数据
    wire signed [9:0] xkim         ;           // 输出，输出数据的虚部

    assign sink_error = 2'b00;
   // assign source_ready = 1'b1;   // 该信号置1表示永远准备好接收FFT数据
    assign inverse = 1'b0;        // 进行FFT正变换
    assign sink_imag = 9'd0;     // 输入数据虚部无数据，仅限于FFT正变换
    
//FFT_MAX
   reg   signed  [19:0]     mag_max         ;        //最大峰值
   reg           [11:0]     count           ;        //最大峰值坐标
   reg   signed  [19:0]     mag_max_real    ;        //最大峰值
   
//FFT缩放还原
   wire  signed  [14:0]     source_data_s   ;                                         //正系数还没有考虑好
   assign source_data_s = (source_exp[5])?(((12'b1000_0000_0000)>>(~(source_exp[4:0])))):((15'b001_0000_0000_0000)<<(source_exp[4:0]));
   
   
   

//ROM
   reg      [11:0]        address     ;
   wire     signed[9:0]   data_in     ;
 


//测试读数据
   reg   [11:0]           rd_adder    ;             //读地址
   reg                    rden        ;             //读使能
//reRAM
   reg   signed[9:0]      re_data     ;             //实部数据 
   reg   [11:0]           re_adder    ;
   reg                    re_wren     ;
   wire  signed[9:0]      re_out      ;
//imRAM
   reg   signed[9:0]      im_data     ;             //虚部数据
   reg   [11:0]           im_adder    ;
   reg                    im_wren     ;   
   wire  signed[9:0]      im_out      ; 
   
 
   
   



//状态表
reg      [4:0]        FFT_state       ;
parameter    DATA_IN_START   =  5'b000;      
parameter    DATA_IN_Vaild   =  5'b001;      //输入数据start
parameter    DATA_IN_END     =  5'b010;      //输入数据END
parameter    DATA_OUT_GUODU  =  5'b011;      //输出数据写状态的过渡态
parameter    DATA_OUT_START  =  5'b100;      //输出数据写RAM
parameter    RAM_OUT_TEST    =  5'b101;      //写入数据输出测试
parameter    RAM_OUT_TEST2   =  5'b110;      //写入数据输出测试



reg      signed[9:0]       data_re_reg    ;
reg      signed[9:0]       data_im_reg    ;



//结束位延时
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        begin 
            source_eop_reg      <=  1'b0                    ;
            source_valid_reg    <=  1'b0                    ;
        end 
    else    
         begin 
            source_eop_reg      <=  source_eop              ;
            source_valid_reg    <=  source_valid            ;
        end 
    




//状态机
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        begin 
            FFT_state   <=    DATA_IN_START ;     //状态 
            source_ready<=    1'b0          ;
            sink_valid  <=    1'b0          ;     //输入数据有效准备信号
            sink_sop    <=    1'b0          ;     //一包数据开始输入信号
            sink_eop    <=    1'b0          ;     //一包数据结束输入信号
            address     <=    9'd0          ;     //DDS信号源地址
            data_re_reg <=    9'd0          ;
            data_im_reg <=    9'd0          ;
            re_wren     <=    1'b0          ;     //RAM写使能
            im_wren     <=    1'b0          ;
            re_adder    <=    1'b0          ;     //RAM写地址
            im_adder    <=    1'b0          ;
            rd_adder    <=    9'd0          ;     //测试读地址
            rden        <=    1'b0          ;     //测试读使能
        end   
    else 
        begin
           case(FFT_state)
                
                    DATA_IN_START:  
                        begin
                            if(data_flag == 1'b1)
                                begin
                                    source_ready <= 1'b1            ;//首先是开始准备使能
                                    sink_valid   <= 1'b1            ;//高电平时期读一个数据，此时高电平期间已经读了首位地址位的数据
                                    sink_sop     <= 1'b1            ;
                                    FFT_state    <= DATA_IN_Vaild   ;//跳转状态，还有一个开始数据使能
                                end     
                            else
                                    FFT_state    <= DATA_IN_START   ;//保持当前状态
                        end 
                    DATA_IN_Vaild:
                        begin
                                    sink_sop     <= 1'b0            ;
                            if(address < 12'd4094)
                                begin
                                    address      <= address +   1'b1;
                                end 
                            else   if(address == 12'd4094)   
                                begin
                                    address      <= 12'd4095        ;
                                    sink_eop     <= 1'b1            ;
                                    
                                end 
                            else   if(address == 12'd4095)   
                                begin
                                    address      <= 12'd0           ;
                                    sink_eop     <= 1'b0            ;
                                    sink_valid   <= 1'b0            ;
                                    FFT_state    <= DATA_IN_END     ;
                                end 
                            else    
                                    address      <= 12'd0           ;
                        end 
                    DATA_IN_END:
                        begin
                                    sink_eop     <= 1'b0            ;
                                    address      <= 12'd0           ;
                            if((source_sop == 1'b1)&&(source_valid == 1'b1))//开始读取FFT数据存入到RAM中
                                begin
                                    data_re_reg  <= xkre/source_data_s;       //由于当开始输出使能为高电平时的数据已经是有效数据了，所以这个要加一个缓存
                                    data_im_reg  <= xkim/source_data_s;       //防止数据丢失
                                    re_wren      <= 1'b1              ;
                                    im_wren      <= 1'b1              ;       //RAM写使能
                                    FFT_state    <= DATA_OUT_GUODU    ;       //输出写数据开始
                                end 

                            
                        end 
                    DATA_OUT_GUODU:                                         //写数据的地址过渡态，防止0地址未写入          
                        begin
                            if(((source_eop == 1'b0)&&(source_valid == 1'b1))||((source_eop == 1'b1)&&(source_valid == 1'b1)))
                                begin
                                    re_data      <= data_re_reg       ;       //相较于原数据延时了两个周期，地址写入也是，不过在求ans的时候是延时两个周期之后的数据
                                    im_data      <= data_im_reg       ;       //所以写入地址就是该ans对应幅值平方的坐标
                                    data_re_reg  <= xkre/source_data_s;
                                    data_im_reg  <= xkim/source_data_s;
                                    FFT_state    <= DATA_OUT_START    ; 
                                end 
                        end 
                    DATA_OUT_START:                                         //写入一个整周期的频谱
                        begin                                               //最后结尾数据应该是延时一个周期的标志位，事实上由于频谱是对称的，只需要读取一半即可
                            if(((source_eop_reg == 1'b0)&&(source_valid_reg == 1'b1))||((source_eop_reg == 1'b1)&&(source_valid_reg == 1'b1)))
                                begin
                                    re_data      <= data_re_reg       ;
                                    im_data      <= data_im_reg       ;
                                    data_re_reg  <= xkre/source_data_s;
                                    data_im_reg  <= xkim/source_data_s;
                                    re_adder     <= re_adder +1'b1    ; 
                                    im_adder     <= im_adder +1'b1    ;
                                end     
                            else    
                                begin
                                    re_data      <= data_re_reg     ;
                                    im_data      <= data_im_reg     ;
                                    re_wren      <= 1'b0            ;
                                    im_wren      <= 1'b0            ;       //关闭RAM写使能，避免重复写入
                                    re_adder     <= 12'd0           ; 
                                    im_adder     <= 12'd0           ;
                                    FFT_state    <= RAM_OUT_TEST    ;
                                end     
                        end 
                    //RAM输出测试
                    RAM_OUT_TEST:
                        begin
                            rden         <=      1'b1       ;
                            FFT_state    <= RAM_OUT_TEST2   ;
                        end 
                    RAM_OUT_TEST2:
                        begin
                            if(rd_adder <4095)
                                rd_adder     <= rd_adder+1'b1   ;
                            else    
                                begin
                                    rd_adder     <= 1'b0            ;
                                    rden         <= 1'b0            ;
                                    FFT_state    <= DATA_IN_START   ;
                                end 
                            
                        end    
            endcase
        end 
        
        

wire signed [18:0] xkre_square, xkim_square;
assign xkre_square = re_data * re_data;               //对实部平方
assign xkim_square = im_data * im_data;               //对虚部平方
assign ans   =  ((source_valid==1'b1))?xkre_square+xkim_square:'d0; //实时频谱输出




reg   signed  [9:0]     re_data_max          ;       //求相角
reg   signed  [9:0]     im_data_max          ;

reg   signed  [9:0]     re_data_max_real     ;       //求相角
reg   signed  [9:0]     im_data_max_real     ;



//峰值寻找
always@(posedge sys_clk or negedge sys_rst)
    if(!sys_rst)
        begin
            count           <=  12'd0       ;
            count_real      <=  12'd0       ;
            mag_max         <=  19'd0       ;
            mag_max_real    <=  19'd0       ;
            re_data_max     <=  9'd0        ;
            im_data_max     <=  9'd0        ;
            updata_flag     <=  1'b0        ;
            re_data_max_real<=  9'd0        ;
            im_data_max_real<=  9'd0        ;
            
        end 
    else    if((source_valid==1'b1)&&(re_adder == 12'd1))
        begin
            count        <=  re_adder    ;                           //实时更新FFT的峰值，在读取时的re_adder就是对应的编号
            mag_max      <=  ans         ;                           //本次是第一次初始化峰值，但是在0处是直流分量，不应该计入，所以是从1开始
            re_data_max  <=  re_data     ;
            im_data_max  <=  im_data     ;
        end     
    else    if((source_valid==1'b1)&&((re_adder > 12'd1)&&(re_adder < 12'd2048)))//峰值寻找只需要半边谱即可，因为幅度谱对称
        begin
            if(mag_max < ans )                                  //上次记录的幅值小于本次读取的幅值，就是遇到下一个峰值了，更换记录
                begin                                         
                    count        <=  re_adder    ;                
                    mag_max      <=  ans         ; 
                    re_data_max  <=  re_data     ;
                    im_data_max  <=  im_data     ;
                end 
            else
                begin
                    count   <=  count       ;                   //不成立就不会改变
                    mag_max <=  mag_max     ;
                end 
        end
    else    if((source_valid==1'b1)&&(re_adder == 12'd2048))    //最后一个地址比较
        begin
            if(mag_max < ans )                                  //上次记录的幅值小于本次读取的幅值，就是遇到下一个峰值了，更换记录
                begin                                         
                    count_real   <=  re_adder    ;              //更新实际最大幅值和坐标  
                    mag_max_real <=  ans         ; 
                    re_data_max_real  <=  re_data     ;
                    im_data_max_real  <=  im_data     ;
                end 
            else
                begin
                    count_real   <=  count       ;                   
                    mag_max_real <=  mag_max     ;
                    re_data_max_real  <=  re_data_max     ;
                    im_data_max_real  <=  im_data_max     ;
                end 
            updata_flag          <=  1'b1        ;              //更新标志位
        end 
    else
        begin
            updata_flag          <=  1'b0        ;
            count                <=  12'd0       ;
            mag_max              <=  19'd0       ;
            re_data_max          <=  9'd0        ;
            im_data_max          <=  9'd0        ;
        end 









//这个输出有一个周期的延时，所以实际坐标是当前地址位-1
wire signed [19:0] xkre_square2, xkim_square2;
assign xkre_square2 = re_out * re_out;               //对实部平方
assign xkim_square2 = im_out * im_out;               //对虚部平方
assign ans2   =  ((rden==1'b1))?xkre_square2+xkim_square2:'d0;

//有符号数转无符号数
wire    [19:0]  ans_us;
assign ans_us   =   (ans2[19]==1'b1)?{1'b0,(~ans2[18:0]-1'b1)}:{1'b0,(ans2[18:0])};


wire  	[9:0] q2;
//平方根计算，输出的是幅值/2
sqrt	sqrt_inst 
(
	.clk       ( sys_clk    ),
	.ena       ( rden       ),
	.radical   ( ans_us     ),
	.q         ( q2         ),
	.remainder (            )       //余数信息
);
//最大幅值计算





wire      [9:0]   mag_max_sqrt_reg   ;
sqrt	sqrt_inst2 
(
	.clk       (sys_clk         ),
	.ena       (updata_flag     ),
	.radical   (mag_max_real    ),
	.q         (mag_max_sqrt_reg    ),
	.remainder (            )
);
assign mag_max_sqrt  = 2*mag_max_sqrt_reg;




wire  signed 	[12:0]  q   ;  
//cordic计算atan2
cordic cordic_inst 
(
	.areset (1'd0        )     ,
	.clk    (sys_clk     )     ,   
	.en     (updata_flag )     ,
	.q      (q           )     ,        //角度结果
	.x      (re_data_max_real ),
	.y      (im_data_max_real )
);


//角度转换  定点数，后十位是小数位，第一位是符号位，乘的K是180/PI  
parameter signed    toAngle = 57;    


//有符号数的扩展
wire signed [18:0]  q_ext;     
assign q_ext = {{6{q[12]}}, q}; 

assign q_mul_out = q * toAngle;      





//FFT例化

unnamed u0 
(
    .clk          (sys_clk      ),              
    .reset_n      (sys_rst      ),            
    .sink_valid   (sink_valid   ),       
    .sink_ready   (sink_ready   ),      
    .sink_error   (sink_error   ),      
    .sink_sop     (sink_sop     ),         
    .sink_eop     (sink_eop     ),         
    .sink_real    (data_in      ),          
    .sink_imag    (sink_imag    ),    

    .inverse      (inverse      ),      
    .source_valid (source_valid ), 
    .source_ready (source_ready ), 
    .source_error (source_error ), 
    .source_sop   (source_sop   ),   
    .source_eop   (source_eop   ),  
    .source_exp   (source_exp   ),
    .source_real  (xkre         ),  
    .source_imag  (xkim)   
);

//波形发生器
   rom	rom_inst 
(
	.address      ( address     ),
	.clock        ( sys_clk     ),
	.rden         ( source_ready),
	.q            ( data_in     )
);


//实部数据存储器
RANre	RANre_inst 
(
	.clock      ( sys_clk       ),
	.data       ( re_data       ),
	.rdaddress  ( rd_adder      ),
	.rden       ( rden          ),
	.wraddress  ( re_adder      ),
	.wren       ( re_wren       ),
	.q          ( re_out        )
);

//虚部数据存储器
RANre	RANim_inst 
(
	.clock      ( sys_clk       ),
	.data       ( im_data       ),
	.rdaddress  ( rd_adder      ),
	.rden       ( rden          ),
	.wraddress  ( im_adder      ),
	.wren       ( im_wren       ),
	.q          ( im_out        )
);

endmodule 
