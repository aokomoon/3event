`timescale 1ns/1ns 
module tb_FFT_CT();
reg     sys_clk     ;
reg     sys_rst     ;
reg     flag        ;



initial  
    begin
        sys_clk <=1'b1;
        sys_rst <=1'b0;
        #20
        sys_rst <=1'b1;
        flag <=1'b0;
        #200
        flag    <=1'b1;
        
        

    end 

always #10 sys_clk <=~sys_clk;





FFT_CT FFT_CT_inst
(
    .sys_clk     (sys_clk) ,       //系统时钟50M
    .sys_rst     (sys_rst) ,
    .mix_signal  () ,       //ADC采集的数据
    .adc_flag    (flag) ,       //数据推送标志位
    
    .updata_flag () ,       //数据更新标志位 
    .address     ()         //ADC数据的地址位
    

);






endmodule  

