`timescale 1ns/1ns 
module  tb_signal();
reg     sys_clk     ;
reg     sys_rst     ;


initial  
    begin
        sys_clk <=1'b1;
        sys_rst <=1'b0;
        #20
        sys_rst <=1'b1;


    end 

always #10 sys_clk <=~sys_clk;



 signal signal_inst
(
    .sys_clk    (sys_clk)   ,        //系统时钟50M
    .sys_rst    (sys_rst)   ,
    .mix_signal ()   ,        //ADC采集的数据,目前是无符号数据采样率1.024Mhz
                
    .fft_flag   ()            //数据采集完成之后转为FFT
    
);










endmodule 








