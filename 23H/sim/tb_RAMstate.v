`timescale 1ns/1ns 
module tb_RAMstate();

reg     clk_1       ; //1.024M   
reg     clk_50      ;
reg     rst         ;
initial  
    begin
        clk_1  <=  1'b1    ;
        clk_50  <=  1'b1    ;
        rst     <=  1'b0    ;
        
        #20     
        rst     <=  1'b1    ;
        
    
    end 

always#195  clk_1   <=  ~clk_1  ;
always#10  clk_50   <=  ~clk_50  ;


 RAMstate   RAMstate_inst
(
    .sys_clk     (clk_1 ) ,
    .sys_clk2    (clk_50) ,
    .sys_rst     (rst   ) 
    //.ADC_signal  ()        //ADC传入的无符号数据
    


);













endmodule 



