// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Standard Edition"

// DATE "01/20/2026 15:46:45"

// 
// Device: Altera EP4CE15F17C6 Package FBGA256
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module cordic (
	areset,
	clk,
	en,
	q,
	x,
	y)/* synthesis synthesis_greybox=0 */;
input 	areset;
input 	clk;
input 	[0:0] en;
output 	[12:0] q;
input 	[9:0] x;
input 	[9:0] y;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \cordic_0|q[0]~0_combout ;
wire \cordic_0|q[1]~2_combout ;
wire \cordic_0|q[2]~4_combout ;
wire \cordic_0|q[3]~6_combout ;
wire \cordic_0|q[4]~8_combout ;
wire \cordic_0|q[5]~10_combout ;
wire \cordic_0|q[6]~12_combout ;
wire \cordic_0|q[7]~14_combout ;
wire \cordic_0|q[8]~16_combout ;
wire \cordic_0|q[9]~18_combout ;
wire \cordic_0|q[10]~20_combout ;
wire \cordic_0|q[11]~22_combout ;
wire \cordic_0|q[12]~24_combout ;
wire \x[9]~input_o ;
wire \clk~input_o ;
wire \areset~input_o ;
wire \en[0]~input_o ;
wire \y[9]~input_o ;
wire \y[8]~input_o ;
wire \y[7]~input_o ;
wire \y[6]~input_o ;
wire \y[5]~input_o ;
wire \y[4]~input_o ;
wire \y[3]~input_o ;
wire \y[2]~input_o ;
wire \y[1]~input_o ;
wire \y[0]~input_o ;
wire \x[8]~input_o ;
wire \x[7]~input_o ;
wire \x[6]~input_o ;
wire \x[5]~input_o ;
wire \x[4]~input_o ;
wire \x[3]~input_o ;
wire \x[2]~input_o ;
wire \x[1]~input_o ;
wire \x[0]~input_o ;


cordic_cordic_CORDIC_0 cordic_0(
	.q_0(\cordic_0|q[0]~0_combout ),
	.q_1(\cordic_0|q[1]~2_combout ),
	.q_2(\cordic_0|q[2]~4_combout ),
	.q_3(\cordic_0|q[3]~6_combout ),
	.q_4(\cordic_0|q[4]~8_combout ),
	.q_5(\cordic_0|q[5]~10_combout ),
	.q_6(\cordic_0|q[6]~12_combout ),
	.q_7(\cordic_0|q[7]~14_combout ),
	.q_8(\cordic_0|q[8]~16_combout ),
	.q_9(\cordic_0|q[9]~18_combout ),
	.q_10(\cordic_0|q[10]~20_combout ),
	.q_11(\cordic_0|q[11]~22_combout ),
	.q_12(\cordic_0|q[12]~24_combout ),
	.x({\x[9]~input_o ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.clk(\clk~input_o ),
	.areset(\areset~input_o ),
	.en({\en[0]~input_o }),
	.y({\y[9]~input_o ,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd}),
	.y_8(\y[8]~input_o ),
	.y_7(\y[7]~input_o ),
	.y_6(\y[6]~input_o ),
	.y_5(\y[5]~input_o ),
	.y_4(\y[4]~input_o ),
	.y_3(\y[3]~input_o ),
	.y_2(\y[2]~input_o ),
	.y_1(\y[1]~input_o ),
	.y_0(\y[0]~input_o ),
	.x_8(\x[8]~input_o ),
	.x_7(\x[7]~input_o ),
	.x_6(\x[6]~input_o ),
	.x_5(\x[5]~input_o ),
	.x_4(\x[4]~input_o ),
	.x_3(\x[3]~input_o ),
	.x_2(\x[2]~input_o ),
	.x_1(\x[1]~input_o ),
	.x_0(\x[0]~input_o ));

assign \x[9]~input_o  = x[9];

assign \clk~input_o  = clk;

assign \areset~input_o  = areset;

assign \en[0]~input_o  = en[0];

assign \y[9]~input_o  = y[9];

assign \y[8]~input_o  = y[8];

assign \y[7]~input_o  = y[7];

assign \y[6]~input_o  = y[6];

assign \y[5]~input_o  = y[5];

assign \y[4]~input_o  = y[4];

assign \y[3]~input_o  = y[3];

assign \y[2]~input_o  = y[2];

assign \y[1]~input_o  = y[1];

assign \y[0]~input_o  = y[0];

assign \x[8]~input_o  = x[8];

assign \x[7]~input_o  = x[7];

assign \x[6]~input_o  = x[6];

assign \x[5]~input_o  = x[5];

assign \x[4]~input_o  = x[4];

assign \x[3]~input_o  = x[3];

assign \x[2]~input_o  = x[2];

assign \x[1]~input_o  = x[1];

assign \x[0]~input_o  = x[0];

assign q[0] = \cordic_0|q[0]~0_combout ;

assign q[1] = \cordic_0|q[1]~2_combout ;

assign q[2] = \cordic_0|q[2]~4_combout ;

assign q[3] = \cordic_0|q[3]~6_combout ;

assign q[4] = \cordic_0|q[4]~8_combout ;

assign q[5] = \cordic_0|q[5]~10_combout ;

assign q[6] = \cordic_0|q[6]~12_combout ;

assign q[7] = \cordic_0|q[7]~14_combout ;

assign q[8] = \cordic_0|q[8]~16_combout ;

assign q[9] = \cordic_0|q[9]~18_combout ;

assign q[10] = \cordic_0|q[10]~20_combout ;

assign q[11] = \cordic_0|q[11]~22_combout ;

assign q[12] = \cordic_0|q[12]~24_combout ;

endmodule

module cordic_cordic_CORDIC_0 (
	q_0,
	q_1,
	q_2,
	q_3,
	q_4,
	q_5,
	q_6,
	q_7,
	q_8,
	q_9,
	q_10,
	q_11,
	q_12,
	x,
	clk,
	areset,
	en,
	y,
	y_8,
	y_7,
	y_6,
	y_5,
	y_4,
	y_3,
	y_2,
	y_1,
	y_0,
	x_8,
	x_7,
	x_6,
	x_5,
	x_4,
	x_3,
	x_2,
	x_1,
	x_0)/* synthesis synthesis_greybox=0 */;
output 	q_0;
output 	q_1;
output 	q_2;
output 	q_3;
output 	q_4;
output 	q_5;
output 	q_6;
output 	q_7;
output 	q_8;
output 	q_9;
output 	q_10;
output 	q_11;
output 	q_12;
input 	[9:0] x;
input 	clk;
input 	areset;
input 	[0:0] en;
input 	[9:0] y;
input 	y_8;
input 	y_7;
input 	y_6;
input 	y_5;
input 	y_4;
input 	y_3;
input 	y_2;
input 	y_1;
input 	y_0;
input 	x_8;
input 	x_7;
input 	x_6;
input 	x_5;
input 	x_4;
input 	x_3;
input 	x_2;
input 	x_1;
input 	x_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][23]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][15]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][22]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][14]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][21]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][13]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][20]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][12]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][19]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][11]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][18]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][10]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][17]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][9]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][16]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][8]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][15]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][7]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][14]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][6]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][13]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][5]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][12]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][4]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][11]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][3]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][10]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][2]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][9]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][1]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][8]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][17]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][24]~q ;
wire \redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][16]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][7]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][6]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][5]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][4]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][3]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][2]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][1]~q ;
wire \redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][0]~q ;
wire \Add3~1_cout ;
wire \Add3~3 ;
wire \Add3~2_combout ;
wire \Add3~5 ;
wire \Add3~4_combout ;
wire \Add3~7 ;
wire \Add3~6_combout ;
wire \Add3~9 ;
wire \Add3~8_combout ;
wire \Add3~11 ;
wire \Add3~10_combout ;
wire \Add3~13 ;
wire \Add3~12_combout ;
wire \Add3~15 ;
wire \Add3~14_combout ;
wire \Add3~17 ;
wire \Add3~16_combout ;
wire \Add3~18_combout ;
wire \Add1~1_cout ;
wire \Add1~3 ;
wire \Add1~2_combout ;
wire \Add1~5 ;
wire \Add1~4_combout ;
wire \Add1~7 ;
wire \Add1~6_combout ;
wire \Add1~9 ;
wire \Add1~8_combout ;
wire \Add1~11 ;
wire \Add1~10_combout ;
wire \Add1~13 ;
wire \Add1~12_combout ;
wire \Add1~15 ;
wire \Add1~14_combout ;
wire \Add1~17 ;
wire \Add1~16_combout ;
wire \Add1~18_combout ;
wire \Add5~1 ;
wire \Add5~0_combout ;
wire \Add5~3 ;
wire \Add5~2_combout ;
wire \Add5~5 ;
wire \Add5~4_combout ;
wire \Add5~7 ;
wire \Add5~6_combout ;
wire \Add5~9 ;
wire \Add5~8_combout ;
wire \Add5~11 ;
wire \Add5~10_combout ;
wire \Add5~13 ;
wire \Add5~12_combout ;
wire \Add5~15 ;
wire \Add5~14_combout ;
wire \Add5~17 ;
wire \Add5~16_combout ;
wire \Add5~19 ;
wire \Add5~18_combout ;
wire \Add5~20_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[0]~1 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[1]~3 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[1]~2_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[2]~5 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[2]~4_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[3]~7 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[3]~6_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[4]~9 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[4]~8_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[5]~11 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[5]~10_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[6]~13 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[6]~12_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[7]~15 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[7]~14_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[8]~17 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[8]~16_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[9]~19 ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[9]~18_combout ;
wire \Add6~1 ;
wire \Add6~0_combout ;
wire \Add6~3 ;
wire \Add6~2_combout ;
wire \Add6~5 ;
wire \Add6~4_combout ;
wire \Add6~7 ;
wire \Add6~6_combout ;
wire \Add6~9 ;
wire \Add6~8_combout ;
wire \Add6~11 ;
wire \Add6~10_combout ;
wire \Add6~13 ;
wire \Add6~12_combout ;
wire \Add6~15 ;
wire \Add6~14_combout ;
wire \Add6~17 ;
wire \Add6~16_combout ;
wire \Add6~19 ;
wire \Add6~18_combout ;
wire \Add7~1_cout ;
wire \Add7~3 ;
wire \Add7~2_combout ;
wire \Add7~5 ;
wire \Add7~4_combout ;
wire \Add7~7 ;
wire \Add7~6_combout ;
wire \Add7~9 ;
wire \Add7~8_combout ;
wire \Add7~11 ;
wire \Add7~10_combout ;
wire \Add7~13 ;
wire \Add7~12_combout ;
wire \Add7~15 ;
wire \Add7~14_combout ;
wire \Add7~17 ;
wire \Add7~16_combout ;
wire \Add7~19 ;
wire \Add7~18_combout ;
wire \Add7~21 ;
wire \Add7~20_combout ;
wire \xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ;
wire \Add9~1_cout ;
wire \Add9~3 ;
wire \Add9~2_combout ;
wire \Add9~5 ;
wire \Add9~4_combout ;
wire \Add9~7 ;
wire \Add9~6_combout ;
wire \Add9~9 ;
wire \Add9~8_combout ;
wire \Add9~11 ;
wire \Add9~10_combout ;
wire \Add9~13 ;
wire \Add9~12_combout ;
wire \Add9~15 ;
wire \Add9~14_combout ;
wire \Add9~17 ;
wire \Add9~16_combout ;
wire \Add9~19 ;
wire \Add9~18_combout ;
wire \Add9~21 ;
wire \Add9~20_combout ;
wire \Add9~22_combout ;
wire \Add8~1 ;
wire \Add8~0_combout ;
wire \Add8~3 ;
wire \Add8~2_combout ;
wire \Add8~5 ;
wire \Add8~4_combout ;
wire \Add8~7 ;
wire \Add8~6_combout ;
wire \Add8~9 ;
wire \Add8~8_combout ;
wire \Add8~11 ;
wire \Add8~10_combout ;
wire \Add8~13 ;
wire \Add8~12_combout ;
wire \Add8~15 ;
wire \Add8~14_combout ;
wire \Add8~17 ;
wire \Add8~16_combout ;
wire \Add8~19 ;
wire \Add8~18_combout ;
wire \Add8~20_combout ;
wire \Add10~1 ;
wire \Add10~0_combout ;
wire \Add10~3 ;
wire \Add10~2_combout ;
wire \Add10~5 ;
wire \Add10~4_combout ;
wire \Add10~7 ;
wire \Add10~6_combout ;
wire \Add10~9 ;
wire \Add10~8_combout ;
wire \Add10~11 ;
wire \Add10~10_combout ;
wire \Add10~13 ;
wire \Add10~12_combout ;
wire \Add10~15 ;
wire \Add10~14_combout ;
wire \Add10~17 ;
wire \Add10~16_combout ;
wire \Add10~19 ;
wire \Add10~18_combout ;
wire \Add10~20_combout ;
wire \Add11~1_cout ;
wire \Add11~3 ;
wire \Add11~2_combout ;
wire \Add11~5 ;
wire \Add11~4_combout ;
wire \Add11~7 ;
wire \Add11~6_combout ;
wire \Add11~9 ;
wire \Add11~8_combout ;
wire \Add11~11 ;
wire \Add11~10_combout ;
wire \Add11~13 ;
wire \Add11~12_combout ;
wire \Add11~15 ;
wire \Add11~14_combout ;
wire \Add11~17 ;
wire \Add11~16_combout ;
wire \Add11~19 ;
wire \Add11~18_combout ;
wire \Add11~21 ;
wire \Add11~20_combout ;
wire \Add11~23 ;
wire \Add11~22_combout ;
wire \Add11~24_combout ;
wire \Add6~20_combout ;
wire \Add7~32_combout ;
wire \Add13~1_cout ;
wire \Add13~3 ;
wire \Add13~2_combout ;
wire \Add13~5 ;
wire \Add13~4_combout ;
wire \Add13~7 ;
wire \Add13~6_combout ;
wire \Add13~9 ;
wire \Add13~8_combout ;
wire \Add13~11 ;
wire \Add13~10_combout ;
wire \Add13~13 ;
wire \Add13~12_combout ;
wire \Add13~15 ;
wire \Add13~14_combout ;
wire \Add13~17 ;
wire \Add13~16_combout ;
wire \Add13~19 ;
wire \Add13~18_combout ;
wire \Add13~21 ;
wire \Add13~20_combout ;
wire \Add13~23 ;
wire \Add13~22_combout ;
wire \Add13~25 ;
wire \Add13~24_combout ;
wire \Add13~26_combout ;
wire \Add12~1 ;
wire \Add12~0_combout ;
wire \Add12~3 ;
wire \Add12~2_combout ;
wire \Add12~5 ;
wire \Add12~4_combout ;
wire \Add12~7 ;
wire \Add12~6_combout ;
wire \Add12~9 ;
wire \Add12~8_combout ;
wire \Add12~11 ;
wire \Add12~10_combout ;
wire \Add12~13 ;
wire \Add12~12_combout ;
wire \Add12~15 ;
wire \Add12~14_combout ;
wire \Add12~17 ;
wire \Add12~16_combout ;
wire \Add12~19 ;
wire \Add12~18_combout ;
wire \Add12~21 ;
wire \Add12~20_combout ;
wire \Add12~22_combout ;
wire \Add14~1 ;
wire \Add14~0_combout ;
wire \Add14~3 ;
wire \Add14~2_combout ;
wire \Add14~5 ;
wire \Add14~4_combout ;
wire \Add14~7 ;
wire \Add14~6_combout ;
wire \Add14~9 ;
wire \Add14~8_combout ;
wire \Add14~11 ;
wire \Add14~10_combout ;
wire \Add14~13 ;
wire \Add14~12_combout ;
wire \Add14~15 ;
wire \Add14~14_combout ;
wire \Add14~17 ;
wire \Add14~16_combout ;
wire \Add14~19 ;
wire \Add14~18_combout ;
wire \Add14~21 ;
wire \Add14~20_combout ;
wire \Add14~22_combout ;
wire \Add15~1_cout ;
wire \Add15~3 ;
wire \Add15~2_combout ;
wire \Add15~5 ;
wire \Add15~4_combout ;
wire \Add15~7 ;
wire \Add15~6_combout ;
wire \Add15~9 ;
wire \Add15~8_combout ;
wire \Add15~11 ;
wire \Add15~10_combout ;
wire \Add15~13 ;
wire \Add15~12_combout ;
wire \Add15~15 ;
wire \Add15~14_combout ;
wire \Add15~17 ;
wire \Add15~16_combout ;
wire \Add15~19 ;
wire \Add15~18_combout ;
wire \Add15~21 ;
wire \Add15~20_combout ;
wire \Add15~23 ;
wire \Add15~22_combout ;
wire \Add15~25 ;
wire \Add15~24_combout ;
wire \Add15~27 ;
wire \Add15~26_combout ;
wire \Add15~28_combout ;
wire \Add17~1_cout ;
wire \Add17~3 ;
wire \Add17~2_combout ;
wire \Add17~5 ;
wire \Add17~4_combout ;
wire \Add17~7 ;
wire \Add17~6_combout ;
wire \Add17~9 ;
wire \Add17~8_combout ;
wire \Add17~11 ;
wire \Add17~10_combout ;
wire \Add17~13 ;
wire \Add17~12_combout ;
wire \Add17~15 ;
wire \Add17~14_combout ;
wire \Add17~17 ;
wire \Add17~16_combout ;
wire \Add17~19 ;
wire \Add17~18_combout ;
wire \Add17~21 ;
wire \Add17~20_combout ;
wire \Add17~23 ;
wire \Add17~22_combout ;
wire \Add17~25 ;
wire \Add17~24_combout ;
wire \Add17~27 ;
wire \Add17~26_combout ;
wire \Add17~29 ;
wire \Add17~28_combout ;
wire \Add17~31 ;
wire \Add17~30_combout ;
wire \Add17~32_combout ;
wire \Add16~1 ;
wire \Add16~0_combout ;
wire \Add16~3 ;
wire \Add16~2_combout ;
wire \Add16~5 ;
wire \Add16~4_combout ;
wire \Add16~7 ;
wire \Add16~6_combout ;
wire \Add16~9 ;
wire \Add16~8_combout ;
wire \Add16~11 ;
wire \Add16~10_combout ;
wire \Add16~13 ;
wire \Add16~12_combout ;
wire \Add16~15 ;
wire \Add16~14_combout ;
wire \Add16~17 ;
wire \Add16~16_combout ;
wire \Add16~19 ;
wire \Add16~18_combout ;
wire \Add16~21 ;
wire \Add16~20_combout ;
wire \Add16~23 ;
wire \Add16~22_combout ;
wire \Add16~25 ;
wire \Add16~24_combout ;
wire \Add16~26_combout ;
wire \Add18~1 ;
wire \Add18~0_combout ;
wire \Add18~3 ;
wire \Add18~2_combout ;
wire \Add18~5 ;
wire \Add18~4_combout ;
wire \Add18~7 ;
wire \Add18~6_combout ;
wire \Add18~9 ;
wire \Add18~8_combout ;
wire \Add18~11 ;
wire \Add18~10_combout ;
wire \Add18~13 ;
wire \Add18~12_combout ;
wire \Add18~15 ;
wire \Add18~14_combout ;
wire \Add18~17 ;
wire \Add18~16_combout ;
wire \Add18~19 ;
wire \Add18~18_combout ;
wire \Add18~21 ;
wire \Add18~20_combout ;
wire \Add18~23 ;
wire \Add18~22_combout ;
wire \Add18~25 ;
wire \Add18~24_combout ;
wire \Add18~26_combout ;
wire \Add19~1_cout ;
wire \Add19~3 ;
wire \Add19~2_combout ;
wire \Add19~5 ;
wire \Add19~4_combout ;
wire \Add19~7 ;
wire \Add19~6_combout ;
wire \Add19~9 ;
wire \Add19~8_combout ;
wire \Add19~11 ;
wire \Add19~10_combout ;
wire \Add19~13 ;
wire \Add19~12_combout ;
wire \Add19~15 ;
wire \Add19~14_combout ;
wire \Add19~17 ;
wire \Add19~16_combout ;
wire \Add19~19 ;
wire \Add19~18_combout ;
wire \Add19~21 ;
wire \Add19~20_combout ;
wire \Add19~23 ;
wire \Add19~22_combout ;
wire \Add19~25 ;
wire \Add19~24_combout ;
wire \Add19~27 ;
wire \Add19~26_combout ;
wire \Add19~29 ;
wire \Add19~28_combout ;
wire \Add19~31 ;
wire \Add19~30_combout ;
wire \Add19~33 ;
wire \Add19~32_combout ;
wire \Add19~34_combout ;
wire \Add21~1_cout ;
wire \Add21~3 ;
wire \Add21~2_combout ;
wire \Add21~5 ;
wire \Add21~4_combout ;
wire \Add21~7 ;
wire \Add21~6_combout ;
wire \Add21~9 ;
wire \Add21~8_combout ;
wire \Add21~11 ;
wire \Add21~10_combout ;
wire \Add21~13 ;
wire \Add21~12_combout ;
wire \Add21~15 ;
wire \Add21~14_combout ;
wire \Add21~17 ;
wire \Add21~16_combout ;
wire \Add21~19 ;
wire \Add21~18_combout ;
wire \Add21~21 ;
wire \Add21~20_combout ;
wire \Add21~23 ;
wire \Add21~22_combout ;
wire \Add21~25 ;
wire \Add21~24_combout ;
wire \Add21~27 ;
wire \Add21~26_combout ;
wire \Add21~29 ;
wire \Add21~28_combout ;
wire \Add21~31 ;
wire \Add21~30_combout ;
wire \Add21~33 ;
wire \Add21~32_combout ;
wire \Add21~35 ;
wire \Add21~34_combout ;
wire \Add21~37 ;
wire \Add21~36_combout ;
wire \Add21~39 ;
wire \Add21~38_combout ;
wire \Add20~1 ;
wire \Add20~0_combout ;
wire \Add20~3 ;
wire \Add20~2_combout ;
wire \Add20~5 ;
wire \Add20~4_combout ;
wire \Add20~7 ;
wire \Add20~6_combout ;
wire \Add20~9 ;
wire \Add20~8_combout ;
wire \Add20~11 ;
wire \Add20~10_combout ;
wire \Add20~13 ;
wire \Add20~12_combout ;
wire \Add20~15 ;
wire \Add20~14_combout ;
wire \Add20~17 ;
wire \Add20~16_combout ;
wire \Add20~19 ;
wire \Add20~18_combout ;
wire \Add20~21 ;
wire \Add20~20_combout ;
wire \Add20~23 ;
wire \Add20~22_combout ;
wire \Add20~25 ;
wire \Add20~24_combout ;
wire \Add20~27 ;
wire \Add20~26_combout ;
wire \Add20~29 ;
wire \Add20~28_combout ;
wire \Add20~31 ;
wire \Add20~30_combout ;
wire \Add25~1_cout ;
wire \Add25~3 ;
wire \Add25~2_combout ;
wire \Add25~5 ;
wire \Add25~4_combout ;
wire \Add25~7 ;
wire \Add25~6_combout ;
wire \Add25~9 ;
wire \Add25~8_combout ;
wire \Add25~11 ;
wire \Add25~10_combout ;
wire \Add25~13 ;
wire \Add25~12_combout ;
wire \Add25~15 ;
wire \Add25~14_combout ;
wire \Add25~17 ;
wire \Add25~16_combout ;
wire \Add25~19 ;
wire \Add25~18_combout ;
wire \Add25~21 ;
wire \Add25~20_combout ;
wire \Add25~23 ;
wire \Add25~22_combout ;
wire \Add25~25 ;
wire \Add25~24_combout ;
wire \Add25~27 ;
wire \Add25~26_combout ;
wire \Add25~29 ;
wire \Add25~28_combout ;
wire \Add25~31 ;
wire \Add25~30_combout ;
wire \Add25~33 ;
wire \Add25~32_combout ;
wire \Add25~35 ;
wire \Add25~34_combout ;
wire \Add25~37 ;
wire \Add25~36_combout ;
wire \Add25~39 ;
wire \Add25~38_combout ;
wire \Add25~41 ;
wire \Add25~40_combout ;
wire \Add25~43 ;
wire \Add25~42_combout ;
wire \Add25~45 ;
wire \Add25~44_combout ;
wire \Add25~47 ;
wire \Add25~46_combout ;
wire \Add24~1 ;
wire \Add24~0_combout ;
wire \Add24~3 ;
wire \Add24~2_combout ;
wire \Add24~5 ;
wire \Add24~4_combout ;
wire \Add24~7 ;
wire \Add24~6_combout ;
wire \Add24~9 ;
wire \Add24~8_combout ;
wire \Add24~11 ;
wire \Add24~10_combout ;
wire \Add24~13 ;
wire \Add24~12_combout ;
wire \Add24~15 ;
wire \Add24~14_combout ;
wire \Add24~17 ;
wire \Add24~16_combout ;
wire \Add24~19 ;
wire \Add24~18_combout ;
wire \Add24~21 ;
wire \Add24~20_combout ;
wire \Add24~23 ;
wire \Add24~22_combout ;
wire \Add24~25 ;
wire \Add24~24_combout ;
wire \Add24~27 ;
wire \Add24~26_combout ;
wire \Add24~29 ;
wire \Add24~28_combout ;
wire \Add24~31 ;
wire \Add24~30_combout ;
wire \Add24~33 ;
wire \Add24~32_combout ;
wire \Add24~35 ;
wire \Add24~34_combout ;
wire \Add24~37 ;
wire \Add24~36_combout ;
wire \Add24~39 ;
wire \Add24~38_combout ;
wire \Add21~59_combout ;
wire \Add20~32_combout ;
wire \Add23~1_cout ;
wire \Add23~3 ;
wire \Add23~2_combout ;
wire \Add23~5 ;
wire \Add23~4_combout ;
wire \Add23~7 ;
wire \Add23~6_combout ;
wire \Add23~9 ;
wire \Add23~8_combout ;
wire \Add23~11 ;
wire \Add23~10_combout ;
wire \Add23~13 ;
wire \Add23~12_combout ;
wire \Add23~15 ;
wire \Add23~14_combout ;
wire \Add23~17 ;
wire \Add23~16_combout ;
wire \Add23~19 ;
wire \Add23~18_combout ;
wire \Add23~21 ;
wire \Add23~20_combout ;
wire \Add23~23 ;
wire \Add23~22_combout ;
wire \Add23~25 ;
wire \Add23~24_combout ;
wire \Add23~27 ;
wire \Add23~26_combout ;
wire \Add23~29 ;
wire \Add23~28_combout ;
wire \Add23~31 ;
wire \Add23~30_combout ;
wire \Add23~33 ;
wire \Add23~32_combout ;
wire \Add23~35 ;
wire \Add23~34_combout ;
wire \Add23~37 ;
wire \Add23~36_combout ;
wire \Add23~39 ;
wire \Add23~38_combout ;
wire \Add23~40_combout ;
wire \Add22~1 ;
wire \Add22~0_combout ;
wire \Add22~3 ;
wire \Add22~2_combout ;
wire \Add22~5 ;
wire \Add22~4_combout ;
wire \Add22~7 ;
wire \Add22~6_combout ;
wire \Add22~9 ;
wire \Add22~8_combout ;
wire \Add22~11 ;
wire \Add22~10_combout ;
wire \Add22~13 ;
wire \Add22~12_combout ;
wire \Add22~15 ;
wire \Add22~14_combout ;
wire \Add22~17 ;
wire \Add22~16_combout ;
wire \Add22~19 ;
wire \Add22~18_combout ;
wire \Add22~21 ;
wire \Add22~20_combout ;
wire \Add22~23 ;
wire \Add22~22_combout ;
wire \Add22~25 ;
wire \Add22~24_combout ;
wire \Add22~27 ;
wire \Add22~26_combout ;
wire \Add22~29 ;
wire \Add22~28_combout ;
wire \Add22~31 ;
wire \Add22~30_combout ;
wire \Add22~32_combout ;
wire \Add28|auto_generated|result_int[0]~1_cout ;
wire \Add28|auto_generated|result_int[1]~3 ;
wire \Add28|auto_generated|result_int[1]~2_combout ;
wire \Add28|auto_generated|result_int[2]~5 ;
wire \Add28|auto_generated|result_int[2]~4_combout ;
wire \Add28|auto_generated|result_int[3]~7 ;
wire \Add28|auto_generated|result_int[3]~6_combout ;
wire \Add28|auto_generated|result_int[4]~9 ;
wire \Add28|auto_generated|result_int[4]~8_combout ;
wire \Add28|auto_generated|result_int[5]~11 ;
wire \Add28|auto_generated|result_int[5]~10_combout ;
wire \Add28|auto_generated|result_int[6]~13 ;
wire \Add28|auto_generated|result_int[6]~12_combout ;
wire \Add28|auto_generated|result_int[7]~15 ;
wire \Add28|auto_generated|result_int[7]~14_combout ;
wire \Add28|auto_generated|result_int[8]~17 ;
wire \Add28|auto_generated|result_int[8]~16_combout ;
wire \Add28|auto_generated|result_int[9]~19 ;
wire \Add28|auto_generated|result_int[9]~18_combout ;
wire \Add28|auto_generated|result_int[10]~21 ;
wire \Add28|auto_generated|result_int[10]~20_combout ;
wire \Add28|auto_generated|result_int[11]~23 ;
wire \Add28|auto_generated|result_int[11]~22_combout ;
wire \Add28|auto_generated|result_int[12]~25 ;
wire \Add28|auto_generated|result_int[12]~24_combout ;
wire \Add28|auto_generated|result_int[13]~27 ;
wire \Add28|auto_generated|result_int[13]~26_combout ;
wire \Add28|auto_generated|result_int[14]~29 ;
wire \Add28|auto_generated|result_int[14]~28_combout ;
wire \Add28|auto_generated|result_int[15]~31 ;
wire \Add28|auto_generated|result_int[15]~30_combout ;
wire \Add28|auto_generated|result_int[16]~33 ;
wire \Add28|auto_generated|result_int[16]~32_combout ;
wire \Add28|auto_generated|result_int[17]~35 ;
wire \Add28|auto_generated|result_int[17]~34_combout ;
wire \Add28|auto_generated|result_int[18]~37 ;
wire \Add28|auto_generated|result_int[18]~36_combout ;
wire \Add28|auto_generated|result_int[19]~39 ;
wire \Add28|auto_generated|result_int[19]~38_combout ;
wire \Add28|auto_generated|result_int[20]~41 ;
wire \Add28|auto_generated|result_int[20]~40_combout ;
wire \Add28|auto_generated|result_int[21]~43 ;
wire \Add28|auto_generated|result_int[21]~42_combout ;
wire \Add28|auto_generated|result_int[22]~45 ;
wire \Add28|auto_generated|result_int[22]~44_combout ;
wire \Add28|auto_generated|result_int[23]~47 ;
wire \Add28|auto_generated|result_int[23]~46_combout ;
wire \Add28|auto_generated|result_int[24]~49 ;
wire \Add28|auto_generated|result_int[24]~48_combout ;
wire \Add24~60_combout ;
wire \Add25~48_combout ;
wire \Add26|auto_generated|result_int[0]~1_cout ;
wire \Add26|auto_generated|result_int[1]~3 ;
wire \Add26|auto_generated|result_int[1]~2_combout ;
wire \Add26|auto_generated|result_int[2]~5 ;
wire \Add26|auto_generated|result_int[2]~4_combout ;
wire \Add26|auto_generated|result_int[3]~7 ;
wire \Add26|auto_generated|result_int[3]~6_combout ;
wire \Add26|auto_generated|result_int[4]~9 ;
wire \Add26|auto_generated|result_int[4]~8_combout ;
wire \Add26|auto_generated|result_int[5]~11 ;
wire \Add26|auto_generated|result_int[5]~10_combout ;
wire \Add26|auto_generated|result_int[6]~13 ;
wire \Add26|auto_generated|result_int[6]~12_combout ;
wire \Add26|auto_generated|result_int[7]~15 ;
wire \Add26|auto_generated|result_int[7]~14_combout ;
wire \Add26|auto_generated|result_int[8]~17 ;
wire \Add26|auto_generated|result_int[8]~16_combout ;
wire \Add26|auto_generated|result_int[9]~19 ;
wire \Add26|auto_generated|result_int[9]~18_combout ;
wire \Add26|auto_generated|result_int[10]~21 ;
wire \Add26|auto_generated|result_int[10]~20_combout ;
wire \Add26|auto_generated|result_int[11]~23 ;
wire \Add26|auto_generated|result_int[11]~22_combout ;
wire \Add26|auto_generated|result_int[12]~25 ;
wire \Add26|auto_generated|result_int[12]~24_combout ;
wire \Add26|auto_generated|result_int[13]~27 ;
wire \Add26|auto_generated|result_int[13]~26_combout ;
wire \Add26|auto_generated|result_int[14]~29 ;
wire \Add26|auto_generated|result_int[14]~28_combout ;
wire \Add26|auto_generated|result_int[15]~31 ;
wire \Add26|auto_generated|result_int[15]~30_combout ;
wire \Add26|auto_generated|result_int[16]~33 ;
wire \Add26|auto_generated|result_int[16]~32_combout ;
wire \Add26|auto_generated|result_int[17]~35 ;
wire \Add26|auto_generated|result_int[17]~34_combout ;
wire \Add26|auto_generated|result_int[18]~37 ;
wire \Add26|auto_generated|result_int[18]~36_combout ;
wire \Add26|auto_generated|result_int[19]~39 ;
wire \Add26|auto_generated|result_int[19]~38_combout ;
wire \Add26|auto_generated|result_int[20]~40_combout ;
wire \Add28|auto_generated|result_int[25]~50_combout ;
wire \redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist4_xMSB_uid108_atan2Test_b_1|delay_signals[0][0]~q ;
wire \yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ;
wire \xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ;
wire \redist2_xMSB_uid146_atan2Test_b_1|delay_signals[0][0]~q ;
wire \redist3_xMSB_uid129_atan2Test_b_1|delay_signals[0][0]~q ;
wire \Add3~20_combout ;
wire \Add1~20_combout ;
wire \Add3~21_combout ;
wire \Add1~21_combout ;
wire \Add3~22_combout ;
wire \Add1~22_combout ;
wire \Add3~23_combout ;
wire \Add1~23_combout ;
wire \Add3~24_combout ;
wire \Add1~24_combout ;
wire \Add3~25_combout ;
wire \Add1~25_combout ;
wire \Add3~26_combout ;
wire \Add1~26_combout ;
wire \Add3~27_combout ;
wire \Add1~27_combout ;
wire \Add3~28_combout ;
wire \Add1~28_combout ;
wire \Add7~22_combout ;
wire \Add7~23_combout ;
wire \Add9~24_combout ;
wire \Add7~24_combout ;
wire \Add9~25_combout ;
wire \Add7~25_combout ;
wire \Add9~26_combout ;
wire \Add7~26_combout ;
wire \Add9~27_combout ;
wire \Add7~27_combout ;
wire \Add9~28_combout ;
wire \Add7~28_combout ;
wire \Add9~29_combout ;
wire \Add7~29_combout ;
wire \Add9~30_combout ;
wire \Add7~30_combout ;
wire \Add9~31_combout ;
wire \Add7~31_combout ;
wire \Add9~32_combout ;
wire \Add9~33_combout ;
wire \Add9~34_combout ;
wire \Add7~34_combout ;
wire \Add11~26_combout ;
wire \Add11~27_combout ;
wire \Add13~28_combout ;
wire \Add11~28_combout ;
wire \Add13~29_combout ;
wire \Add11~29_combout ;
wire \Add13~30_combout ;
wire \Add11~30_combout ;
wire \Add13~31_combout ;
wire \Add11~31_combout ;
wire \Add13~32_combout ;
wire \Add11~32_combout ;
wire \Add13~33_combout ;
wire \Add11~33_combout ;
wire \Add13~34_combout ;
wire \Add11~34_combout ;
wire \Add13~35_combout ;
wire \Add11~35_combout ;
wire \Add13~36_combout ;
wire \Add11~36_combout ;
wire \Add13~37_combout ;
wire \Add11~37_combout ;
wire \Add13~38_combout ;
wire \Add13~39_combout ;
wire \Add13~40_combout ;
wire \Add15~30_combout ;
wire \Add15~31_combout ;
wire \Add15~32_combout ;
wire \Add17~34_combout ;
wire \Add15~33_combout ;
wire \Add17~35_combout ;
wire \Add15~34_combout ;
wire \Add17~36_combout ;
wire \Add15~35_combout ;
wire \Add17~37_combout ;
wire \Add15~36_combout ;
wire \Add17~38_combout ;
wire \Add15~37_combout ;
wire \Add17~39_combout ;
wire \Add15~38_combout ;
wire \Add17~40_combout ;
wire \Add15~39_combout ;
wire \Add17~41_combout ;
wire \Add15~40_combout ;
wire \Add17~42_combout ;
wire \Add15~41_combout ;
wire \Add17~43_combout ;
wire \Add15~42_combout ;
wire \Add17~44_combout ;
wire \Add15~43_combout ;
wire \Add17~45_combout ;
wire \Add17~46_combout ;
wire \Add17~47_combout ;
wire \Add17~48_combout ;
wire \Add17~49_combout ;
wire \Add19~36_combout ;
wire \Add21~40_combout ;
wire \Add21~41_combout ;
wire \Add21~42_combout ;
wire \Add21~43_combout ;
wire \Add21~44_combout ;
wire \Add21~45_combout ;
wire \Add21~46_combout ;
wire \Add21~47_combout ;
wire \Add19~37_combout ;
wire \Add21~48_combout ;
wire \Add19~38_combout ;
wire \Add21~49_combout ;
wire \Add19~39_combout ;
wire \Add21~50_combout ;
wire \Add19~40_combout ;
wire \Add21~51_combout ;
wire \Add19~41_combout ;
wire \Add21~52_combout ;
wire \Add19~42_combout ;
wire \Add21~53_combout ;
wire \Add19~43_combout ;
wire \Add21~54_combout ;
wire \Add19~44_combout ;
wire \Add21~55_combout ;
wire \Add19~45_combout ;
wire \Add21~56_combout ;
wire \Add19~46_combout ;
wire \Add21~57_combout ;
wire \Add19~47_combout ;
wire \Add21~58_combout ;
wire \Add19~48_combout ;
wire \Add19~49_combout ;
wire \Add19~50_combout ;
wire \Add19~51_combout ;
wire \Add19~52_combout ;
wire \Add24~40_combout ;
wire \Add24~41_combout ;
wire \Add24~42_combout ;
wire \Add24~43_combout ;
wire \Add24~44_combout ;
wire \Add24~45_combout ;
wire \Add24~46_combout ;
wire \Add24~47_combout ;
wire \Add24~48_combout ;
wire \Add24~49_combout ;
wire \Add21~61_combout ;
wire \Add23~42_combout ;
wire \Add28|auto_generated|_~0_combout ;
wire \Add24~50_combout ;
wire \Add23~43_combout ;
wire \Add28|auto_generated|_~1_combout ;
wire \Add24~51_combout ;
wire \Add23~44_combout ;
wire \Add28|auto_generated|_~2_combout ;
wire \Add24~52_combout ;
wire \Add23~45_combout ;
wire \Add28|auto_generated|_~3_combout ;
wire \Add24~53_combout ;
wire \Add23~46_combout ;
wire \Add28|auto_generated|_~4_combout ;
wire \Add24~54_combout ;
wire \Add23~47_combout ;
wire \Add28|auto_generated|_~5_combout ;
wire \Add24~55_combout ;
wire \Add23~48_combout ;
wire \Add28|auto_generated|_~6_combout ;
wire \Add24~56_combout ;
wire \Add23~49_combout ;
wire \Add28|auto_generated|_~7_combout ;
wire \Add24~57_combout ;
wire \Add23~50_combout ;
wire \Add28|auto_generated|_~8_combout ;
wire \Add24~58_combout ;
wire \Add23~51_combout ;
wire \Add28|auto_generated|_~9_combout ;
wire \Add24~59_combout ;
wire \Add23~52_combout ;
wire \Add28|auto_generated|_~10_combout ;
wire \xip1E_6sumAHighB_uid118_atan2Test_o[3]~0_combout ;
wire \Add23~53_combout ;
wire \Add28|auto_generated|_~11_combout ;
wire \xip1E_6sumAHighB_uid118_atan2Test_o[2]~1_combout ;
wire \Add23~54_combout ;
wire \Add28|auto_generated|_~12_combout ;
wire \xip1E_6sumAHighB_uid118_atan2Test_o[1]~2_combout ;
wire \Add23~55_combout ;
wire \Add28|auto_generated|_~13_combout ;
wire \Add23~56_combout ;
wire \Add26|auto_generated|_~0_combout ;
wire \Add26|auto_generated|_~1_combout ;
wire \Add26|auto_generated|_~2_combout ;
wire \Add26|auto_generated|_~3_combout ;
wire \Add26|auto_generated|_~4_combout ;
wire \Add26|auto_generated|_~5_combout ;
wire \Add26|auto_generated|_~6_combout ;
wire \Add26|auto_generated|_~7_combout ;
wire \Add26|auto_generated|_~8_combout ;
wire \Add26|auto_generated|_~9_combout ;
wire \Add26|auto_generated|_~10_combout ;
wire \Add26|auto_generated|_~11_combout ;
wire \Add26|auto_generated|_~12_combout ;
wire \Add26|auto_generated|_~13_combout ;
wire \Add23~57_combout ;
wire \Add26|auto_generated|_~14_combout ;
wire \Add23~58_combout ;
wire \Add26|auto_generated|_~15_combout ;
wire \Add23~59_combout ;
wire \Add26|auto_generated|_~16_combout ;
wire \Add23~60_combout ;
wire \Add26|auto_generated|_~17_combout ;
wire \Add23~61_combout ;
wire \Add26|auto_generated|_~18_combout ;
wire \Add32~0_combout ;
wire \Add32~1_combout ;
wire \Add32~2_combout ;
wire \Add32~3_combout ;
wire \Add32~4_combout ;
wire \Add32~5_combout ;
wire \Add32~6_combout ;
wire \Add32~7_combout ;
wire \Add32~8_combout ;
wire \Add32~9_combout ;
wire \Add32~10_combout ;
wire \Add32~11_combout ;
wire \Add24~62_combout ;
wire \Add30~0_combout ;
wire \Add30~1_combout ;
wire \Add30~2_combout ;
wire \Add30~3_combout ;
wire \Add30~4_combout ;
wire \Add30~5_combout ;
wire \Add30~6_combout ;
wire \Add30~7_combout ;
wire \Add30~8_combout ;
wire \Add30~9_combout ;
wire \Add30~10_combout ;
wire \Add30~11_combout ;
wire \Add30~12_combout ;
wire \Add30~13_combout ;
wire \Add30~14_combout ;
wire \Add30~15_combout ;
wire \Add30~16_combout ;
wire \Add30~17_combout ;
wire \Equal1~0_combout ;
wire \Equal1~1_combout ;
wire \Equal1~2_combout ;
wire \Equal0~0_combout ;
wire \Equal0~1_combout ;
wire \Equal0~2_combout ;
wire \q[0]~1 ;
wire \q[1]~3 ;
wire \q[2]~5 ;
wire \q[3]~7 ;
wire \q[4]~9 ;
wire \q[5]~11 ;
wire \q[6]~13 ;
wire \q[7]~15 ;
wire \q[8]~17 ;
wire \q[9]~19 ;
wire \q[10]~21 ;
wire \q[11]~23 ;
wire \Mux34~4_combout ;
wire \Mux12~0_combout ;
wire \Mux13~0_combout ;
wire \Mux14~0_combout ;
wire \Mux15~0_combout ;
wire \Mux16~0_combout ;
wire \Mux17~0_combout ;
wire \Mux0~0_combout ;
wire \Mux18~0_combout ;
wire \Mux1~0_combout ;
wire \Add49~1_cout ;
wire \Add49~3_cout ;
wire \Add49~5_cout ;
wire \Add49~7_cout ;
wire \Add49~9 ;
wire \Add49~11 ;
wire \Add49~12_combout ;
wire \Add34|auto_generated|_~0_combout ;
wire \Add34|auto_generated|_~1_combout ;
wire \Add34|auto_generated|_~2_combout ;
wire \Add34|auto_generated|_~3_combout ;
wire \Add34|auto_generated|_~4_combout ;
wire \Add34|auto_generated|_~5_combout ;
wire \Add34|auto_generated|_~6_combout ;
wire \Add34|auto_generated|_~7_combout ;
wire \Add34|auto_generated|_~8_combout ;
wire \Add34|auto_generated|_~9_combout ;
wire \Add34|auto_generated|_~10_combout ;
wire \Add34|auto_generated|_~11_combout ;
wire \Add34|auto_generated|_~12_combout ;
wire \Add34|auto_generated|_~13_combout ;
wire \Add34|auto_generated|_~14_combout ;
wire \Add34|auto_generated|_~15_combout ;
wire \Add34|auto_generated|result_int[0]~1_cout ;
wire \Add34|auto_generated|result_int[1]~3 ;
wire \Add34|auto_generated|result_int[2]~5 ;
wire \Add34|auto_generated|result_int[3]~7 ;
wire \Add34|auto_generated|result_int[4]~9 ;
wire \Add34|auto_generated|result_int[5]~11 ;
wire \Add34|auto_generated|result_int[6]~13 ;
wire \Add34|auto_generated|result_int[7]~15 ;
wire \Add34|auto_generated|result_int[8]~17 ;
wire \Add34|auto_generated|result_int[9]~19 ;
wire \Add34|auto_generated|result_int[10]~21 ;
wire \Add34|auto_generated|result_int[11]~23 ;
wire \Add34|auto_generated|result_int[12]~25 ;
wire \Add34|auto_generated|result_int[13]~27 ;
wire \Add34|auto_generated|result_int[14]~29 ;
wire \Add34|auto_generated|result_int[15]~31 ;
wire \Add34|auto_generated|result_int[16]~32_combout ;
wire \Add34|auto_generated|_~16_combout ;
wire \Add34|auto_generated|result_int[16]~33 ;
wire \Add34|auto_generated|result_int[17]~35 ;
wire \Add34|auto_generated|result_int[18]~36_combout ;
wire \Add36|auto_generated|_~0_combout ;
wire \Add36|auto_generated|_~1_combout ;
wire \Add36|auto_generated|_~2_combout ;
wire \Add36|auto_generated|_~3_combout ;
wire \Add36|auto_generated|_~4_combout ;
wire \Add36|auto_generated|_~5_combout ;
wire \Add36|auto_generated|_~6_combout ;
wire \Add36|auto_generated|_~7_combout ;
wire \Add36|auto_generated|_~8_combout ;
wire \Add36|auto_generated|_~9_combout ;
wire \Add36|auto_generated|result_int[0]~1_cout ;
wire \Add36|auto_generated|result_int[1]~3 ;
wire \Add36|auto_generated|result_int[2]~5 ;
wire \Add36|auto_generated|result_int[3]~7 ;
wire \Add36|auto_generated|result_int[4]~9 ;
wire \Add36|auto_generated|result_int[5]~11 ;
wire \Add36|auto_generated|result_int[6]~13 ;
wire \Add36|auto_generated|result_int[7]~15 ;
wire \Add36|auto_generated|result_int[8]~17 ;
wire \Add36|auto_generated|result_int[9]~19 ;
wire \Add36|auto_generated|result_int[10]~21 ;
wire \Add36|auto_generated|result_int[11]~23 ;
wire \Add36|auto_generated|result_int[12]~25 ;
wire \Add36|auto_generated|result_int[13]~27 ;
wire \Add36|auto_generated|result_int[14]~29 ;
wire \Add36|auto_generated|result_int[15]~31 ;
wire \Add36|auto_generated|result_int[16]~33 ;
wire \Add36|auto_generated|result_int[17]~35 ;
wire \Add36|auto_generated|result_int[18]~37 ;
wire \Add36|auto_generated|result_int[19]~39 ;
wire \Add36|auto_generated|result_int[20]~41 ;
wire \Add36|auto_generated|result_int[21]~43 ;
wire \Add36|auto_generated|result_int[22]~45 ;
wire \Add36|auto_generated|result_int[23]~47 ;
wire \Add36|auto_generated|result_int[24]~49 ;
wire \Add36|auto_generated|result_int[25]~50_combout ;
wire \Add38|auto_generated|_~0_combout ;
wire \Add34|auto_generated|result_int[15]~30_combout ;
wire \Add36|auto_generated|result_int[24]~48_combout ;
wire \Add38|auto_generated|_~1_combout ;
wire \Add34|auto_generated|result_int[14]~28_combout ;
wire \Add36|auto_generated|result_int[23]~46_combout ;
wire \Add38|auto_generated|_~2_combout ;
wire \Add34|auto_generated|result_int[13]~26_combout ;
wire \Add36|auto_generated|result_int[22]~44_combout ;
wire \Add38|auto_generated|_~3_combout ;
wire \Add34|auto_generated|result_int[12]~24_combout ;
wire \Add36|auto_generated|result_int[21]~42_combout ;
wire \Add38|auto_generated|_~4_combout ;
wire \Add34|auto_generated|result_int[11]~22_combout ;
wire \Add36|auto_generated|result_int[20]~40_combout ;
wire \Add38|auto_generated|_~5_combout ;
wire \Add34|auto_generated|result_int[10]~20_combout ;
wire \Add36|auto_generated|result_int[19]~38_combout ;
wire \Add38|auto_generated|_~6_combout ;
wire \Add34|auto_generated|result_int[9]~18_combout ;
wire \Add36|auto_generated|result_int[18]~36_combout ;
wire \Add38|auto_generated|_~7_combout ;
wire \Add34|auto_generated|result_int[8]~16_combout ;
wire \Add36|auto_generated|result_int[17]~34_combout ;
wire \Add38|auto_generated|_~8_combout ;
wire \Add34|auto_generated|result_int[7]~14_combout ;
wire \Add36|auto_generated|result_int[16]~32_combout ;
wire \Add38|auto_generated|_~9_combout ;
wire \Add34|auto_generated|result_int[6]~12_combout ;
wire \Add36|auto_generated|result_int[15]~30_combout ;
wire \Add38|auto_generated|_~10_combout ;
wire \Add34|auto_generated|result_int[5]~10_combout ;
wire \Add36|auto_generated|result_int[14]~28_combout ;
wire \Add38|auto_generated|_~11_combout ;
wire \Add34|auto_generated|result_int[4]~8_combout ;
wire \Add36|auto_generated|result_int[13]~26_combout ;
wire \Add38|auto_generated|_~12_combout ;
wire \Add34|auto_generated|result_int[3]~6_combout ;
wire \Add36|auto_generated|result_int[12]~24_combout ;
wire \Add38|auto_generated|_~13_combout ;
wire \Add34|auto_generated|result_int[2]~4_combout ;
wire \Add36|auto_generated|result_int[11]~22_combout ;
wire \Add38|auto_generated|_~14_combout ;
wire \Add34|auto_generated|result_int[1]~2_combout ;
wire \Add36|auto_generated|result_int[10]~20_combout ;
wire \Add38|auto_generated|_~15_combout ;
wire \Add38|auto_generated|result_int[0]~1_cout ;
wire \Add38|auto_generated|result_int[1]~3 ;
wire \Add38|auto_generated|result_int[2]~5 ;
wire \Add38|auto_generated|result_int[3]~7 ;
wire \Add38|auto_generated|result_int[4]~9 ;
wire \Add38|auto_generated|result_int[5]~11 ;
wire \Add38|auto_generated|result_int[6]~13 ;
wire \Add38|auto_generated|result_int[7]~15 ;
wire \Add38|auto_generated|result_int[8]~17 ;
wire \Add38|auto_generated|result_int[9]~19 ;
wire \Add38|auto_generated|result_int[10]~21 ;
wire \Add38|auto_generated|result_int[11]~23 ;
wire \Add38|auto_generated|result_int[12]~25 ;
wire \Add38|auto_generated|result_int[13]~27 ;
wire \Add38|auto_generated|result_int[14]~29 ;
wire \Add38|auto_generated|result_int[15]~31 ;
wire \Add38|auto_generated|result_int[16]~32_combout ;
wire \Add34|auto_generated|result_int[17]~34_combout ;
wire \Add38|auto_generated|result_int[16]~33 ;
wire \Add38|auto_generated|result_int[17]~34_combout ;
wire \Add38|auto_generated|result_int[15]~30_combout ;
wire \Add36|auto_generated|result_int[9]~18_combout ;
wire \Add40|auto_generated|_~0_combout ;
wire \Add36|auto_generated|result_int[8]~16_combout ;
wire \Add40|auto_generated|_~1_combout ;
wire \Add36|auto_generated|result_int[7]~14_combout ;
wire \Add40|auto_generated|_~2_combout ;
wire \Add36|auto_generated|result_int[6]~12_combout ;
wire \Add40|auto_generated|_~3_combout ;
wire \Add36|auto_generated|result_int[5]~10_combout ;
wire \Add40|auto_generated|_~4_combout ;
wire \Add36|auto_generated|result_int[4]~8_combout ;
wire \Add40|auto_generated|_~5_combout ;
wire \Add36|auto_generated|result_int[3]~6_combout ;
wire \Add40|auto_generated|_~6_combout ;
wire \Add36|auto_generated|result_int[2]~4_combout ;
wire \Add40|auto_generated|_~7_combout ;
wire \Add36|auto_generated|result_int[1]~2_combout ;
wire \Add40|auto_generated|result_int[0]~1_cout ;
wire \Add40|auto_generated|result_int[1]~3 ;
wire \Add40|auto_generated|result_int[2]~5 ;
wire \Add40|auto_generated|result_int[3]~7 ;
wire \Add40|auto_generated|result_int[4]~9 ;
wire \Add40|auto_generated|result_int[5]~11 ;
wire \Add40|auto_generated|result_int[6]~13 ;
wire \Add40|auto_generated|result_int[7]~15 ;
wire \Add40|auto_generated|result_int[8]~17 ;
wire \Add40|auto_generated|result_int[9]~19 ;
wire \Add40|auto_generated|result_int[10]~21 ;
wire \Add40|auto_generated|result_int[11]~23 ;
wire \Add40|auto_generated|result_int[12]~25 ;
wire \Add40|auto_generated|result_int[13]~27 ;
wire \Add40|auto_generated|result_int[14]~29 ;
wire \Add40|auto_generated|result_int[15]~31 ;
wire \Add40|auto_generated|result_int[16]~33 ;
wire \Add40|auto_generated|result_int[17]~35 ;
wire \Add40|auto_generated|result_int[18]~37 ;
wire \Add40|auto_generated|result_int[19]~39 ;
wire \Add40|auto_generated|result_int[20]~41 ;
wire \Add40|auto_generated|result_int[21]~43 ;
wire \Add40|auto_generated|result_int[22]~45 ;
wire \Add40|auto_generated|result_int[23]~47 ;
wire \Add40|auto_generated|result_int[24]~49 ;
wire \Add40|auto_generated|result_int[25]~50_combout ;
wire \Add42|auto_generated|_~0_combout ;
wire \Add38|auto_generated|result_int[14]~28_combout ;
wire \Add40|auto_generated|result_int[24]~48_combout ;
wire \Add42|auto_generated|_~1_combout ;
wire \Add38|auto_generated|result_int[13]~26_combout ;
wire \Add40|auto_generated|result_int[23]~46_combout ;
wire \Add42|auto_generated|_~2_combout ;
wire \Add38|auto_generated|result_int[12]~24_combout ;
wire \Add40|auto_generated|result_int[22]~44_combout ;
wire \Add42|auto_generated|_~3_combout ;
wire \Add38|auto_generated|result_int[11]~22_combout ;
wire \Add40|auto_generated|result_int[21]~42_combout ;
wire \Add42|auto_generated|_~4_combout ;
wire \Add38|auto_generated|result_int[10]~20_combout ;
wire \Add40|auto_generated|result_int[20]~40_combout ;
wire \Add42|auto_generated|_~5_combout ;
wire \Add38|auto_generated|result_int[9]~18_combout ;
wire \Add40|auto_generated|result_int[19]~38_combout ;
wire \Add42|auto_generated|_~6_combout ;
wire \Add38|auto_generated|result_int[8]~16_combout ;
wire \Add40|auto_generated|result_int[18]~36_combout ;
wire \Add42|auto_generated|_~7_combout ;
wire \Add38|auto_generated|result_int[7]~14_combout ;
wire \Add40|auto_generated|result_int[17]~34_combout ;
wire \Add42|auto_generated|_~8_combout ;
wire \Add38|auto_generated|result_int[6]~12_combout ;
wire \Add40|auto_generated|result_int[16]~32_combout ;
wire \Add42|auto_generated|_~9_combout ;
wire \Add38|auto_generated|result_int[5]~10_combout ;
wire \Add40|auto_generated|result_int[15]~30_combout ;
wire \Add42|auto_generated|_~10_combout ;
wire \Add38|auto_generated|result_int[4]~8_combout ;
wire \Add40|auto_generated|result_int[14]~28_combout ;
wire \Add42|auto_generated|_~11_combout ;
wire \Add38|auto_generated|result_int[3]~6_combout ;
wire \Add40|auto_generated|result_int[13]~26_combout ;
wire \Add42|auto_generated|_~12_combout ;
wire \Add38|auto_generated|result_int[2]~4_combout ;
wire \Add40|auto_generated|result_int[12]~24_combout ;
wire \Add42|auto_generated|_~13_combout ;
wire \Add38|auto_generated|result_int[1]~2_combout ;
wire \Add40|auto_generated|result_int[11]~22_combout ;
wire \Add42|auto_generated|_~14_combout ;
wire \Add42|auto_generated|result_int[0]~1_cout ;
wire \Add42|auto_generated|result_int[1]~3 ;
wire \Add42|auto_generated|result_int[2]~5 ;
wire \Add42|auto_generated|result_int[3]~7 ;
wire \Add42|auto_generated|result_int[4]~9 ;
wire \Add42|auto_generated|result_int[5]~11 ;
wire \Add42|auto_generated|result_int[6]~13 ;
wire \Add42|auto_generated|result_int[7]~15 ;
wire \Add42|auto_generated|result_int[8]~17 ;
wire \Add42|auto_generated|result_int[9]~19 ;
wire \Add42|auto_generated|result_int[10]~21 ;
wire \Add42|auto_generated|result_int[11]~23 ;
wire \Add42|auto_generated|result_int[12]~25 ;
wire \Add42|auto_generated|result_int[13]~27 ;
wire \Add42|auto_generated|result_int[14]~29 ;
wire \Add42|auto_generated|result_int[15]~31 ;
wire \Add42|auto_generated|result_int[16]~32_combout ;
wire \Add49~10_combout ;
wire \Add42|auto_generated|result_int[15]~30_combout ;
wire \Add42|auto_generated|result_int[14]~28_combout ;
wire \Add40|auto_generated|result_int[10]~20_combout ;
wire \Add40|auto_generated|result_int[9]~18_combout ;
wire \Add40|auto_generated|result_int[8]~16_combout ;
wire \Add40|auto_generated|result_int[7]~14_combout ;
wire \Add40|auto_generated|result_int[6]~12_combout ;
wire \Add40|auto_generated|result_int[5]~10_combout ;
wire \Add40|auto_generated|result_int[4]~8_combout ;
wire \Add40|auto_generated|result_int[3]~6_combout ;
wire \Add40|auto_generated|result_int[2]~4_combout ;
wire \Add40|auto_generated|result_int[1]~2_combout ;
wire \Add45~1_cout ;
wire \Add45~3_cout ;
wire \Add45~5_cout ;
wire \Add45~7_cout ;
wire \Add45~9_cout ;
wire \Add45~11_cout ;
wire \Add45~13_cout ;
wire \Add45~15_cout ;
wire \Add45~17_cout ;
wire \Add45~19_cout ;
wire \Add45~21_cout ;
wire \Add45~23 ;
wire \Add45~25 ;
wire \Add45~27 ;
wire \Add45~29 ;
wire \Add45~31 ;
wire \Add45~33 ;
wire \Add45~35 ;
wire \Add45~37 ;
wire \Add45~39 ;
wire \Add45~41 ;
wire \Add45~43 ;
wire \Add45~45 ;
wire \Add45~47 ;
wire \Add45~48_combout ;
wire \Add44~1_cout ;
wire \Add44~3_cout ;
wire \Add44~5_cout ;
wire \Add44~7_cout ;
wire \Add44~9_cout ;
wire \Add44~11_cout ;
wire \Add44~13_cout ;
wire \Add44~15_cout ;
wire \Add44~17_cout ;
wire \Add44~19_cout ;
wire \Add44~21_cout ;
wire \Add44~23 ;
wire \Add44~25 ;
wire \Add44~27 ;
wire \Add44~29 ;
wire \Add44~31 ;
wire \Add44~33 ;
wire \Add44~35 ;
wire \Add44~37 ;
wire \Add44~39 ;
wire \Add44~41 ;
wire \Add44~43 ;
wire \Add44~45 ;
wire \Add44~47 ;
wire \Add44~48_combout ;
wire \Add45~50_combout ;
wire \Add42|auto_generated|result_int[13]~26_combout ;
wire \Add45~46_combout ;
wire \Add44~46_combout ;
wire \Add45~51_combout ;
wire \Add42|auto_generated|result_int[12]~24_combout ;
wire \Add45~44_combout ;
wire \Add44~44_combout ;
wire \Add45~52_combout ;
wire \Add42|auto_generated|result_int[11]~22_combout ;
wire \Add45~42_combout ;
wire \Add44~42_combout ;
wire \Add45~53_combout ;
wire \Add42|auto_generated|result_int[10]~20_combout ;
wire \Add45~40_combout ;
wire \Add44~40_combout ;
wire \Add45~54_combout ;
wire \Add42|auto_generated|result_int[9]~18_combout ;
wire \Add45~38_combout ;
wire \Add44~38_combout ;
wire \Add45~55_combout ;
wire \Add42|auto_generated|result_int[8]~16_combout ;
wire \Add45~36_combout ;
wire \Add44~36_combout ;
wire \Add45~56_combout ;
wire \Add42|auto_generated|result_int[7]~14_combout ;
wire \Add45~34_combout ;
wire \Add44~34_combout ;
wire \Add45~57_combout ;
wire \Add42|auto_generated|result_int[6]~12_combout ;
wire \Add45~32_combout ;
wire \Add44~32_combout ;
wire \Add45~58_combout ;
wire \Add42|auto_generated|result_int[5]~10_combout ;
wire \Add45~30_combout ;
wire \Add44~30_combout ;
wire \Add45~59_combout ;
wire \Add42|auto_generated|result_int[4]~8_combout ;
wire \Add45~28_combout ;
wire \Add44~28_combout ;
wire \Add45~60_combout ;
wire \Add42|auto_generated|result_int[3]~6_combout ;
wire \Add45~26_combout ;
wire \Add44~26_combout ;
wire \Add45~61_combout ;
wire \Add42|auto_generated|result_int[2]~4_combout ;
wire \Add45~24_combout ;
wire \Add44~24_combout ;
wire \Add45~62_combout ;
wire \Add42|auto_generated|result_int[1]~2_combout ;
wire \Add45~22_combout ;
wire \Add44~22_combout ;
wire \Add45~63_combout ;
wire \Add46~1_cout ;
wire \Add46~3_cout ;
wire \Add46~5_cout ;
wire \Add46~7_cout ;
wire \Add46~9_cout ;
wire \Add46~11_cout ;
wire \Add46~13_cout ;
wire \Add46~15_cout ;
wire \Add46~17_cout ;
wire \Add46~19_cout ;
wire \Add46~21_cout ;
wire \Add46~23_cout ;
wire \Add46~25_cout ;
wire \Add46~27_cout ;
wire \Add46~28_combout ;
wire \Add47~1_cout ;
wire \Add47~3_cout ;
wire \Add47~5_cout ;
wire \Add47~7_cout ;
wire \Add47~9_cout ;
wire \Add47~11_cout ;
wire \Add47~13_cout ;
wire \Add47~15_cout ;
wire \Add47~17_cout ;
wire \Add47~19_cout ;
wire \Add47~21_cout ;
wire \Add47~23_cout ;
wire \Add47~25_cout ;
wire \Add47~27_cout ;
wire \Add47~28_combout ;
wire \Add47~30_combout ;
wire \Add49~8_combout ;
wire \Add50~1 ;
wire \Add50~3 ;
wire \Add50~4_combout ;
wire \Mux58~2_combout ;
wire \Mux44~2_combout ;
wire \Mux44~3_combout ;
wire \Add50~2_combout ;
wire \Mux45~2_combout ;
wire \Mux59~2_combout ;
wire \Mux59~3_combout ;
wire \Mux19~0_combout ;
wire \Add50~0_combout ;
wire \Mux46~4_combout ;
wire \Mux60~0_combout ;
wire \Add51~1_cout ;
wire \Add51~3_cout ;
wire \Mux11~0_combout ;
wire \Add49~13 ;
wire \Add49~14_combout ;
wire \Add50~5 ;
wire \Add50~6_combout ;
wire \Mux57~4_combout ;
wire \Mux43~4_combout ;
wire \Mux11~1_combout ;
wire \Add49~15 ;
wire \Add49~16_combout ;
wire \Add50~7 ;
wire \Add50~8_combout ;
wire \Mux56~4_combout ;
wire \Mux42~4_combout ;
wire \Mux9~0_combout ;
wire \Add49~17 ;
wire \Add49~18_combout ;
wire \Add50~9 ;
wire \Add50~10_combout ;
wire \Mux55~2_combout ;
wire \Mux41~2_combout ;
wire \Add49~19 ;
wire \Add49~20_combout ;
wire \Add50~11 ;
wire \Add50~12_combout ;
wire \Mux54~0_combout ;
wire \Mux40~0_combout ;
wire \Add49~21 ;
wire \Add49~22_combout ;
wire \Add50~13 ;
wire \Add50~14_combout ;
wire \Mux53~4_combout ;
wire \Mux39~4_combout ;
wire \Mux6~0_combout ;
wire \Add49~23 ;
wire \Add49~24_combout ;
wire \Add50~15 ;
wire \Add50~16_combout ;
wire \Mux52~2_combout ;
wire \Mux38~2_combout ;
wire \Add49~25 ;
wire \Add49~26_combout ;
wire \Add50~17 ;
wire \Add50~18_combout ;
wire \Mux51~0_combout ;
wire \Mux37~0_combout ;
wire \Add49~27 ;
wire \Add49~28_combout ;
wire \Add50~19 ;
wire \Add50~20_combout ;
wire \Mux50~4_combout ;
wire \Mux36~4_combout ;
wire \Mux16~1_combout ;
wire \Add49~29 ;
wire \Add49~30_combout ;
wire \Add50~21 ;
wire \Add50~22_combout ;
wire \Mux49~2_combout ;
wire \Mux35~2_combout ;
wire \Mux3~0_combout ;
wire \Add49~31 ;
wire \Add49~32_combout ;
wire \Add50~23 ;
wire \Add50~24_combout ;
wire \Mux34~5_combout ;
wire \Mux48~2_combout ;
wire \Mux34~6_combout ;
wire \Mux2~0_combout ;
wire \Add49~33 ;
wire \Add49~34_combout ;
wire \Add50~25 ;
wire \Add50~26_combout ;
wire \Mux47~0_combout ;
wire \Mux33~0_combout ;


cordic_dspba_delay_10 redist9_signY_uid8_atan2Test_b_1(
	.delay_signals_0_0(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,y[9]}));

cordic_dspba_delay_1 redist10_signX_uid7_atan2Test_b_1(
	.delay_signals_0_0(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,x[9]}),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_12 yNotZero_uid15_atan2Test_delay(
	.delay_signals_0_0(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Equal1~2_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_11 xNotZero_uid17_atan2Test_delay(
	.delay_signals_0_0(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Equal0~2_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_2 redist1_xip1_8_uid160_atan2Test_b_1(
	.delay_signals_23_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][23]~q ),
	.delay_signals_22_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][22]~q ),
	.delay_signals_21_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][21]~q ),
	.delay_signals_20_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][20]~q ),
	.delay_signals_19_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][19]~q ),
	.delay_signals_18_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][18]~q ),
	.delay_signals_17_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][17]~q ),
	.delay_signals_16_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][16]~q ),
	.delay_signals_15_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][15]~q ),
	.delay_signals_14_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][8]~q ),
	.delay_signals_24_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][24]~q ),
	.delay_signals_7_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][1]~q ),
	.delay_signals_0_0(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][0]~q ),
	.result_int_1(\Add28|auto_generated|result_int[1]~2_combout ),
	.result_int_2(\Add28|auto_generated|result_int[2]~4_combout ),
	.result_int_3(\Add28|auto_generated|result_int[3]~6_combout ),
	.result_int_4(\Add28|auto_generated|result_int[4]~8_combout ),
	.result_int_5(\Add28|auto_generated|result_int[5]~10_combout ),
	.result_int_6(\Add28|auto_generated|result_int[6]~12_combout ),
	.result_int_7(\Add28|auto_generated|result_int[7]~14_combout ),
	.result_int_8(\Add28|auto_generated|result_int[8]~16_combout ),
	.result_int_9(\Add28|auto_generated|result_int[9]~18_combout ),
	.result_int_10(\Add28|auto_generated|result_int[10]~20_combout ),
	.result_int_11(\Add28|auto_generated|result_int[11]~22_combout ),
	.result_int_12(\Add28|auto_generated|result_int[12]~24_combout ),
	.result_int_13(\Add28|auto_generated|result_int[13]~26_combout ),
	.result_int_14(\Add28|auto_generated|result_int[14]~28_combout ),
	.result_int_15(\Add28|auto_generated|result_int[15]~30_combout ),
	.result_int_16(\Add28|auto_generated|result_int[16]~32_combout ),
	.result_int_17(\Add28|auto_generated|result_int[17]~34_combout ),
	.result_int_18(\Add28|auto_generated|result_int[18]~36_combout ),
	.result_int_19(\Add28|auto_generated|result_int[19]~38_combout ),
	.result_int_20(\Add28|auto_generated|result_int[20]~40_combout ),
	.result_int_21(\Add28|auto_generated|result_int[21]~42_combout ),
	.result_int_22(\Add28|auto_generated|result_int[22]~44_combout ),
	.result_int_23(\Add28|auto_generated|result_int[23]~46_combout ),
	.result_int_24(\Add28|auto_generated|result_int[24]~48_combout ),
	.result_int_201(\Add26|auto_generated|result_int[20]~40_combout ),
	.result_int_25(\Add28|auto_generated|result_int[25]~50_combout ),
	.Add32(\Add32~0_combout ),
	.Add321(\Add32~1_combout ),
	.Add322(\Add32~2_combout ),
	.Add323(\Add32~3_combout ),
	.Add324(\Add32~4_combout ),
	.Add325(\Add32~5_combout ),
	.Add326(\Add32~6_combout ),
	.Add327(\Add32~7_combout ),
	.Add328(\Add32~8_combout ),
	.Add329(\Add32~9_combout ),
	.Add3210(\Add32~10_combout ),
	.Add3211(\Add32~11_combout ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay redist0_yip1_8_uid161_atan2Test_b_1(
	.delay_signals_18_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.delay_signals_15_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][15]~q ),
	.delay_signals_14_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][14]~q ),
	.delay_signals_13_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][13]~q ),
	.delay_signals_12_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][12]~q ),
	.delay_signals_11_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][11]~q ),
	.delay_signals_10_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][10]~q ),
	.delay_signals_9_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][9]~q ),
	.delay_signals_8_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][8]~q ),
	.delay_signals_7_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][7]~q ),
	.delay_signals_6_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][6]~q ),
	.delay_signals_5_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][5]~q ),
	.delay_signals_4_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][4]~q ),
	.delay_signals_3_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][3]~q ),
	.delay_signals_2_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][2]~q ),
	.delay_signals_1_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][1]~q ),
	.delay_signals_0_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][0]~q ),
	.delay_signals_17_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][17]~q ),
	.delay_signals_16_0(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][16]~q ),
	.result_int_1(\Add26|auto_generated|result_int[1]~2_combout ),
	.result_int_2(\Add26|auto_generated|result_int[2]~4_combout ),
	.result_int_3(\Add26|auto_generated|result_int[3]~6_combout ),
	.result_int_4(\Add26|auto_generated|result_int[4]~8_combout ),
	.result_int_5(\Add26|auto_generated|result_int[5]~10_combout ),
	.result_int_6(\Add26|auto_generated|result_int[6]~12_combout ),
	.result_int_7(\Add26|auto_generated|result_int[7]~14_combout ),
	.result_int_8(\Add26|auto_generated|result_int[8]~16_combout ),
	.result_int_9(\Add26|auto_generated|result_int[9]~18_combout ),
	.result_int_10(\Add26|auto_generated|result_int[10]~20_combout ),
	.result_int_11(\Add26|auto_generated|result_int[11]~22_combout ),
	.result_int_12(\Add26|auto_generated|result_int[12]~24_combout ),
	.result_int_13(\Add26|auto_generated|result_int[13]~26_combout ),
	.result_int_14(\Add26|auto_generated|result_int[14]~28_combout ),
	.result_int_15(\Add26|auto_generated|result_int[15]~30_combout ),
	.result_int_16(\Add26|auto_generated|result_int[16]~32_combout ),
	.result_int_17(\Add26|auto_generated|result_int[17]~34_combout ),
	.result_int_18(\Add26|auto_generated|result_int[18]~36_combout ),
	.result_int_19(\Add26|auto_generated|result_int[19]~38_combout ),
	.result_int_20(\Add26|auto_generated|result_int[20]~40_combout ),
	.Add30(\Add30~0_combout ),
	.Add301(\Add30~1_combout ),
	.Add302(\Add30~2_combout ),
	.Add303(\Add30~3_combout ),
	.Add304(\Add30~4_combout ),
	.Add305(\Add30~5_combout ),
	.Add306(\Add30~6_combout ),
	.Add307(\Add30~7_combout ),
	.Add308(\Add30~8_combout ),
	.Add309(\Add30~9_combout ),
	.Add3010(\Add30~10_combout ),
	.Add3011(\Add30~11_combout ),
	.Add3012(\Add30~12_combout ),
	.Add3013(\Add30~13_combout ),
	.Add3014(\Add30~14_combout ),
	.Add3015(\Add30~15_combout ),
	.Add3016(\Add30~16_combout ),
	.Add3017(\Add30~17_combout ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_3 redist2_xMSB_uid146_atan2Test_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add26|auto_generated|result_int[20]~40_combout }),
	.delay_signals_0_0(\redist2_xMSB_uid146_atan2Test_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_4 redist3_xMSB_uid129_atan2Test_b_1(
	.delay_signals_0_0(\redist3_xMSB_uid129_atan2Test_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add23~56_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_5 redist4_xMSB_uid108_atan2Test_b_1(
	.delay_signals_0_0(\redist4_xMSB_uid108_atan2Test_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add19~36_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_6 redist5_xMSB_uid89_atan2Test_b_1(
	.delay_signals_0_0(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add15~30_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_7 redist6_xMSB_uid70_atan2Test_b_1(
	.delay_signals_0_0(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add11~26_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_8 redist7_xMSB_uid51_atan2Test_b_1(
	.delay_signals_0_0(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\Add7~34_combout }),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cordic_dspba_delay_9 redist8_xMSB_uid32_atan2Test_b_1(
	.xin({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout }),
	.delay_signals_0_0(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.clk(clk),
	.aclr(areset),
	.ena(en[0]));

cycloneive_lcell_comb \Add3~1 (
	.dataa(y_0),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add3~1_cout ));
defparam \Add3~1 .lut_mask = 16'h0055;
defparam \Add3~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~2 (
	.dataa(y_1),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~1_cout ),
	.combout(\Add3~2_combout ),
	.cout(\Add3~3 ));
defparam \Add3~2 .lut_mask = 16'hA5AF;
defparam \Add3~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~4 (
	.dataa(y_2),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~3 ),
	.combout(\Add3~4_combout ),
	.cout(\Add3~5 ));
defparam \Add3~4 .lut_mask = 16'h5A05;
defparam \Add3~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~6 (
	.dataa(y_3),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~5 ),
	.combout(\Add3~6_combout ),
	.cout(\Add3~7 ));
defparam \Add3~6 .lut_mask = 16'hA5AF;
defparam \Add3~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~8 (
	.dataa(y_4),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~7 ),
	.combout(\Add3~8_combout ),
	.cout(\Add3~9 ));
defparam \Add3~8 .lut_mask = 16'h5A05;
defparam \Add3~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~10 (
	.dataa(y_5),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~9 ),
	.combout(\Add3~10_combout ),
	.cout(\Add3~11 ));
defparam \Add3~10 .lut_mask = 16'hA5AF;
defparam \Add3~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~12 (
	.dataa(y_6),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~11 ),
	.combout(\Add3~12_combout ),
	.cout(\Add3~13 ));
defparam \Add3~12 .lut_mask = 16'h5A05;
defparam \Add3~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~14 (
	.dataa(y_7),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~13 ),
	.combout(\Add3~14_combout ),
	.cout(\Add3~15 ));
defparam \Add3~14 .lut_mask = 16'hA5AF;
defparam \Add3~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~16 (
	.dataa(y_8),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add3~15 ),
	.combout(\Add3~16_combout ),
	.cout(\Add3~17 ));
defparam \Add3~16 .lut_mask = 16'h5A05;
defparam \Add3~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~18 (
	.dataa(y[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add3~17 ),
	.combout(\Add3~18_combout ),
	.cout());
defparam \Add3~18 .lut_mask = 16'hA5A5;
defparam \Add3~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~1 (
	.dataa(x_0),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add1~1_cout ));
defparam \Add1~1 .lut_mask = 16'h0055;
defparam \Add1~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~2 (
	.dataa(x_1),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~1_cout ),
	.combout(\Add1~2_combout ),
	.cout(\Add1~3 ));
defparam \Add1~2 .lut_mask = 16'hA5AF;
defparam \Add1~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~4 (
	.dataa(x_2),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~3 ),
	.combout(\Add1~4_combout ),
	.cout(\Add1~5 ));
defparam \Add1~4 .lut_mask = 16'h5A05;
defparam \Add1~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~6 (
	.dataa(x_3),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~5 ),
	.combout(\Add1~6_combout ),
	.cout(\Add1~7 ));
defparam \Add1~6 .lut_mask = 16'hA5AF;
defparam \Add1~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~8 (
	.dataa(x_4),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~7 ),
	.combout(\Add1~8_combout ),
	.cout(\Add1~9 ));
defparam \Add1~8 .lut_mask = 16'h5A05;
defparam \Add1~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~10 (
	.dataa(x_5),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~9 ),
	.combout(\Add1~10_combout ),
	.cout(\Add1~11 ));
defparam \Add1~10 .lut_mask = 16'hA5AF;
defparam \Add1~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~12 (
	.dataa(x_6),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~11 ),
	.combout(\Add1~12_combout ),
	.cout(\Add1~13 ));
defparam \Add1~12 .lut_mask = 16'h5A05;
defparam \Add1~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~14 (
	.dataa(x_7),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~13 ),
	.combout(\Add1~14_combout ),
	.cout(\Add1~15 ));
defparam \Add1~14 .lut_mask = 16'hA5AF;
defparam \Add1~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~16 (
	.dataa(x_8),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add1~15 ),
	.combout(\Add1~16_combout ),
	.cout(\Add1~17 ));
defparam \Add1~16 .lut_mask = 16'h5A05;
defparam \Add1~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add1~18 (
	.dataa(x[9]),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add1~17 ),
	.combout(\Add1~18_combout ),
	.cout());
defparam \Add1~18 .lut_mask = 16'hA5A5;
defparam \Add1~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~0 (
	.dataa(y_0),
	.datab(x_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add5~0_combout ),
	.cout(\Add5~1 ));
defparam \Add5~0 .lut_mask = 16'h6688;
defparam \Add5~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add5~2 (
	.dataa(\Add3~28_combout ),
	.datab(\Add1~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~1 ),
	.combout(\Add5~2_combout ),
	.cout(\Add5~3 ));
defparam \Add5~2 .lut_mask = 16'h9617;
defparam \Add5~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~4 (
	.dataa(\Add3~27_combout ),
	.datab(\Add1~27_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~3 ),
	.combout(\Add5~4_combout ),
	.cout(\Add5~5 ));
defparam \Add5~4 .lut_mask = 16'h698E;
defparam \Add5~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~6 (
	.dataa(\Add3~26_combout ),
	.datab(\Add1~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~5 ),
	.combout(\Add5~6_combout ),
	.cout(\Add5~7 ));
defparam \Add5~6 .lut_mask = 16'h9617;
defparam \Add5~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~8 (
	.dataa(\Add3~25_combout ),
	.datab(\Add1~25_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~7 ),
	.combout(\Add5~8_combout ),
	.cout(\Add5~9 ));
defparam \Add5~8 .lut_mask = 16'h698E;
defparam \Add5~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~10 (
	.dataa(\Add3~24_combout ),
	.datab(\Add1~24_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~9 ),
	.combout(\Add5~10_combout ),
	.cout(\Add5~11 ));
defparam \Add5~10 .lut_mask = 16'h9617;
defparam \Add5~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~12 (
	.dataa(\Add3~23_combout ),
	.datab(\Add1~23_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~11 ),
	.combout(\Add5~12_combout ),
	.cout(\Add5~13 ));
defparam \Add5~12 .lut_mask = 16'h698E;
defparam \Add5~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~14 (
	.dataa(\Add3~22_combout ),
	.datab(\Add1~22_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~13 ),
	.combout(\Add5~14_combout ),
	.cout(\Add5~15 ));
defparam \Add5~14 .lut_mask = 16'h9617;
defparam \Add5~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~16 (
	.dataa(\Add3~21_combout ),
	.datab(\Add1~21_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~15 ),
	.combout(\Add5~16_combout ),
	.cout(\Add5~17 ));
defparam \Add5~16 .lut_mask = 16'h698E;
defparam \Add5~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~18 (
	.dataa(\Add3~20_combout ),
	.datab(\Add1~20_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add5~17 ),
	.combout(\Add5~18_combout ),
	.cout(\Add5~19 ));
defparam \Add5~18 .lut_mask = 16'h9617;
defparam \Add5~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add5~20 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add5~19 ),
	.combout(\Add5~20_combout ),
	.cout());
defparam \Add5~20 .lut_mask = 16'h0F0F;
defparam \Add5~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[0]~0 (
	.dataa(y_0),
	.datab(x_0),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~1 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[0]~0 .lut_mask = 16'h66BB;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[0]~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[1]~2 (
	.dataa(\Add3~28_combout ),
	.datab(\Add1~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~1 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~2_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~3 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[1]~2 .lut_mask = 16'h694D;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[2]~4 (
	.dataa(\Add3~27_combout ),
	.datab(\Add1~27_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~3 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~4_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~5 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[2]~4 .lut_mask = 16'h962B;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[3]~6 (
	.dataa(\Add3~26_combout ),
	.datab(\Add1~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~5 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~6_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~7 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[3]~6 .lut_mask = 16'h694D;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[4]~8 (
	.dataa(\Add3~25_combout ),
	.datab(\Add1~25_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~7 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~8_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~9 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[4]~8 .lut_mask = 16'h962B;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[5]~10 (
	.dataa(\Add3~24_combout ),
	.datab(\Add1~24_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~9 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~10_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~11 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[5]~10 .lut_mask = 16'h694D;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[6]~12 (
	.dataa(\Add3~23_combout ),
	.datab(\Add1~23_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~11 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~12_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~13 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[6]~12 .lut_mask = 16'h962B;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[7]~14 (
	.dataa(\Add3~22_combout ),
	.datab(\Add1~22_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~13 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~14_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~15 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[7]~14 .lut_mask = 16'h694D;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[8]~16 (
	.dataa(\Add3~21_combout ),
	.datab(\Add1~21_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~15 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~16_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~17 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[8]~16 .lut_mask = 16'h962B;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[9]~18 (
	.dataa(\Add3~20_combout ),
	.datab(\Add1~20_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~17 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~18_combout ),
	.cout(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~19 ));
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[9]~18 .lut_mask = 16'h694D;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~0 (
	.dataa(\Add5~2_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add6~0_combout ),
	.cout(\Add6~1 ));
defparam \Add6~0 .lut_mask = 16'h6688;
defparam \Add6~0 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~2 (
	.dataa(\Add5~4_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~1 ),
	.combout(\Add6~2_combout ),
	.cout(\Add6~3 ));
defparam \Add6~2 .lut_mask = 16'h9617;
defparam \Add6~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~4 (
	.dataa(\Add5~6_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~3 ),
	.combout(\Add6~4_combout ),
	.cout(\Add6~5 ));
defparam \Add6~4 .lut_mask = 16'h698E;
defparam \Add6~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~6 (
	.dataa(\Add5~8_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~5 ),
	.combout(\Add6~6_combout ),
	.cout(\Add6~7 ));
defparam \Add6~6 .lut_mask = 16'h9617;
defparam \Add6~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~8 (
	.dataa(\Add5~10_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~7 ),
	.combout(\Add6~8_combout ),
	.cout(\Add6~9 ));
defparam \Add6~8 .lut_mask = 16'h698E;
defparam \Add6~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~10 (
	.dataa(\Add5~12_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~9 ),
	.combout(\Add6~10_combout ),
	.cout(\Add6~11 ));
defparam \Add6~10 .lut_mask = 16'h9617;
defparam \Add6~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~12 (
	.dataa(\Add5~14_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~11 ),
	.combout(\Add6~12_combout ),
	.cout(\Add6~13 ));
defparam \Add6~12 .lut_mask = 16'h698E;
defparam \Add6~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~14 (
	.dataa(\Add5~16_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~13 ),
	.combout(\Add6~14_combout ),
	.cout(\Add6~15 ));
defparam \Add6~14 .lut_mask = 16'h9617;
defparam \Add6~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~16 (
	.dataa(\Add5~18_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~16_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~15 ),
	.combout(\Add6~16_combout ),
	.cout(\Add6~17 ));
defparam \Add6~16 .lut_mask = 16'h698E;
defparam \Add6~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~18 (
	.dataa(\Add5~20_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~18_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add6~17 ),
	.combout(\Add6~18_combout ),
	.cout(\Add6~19 ));
defparam \Add6~18 .lut_mask = 16'h9617;
defparam \Add6~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~1 (
	.dataa(\Add5~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add7~1_cout ));
defparam \Add7~1 .lut_mask = 16'h0055;
defparam \Add7~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~2 (
	.dataa(\Add5~2_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~1_cout ),
	.combout(\Add7~2_combout ),
	.cout(\Add7~3 ));
defparam \Add7~2 .lut_mask = 16'h692B;
defparam \Add7~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~4 (
	.dataa(\Add5~4_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~3 ),
	.combout(\Add7~4_combout ),
	.cout(\Add7~5 ));
defparam \Add7~4 .lut_mask = 16'h964D;
defparam \Add7~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~6 (
	.dataa(\Add5~6_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~5 ),
	.combout(\Add7~6_combout ),
	.cout(\Add7~7 ));
defparam \Add7~6 .lut_mask = 16'h692B;
defparam \Add7~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~8 (
	.dataa(\Add5~8_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~7 ),
	.combout(\Add7~8_combout ),
	.cout(\Add7~9 ));
defparam \Add7~8 .lut_mask = 16'h964D;
defparam \Add7~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~10 (
	.dataa(\Add5~10_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~9 ),
	.combout(\Add7~10_combout ),
	.cout(\Add7~11 ));
defparam \Add7~10 .lut_mask = 16'h692B;
defparam \Add7~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~12 (
	.dataa(\Add5~12_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~11 ),
	.combout(\Add7~12_combout ),
	.cout(\Add7~13 ));
defparam \Add7~12 .lut_mask = 16'h964D;
defparam \Add7~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~14 (
	.dataa(\Add5~14_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~13 ),
	.combout(\Add7~14_combout ),
	.cout(\Add7~15 ));
defparam \Add7~14 .lut_mask = 16'h692B;
defparam \Add7~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~16 (
	.dataa(\Add5~16_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~15 ),
	.combout(\Add7~16_combout ),
	.cout(\Add7~17 ));
defparam \Add7~16 .lut_mask = 16'h964D;
defparam \Add7~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~18 (
	.dataa(\Add5~18_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~16_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~17 ),
	.combout(\Add7~18_combout ),
	.cout(\Add7~19 ));
defparam \Add7~18 .lut_mask = 16'h692B;
defparam \Add7~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~20 (
	.dataa(\Add5~20_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~18_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add7~19 ),
	.combout(\Add7~20_combout ),
	.cout(\Add7~21 ));
defparam \Add7~20 .lut_mask = 16'h964D;
defparam \Add7~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \xip1E_2sumAHighB_uid40_atan2Test_b[10]~20 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~19 ),
	.combout(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cout());
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[10]~20 .lut_mask = 16'hF0F0;
defparam \xip1E_2sumAHighB_uid40_atan2Test_b[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~1 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add9~1_cout ));
defparam \Add9~1 .lut_mask = 16'h0055;
defparam \Add9~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~2 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~2_combout ),
	.datab(\Add5~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~1_cout ),
	.combout(\Add9~2_combout ),
	.cout(\Add9~3 ));
defparam \Add9~2 .lut_mask = 16'h692B;
defparam \Add9~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~4 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~4_combout ),
	.datab(\Add5~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~3 ),
	.combout(\Add9~4_combout ),
	.cout(\Add9~5 ));
defparam \Add9~4 .lut_mask = 16'h964D;
defparam \Add9~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~6 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~6_combout ),
	.datab(\Add5~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~5 ),
	.combout(\Add9~6_combout ),
	.cout(\Add9~7 ));
defparam \Add9~6 .lut_mask = 16'h692B;
defparam \Add9~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~8 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~8_combout ),
	.datab(\Add5~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~7 ),
	.combout(\Add9~8_combout ),
	.cout(\Add9~9 ));
defparam \Add9~8 .lut_mask = 16'h964D;
defparam \Add9~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~10 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~10_combout ),
	.datab(\Add5~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~9 ),
	.combout(\Add9~10_combout ),
	.cout(\Add9~11 ));
defparam \Add9~10 .lut_mask = 16'h692B;
defparam \Add9~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~12 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~12_combout ),
	.datab(\Add5~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~11 ),
	.combout(\Add9~12_combout ),
	.cout(\Add9~13 ));
defparam \Add9~12 .lut_mask = 16'h964D;
defparam \Add9~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~14 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~14_combout ),
	.datab(\Add5~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~13 ),
	.combout(\Add9~14_combout ),
	.cout(\Add9~15 ));
defparam \Add9~14 .lut_mask = 16'h692B;
defparam \Add9~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~16 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~16_combout ),
	.datab(\Add5~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~15 ),
	.combout(\Add9~16_combout ),
	.cout(\Add9~17 ));
defparam \Add9~16 .lut_mask = 16'h964D;
defparam \Add9~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~18 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~18_combout ),
	.datab(\Add5~16_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~17 ),
	.combout(\Add9~18_combout ),
	.cout(\Add9~19 ));
defparam \Add9~18 .lut_mask = 16'h692B;
defparam \Add9~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~20 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.datab(\Add5~18_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add9~19 ),
	.combout(\Add9~20_combout ),
	.cout(\Add9~21 ));
defparam \Add9~20 .lut_mask = 16'h964D;
defparam \Add9~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add9~22 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.datab(\Add5~20_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add9~21 ),
	.combout(\Add9~22_combout ),
	.cout());
defparam \Add9~22 .lut_mask = 16'h6969;
defparam \Add9~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~0 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[1]~2_combout ),
	.datab(\Add5~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add8~0_combout ),
	.cout(\Add8~1 ));
defparam \Add8~0 .lut_mask = 16'h6688;
defparam \Add8~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add8~2 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[2]~4_combout ),
	.datab(\Add5~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~1 ),
	.combout(\Add8~2_combout ),
	.cout(\Add8~3 ));
defparam \Add8~2 .lut_mask = 16'h9617;
defparam \Add8~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~4 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[3]~6_combout ),
	.datab(\Add5~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~3 ),
	.combout(\Add8~4_combout ),
	.cout(\Add8~5 ));
defparam \Add8~4 .lut_mask = 16'h698E;
defparam \Add8~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~6 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[4]~8_combout ),
	.datab(\Add5~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~5 ),
	.combout(\Add8~6_combout ),
	.cout(\Add8~7 ));
defparam \Add8~6 .lut_mask = 16'h9617;
defparam \Add8~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~8 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[5]~10_combout ),
	.datab(\Add5~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~7 ),
	.combout(\Add8~8_combout ),
	.cout(\Add8~9 ));
defparam \Add8~8 .lut_mask = 16'h698E;
defparam \Add8~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~10 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[6]~12_combout ),
	.datab(\Add5~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~9 ),
	.combout(\Add8~10_combout ),
	.cout(\Add8~11 ));
defparam \Add8~10 .lut_mask = 16'h9617;
defparam \Add8~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~12 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[7]~14_combout ),
	.datab(\Add5~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~11 ),
	.combout(\Add8~12_combout ),
	.cout(\Add8~13 ));
defparam \Add8~12 .lut_mask = 16'h698E;
defparam \Add8~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~14 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[8]~16_combout ),
	.datab(\Add5~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~13 ),
	.combout(\Add8~14_combout ),
	.cout(\Add8~15 ));
defparam \Add8~14 .lut_mask = 16'h9617;
defparam \Add8~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~16 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[9]~18_combout ),
	.datab(\Add5~16_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~15 ),
	.combout(\Add8~16_combout ),
	.cout(\Add8~17 ));
defparam \Add8~16 .lut_mask = 16'h698E;
defparam \Add8~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~18 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.datab(\Add5~18_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add8~17 ),
	.combout(\Add8~18_combout ),
	.cout(\Add8~19 ));
defparam \Add8~18 .lut_mask = 16'h9617;
defparam \Add8~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add8~20 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.datab(\Add5~20_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add8~19 ),
	.combout(\Add8~20_combout ),
	.cout());
defparam \Add8~20 .lut_mask = 16'h6969;
defparam \Add8~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~0 (
	.dataa(\Add5~0_combout ),
	.datab(\Add9~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add10~0_combout ),
	.cout(\Add10~1 ));
defparam \Add10~0 .lut_mask = 16'h6688;
defparam \Add10~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add10~2 (
	.dataa(\Add7~31_combout ),
	.datab(\Add9~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~1 ),
	.combout(\Add10~2_combout ),
	.cout(\Add10~3 ));
defparam \Add10~2 .lut_mask = 16'h9617;
defparam \Add10~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~4 (
	.dataa(\Add7~30_combout ),
	.datab(\Add9~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~3 ),
	.combout(\Add10~4_combout ),
	.cout(\Add10~5 ));
defparam \Add10~4 .lut_mask = 16'h698E;
defparam \Add10~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~6 (
	.dataa(\Add7~29_combout ),
	.datab(\Add9~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~5 ),
	.combout(\Add10~6_combout ),
	.cout(\Add10~7 ));
defparam \Add10~6 .lut_mask = 16'h9617;
defparam \Add10~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~8 (
	.dataa(\Add7~28_combout ),
	.datab(\Add9~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~7 ),
	.combout(\Add10~8_combout ),
	.cout(\Add10~9 ));
defparam \Add10~8 .lut_mask = 16'h698E;
defparam \Add10~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~10 (
	.dataa(\Add7~27_combout ),
	.datab(\Add9~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~9 ),
	.combout(\Add10~10_combout ),
	.cout(\Add10~11 ));
defparam \Add10~10 .lut_mask = 16'h9617;
defparam \Add10~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~12 (
	.dataa(\Add7~26_combout ),
	.datab(\Add9~27_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~11 ),
	.combout(\Add10~12_combout ),
	.cout(\Add10~13 ));
defparam \Add10~12 .lut_mask = 16'h698E;
defparam \Add10~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~14 (
	.dataa(\Add7~25_combout ),
	.datab(\Add9~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~13 ),
	.combout(\Add10~14_combout ),
	.cout(\Add10~15 ));
defparam \Add10~14 .lut_mask = 16'h9617;
defparam \Add10~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~16 (
	.dataa(\Add7~24_combout ),
	.datab(\Add9~25_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~15 ),
	.combout(\Add10~16_combout ),
	.cout(\Add10~17 ));
defparam \Add10~16 .lut_mask = 16'h698E;
defparam \Add10~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~18 (
	.dataa(\Add7~23_combout ),
	.datab(\Add9~24_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add10~17 ),
	.combout(\Add10~18_combout ),
	.cout(\Add10~19 ));
defparam \Add10~18 .lut_mask = 16'h9617;
defparam \Add10~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add10~20 (
	.dataa(\Add7~22_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add10~19 ),
	.combout(\Add10~20_combout ),
	.cout());
defparam \Add10~20 .lut_mask = 16'hA5A5;
defparam \Add10~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~1 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add11~1_cout ));
defparam \Add11~1 .lut_mask = 16'h0055;
defparam \Add11~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~2 (
	.dataa(\Add9~34_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~1_cout ),
	.combout(\Add11~2_combout ),
	.cout(\Add11~3 ));
defparam \Add11~2 .lut_mask = 16'hA5AF;
defparam \Add11~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~4 (
	.dataa(\Add5~0_combout ),
	.datab(\Add9~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~3 ),
	.combout(\Add11~4_combout ),
	.cout(\Add11~5 ));
defparam \Add11~4 .lut_mask = 16'h962B;
defparam \Add11~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~6 (
	.dataa(\Add7~31_combout ),
	.datab(\Add9~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~5 ),
	.combout(\Add11~6_combout ),
	.cout(\Add11~7 ));
defparam \Add11~6 .lut_mask = 16'h694D;
defparam \Add11~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~8 (
	.dataa(\Add7~30_combout ),
	.datab(\Add9~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~7 ),
	.combout(\Add11~8_combout ),
	.cout(\Add11~9 ));
defparam \Add11~8 .lut_mask = 16'h962B;
defparam \Add11~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~10 (
	.dataa(\Add7~29_combout ),
	.datab(\Add9~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~9 ),
	.combout(\Add11~10_combout ),
	.cout(\Add11~11 ));
defparam \Add11~10 .lut_mask = 16'h694D;
defparam \Add11~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~12 (
	.dataa(\Add7~28_combout ),
	.datab(\Add9~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~11 ),
	.combout(\Add11~12_combout ),
	.cout(\Add11~13 ));
defparam \Add11~12 .lut_mask = 16'h962B;
defparam \Add11~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~14 (
	.dataa(\Add7~27_combout ),
	.datab(\Add9~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~13 ),
	.combout(\Add11~14_combout ),
	.cout(\Add11~15 ));
defparam \Add11~14 .lut_mask = 16'h694D;
defparam \Add11~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~16 (
	.dataa(\Add7~26_combout ),
	.datab(\Add9~27_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~15 ),
	.combout(\Add11~16_combout ),
	.cout(\Add11~17 ));
defparam \Add11~16 .lut_mask = 16'h962B;
defparam \Add11~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~18 (
	.dataa(\Add7~25_combout ),
	.datab(\Add9~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~17 ),
	.combout(\Add11~18_combout ),
	.cout(\Add11~19 ));
defparam \Add11~18 .lut_mask = 16'h694D;
defparam \Add11~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~20 (
	.dataa(\Add7~24_combout ),
	.datab(\Add9~25_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~19 ),
	.combout(\Add11~20_combout ),
	.cout(\Add11~21 ));
defparam \Add11~20 .lut_mask = 16'h962B;
defparam \Add11~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~22 (
	.dataa(\Add7~23_combout ),
	.datab(\Add9~24_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add11~21 ),
	.combout(\Add11~22_combout ),
	.cout(\Add11~23 ));
defparam \Add11~22 .lut_mask = 16'h694D;
defparam \Add11~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add11~24 (
	.dataa(\Add7~22_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add11~23 ),
	.combout(\Add11~24_combout ),
	.cout());
defparam \Add11~24 .lut_mask = 16'h5A5A;
defparam \Add11~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add6~20 (
	.dataa(gnd),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add6~19 ),
	.combout(\Add6~20_combout ),
	.cout());
defparam \Add6~20 .lut_mask = 16'hC3C3;
defparam \Add6~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add7~32 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add7~21 ),
	.combout(\Add7~32_combout ),
	.cout());
defparam \Add7~32 .lut_mask = 16'hA5A5;
defparam \Add7~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~1 (
	.dataa(\Add5~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add13~1_cout ));
defparam \Add13~1 .lut_mask = 16'h0055;
defparam \Add13~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~2 (
	.dataa(\Add7~31_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~1_cout ),
	.combout(\Add13~2_combout ),
	.cout(\Add13~3 ));
defparam \Add13~2 .lut_mask = 16'hA5AF;
defparam \Add13~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~4 (
	.dataa(\Add7~30_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~3 ),
	.combout(\Add13~4_combout ),
	.cout(\Add13~5 ));
defparam \Add13~4 .lut_mask = 16'h964D;
defparam \Add13~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~6 (
	.dataa(\Add7~29_combout ),
	.datab(\Add9~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~5 ),
	.combout(\Add13~6_combout ),
	.cout(\Add13~7 ));
defparam \Add13~6 .lut_mask = 16'h692B;
defparam \Add13~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~8 (
	.dataa(\Add7~28_combout ),
	.datab(\Add9~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~7 ),
	.combout(\Add13~8_combout ),
	.cout(\Add13~9 ));
defparam \Add13~8 .lut_mask = 16'h964D;
defparam \Add13~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~10 (
	.dataa(\Add7~27_combout ),
	.datab(\Add9~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~9 ),
	.combout(\Add13~10_combout ),
	.cout(\Add13~11 ));
defparam \Add13~10 .lut_mask = 16'h692B;
defparam \Add13~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~12 (
	.dataa(\Add7~26_combout ),
	.datab(\Add9~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~11 ),
	.combout(\Add13~12_combout ),
	.cout(\Add13~13 ));
defparam \Add13~12 .lut_mask = 16'h964D;
defparam \Add13~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~14 (
	.dataa(\Add7~25_combout ),
	.datab(\Add9~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~13 ),
	.combout(\Add13~14_combout ),
	.cout(\Add13~15 ));
defparam \Add13~14 .lut_mask = 16'h692B;
defparam \Add13~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~16 (
	.dataa(\Add7~24_combout ),
	.datab(\Add9~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~15 ),
	.combout(\Add13~16_combout ),
	.cout(\Add13~17 ));
defparam \Add13~16 .lut_mask = 16'h964D;
defparam \Add13~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~18 (
	.dataa(\Add7~23_combout ),
	.datab(\Add9~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~17 ),
	.combout(\Add13~18_combout ),
	.cout(\Add13~19 ));
defparam \Add13~18 .lut_mask = 16'h692B;
defparam \Add13~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~20 (
	.dataa(\Add7~22_combout ),
	.datab(\Add9~27_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~19 ),
	.combout(\Add13~20_combout ),
	.cout(\Add13~21 ));
defparam \Add13~20 .lut_mask = 16'h964D;
defparam \Add13~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~22 (
	.dataa(\Add7~34_combout ),
	.datab(\Add9~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~21 ),
	.combout(\Add13~22_combout ),
	.cout(\Add13~23 ));
defparam \Add13~22 .lut_mask = 16'h692B;
defparam \Add13~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~24 (
	.dataa(\Add7~34_combout ),
	.datab(\Add9~25_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add13~23 ),
	.combout(\Add13~24_combout ),
	.cout(\Add13~25 ));
defparam \Add13~24 .lut_mask = 16'h964D;
defparam \Add13~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add13~26 (
	.dataa(\Add7~34_combout ),
	.datab(\Add9~24_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add13~25 ),
	.combout(\Add13~26_combout ),
	.cout());
defparam \Add13~26 .lut_mask = 16'h6969;
defparam \Add13~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~0 (
	.dataa(\Add7~30_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add12~0_combout ),
	.cout(\Add12~1 ));
defparam \Add12~0 .lut_mask = 16'h6688;
defparam \Add12~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add12~2 (
	.dataa(\Add7~29_combout ),
	.datab(\Add9~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~1 ),
	.combout(\Add12~2_combout ),
	.cout(\Add12~3 ));
defparam \Add12~2 .lut_mask = 16'h9617;
defparam \Add12~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~4 (
	.dataa(\Add7~28_combout ),
	.datab(\Add9~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~3 ),
	.combout(\Add12~4_combout ),
	.cout(\Add12~5 ));
defparam \Add12~4 .lut_mask = 16'h698E;
defparam \Add12~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~6 (
	.dataa(\Add7~27_combout ),
	.datab(\Add9~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~5 ),
	.combout(\Add12~6_combout ),
	.cout(\Add12~7 ));
defparam \Add12~6 .lut_mask = 16'h9617;
defparam \Add12~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~8 (
	.dataa(\Add7~26_combout ),
	.datab(\Add9~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~7 ),
	.combout(\Add12~8_combout ),
	.cout(\Add12~9 ));
defparam \Add12~8 .lut_mask = 16'h698E;
defparam \Add12~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~10 (
	.dataa(\Add7~25_combout ),
	.datab(\Add9~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~9 ),
	.combout(\Add12~10_combout ),
	.cout(\Add12~11 ));
defparam \Add12~10 .lut_mask = 16'h9617;
defparam \Add12~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~12 (
	.dataa(\Add7~24_combout ),
	.datab(\Add9~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~11 ),
	.combout(\Add12~12_combout ),
	.cout(\Add12~13 ));
defparam \Add12~12 .lut_mask = 16'h698E;
defparam \Add12~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~14 (
	.dataa(\Add7~23_combout ),
	.datab(\Add9~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~13 ),
	.combout(\Add12~14_combout ),
	.cout(\Add12~15 ));
defparam \Add12~14 .lut_mask = 16'h9617;
defparam \Add12~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~16 (
	.dataa(\Add7~22_combout ),
	.datab(\Add9~27_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~15 ),
	.combout(\Add12~16_combout ),
	.cout(\Add12~17 ));
defparam \Add12~16 .lut_mask = 16'h698E;
defparam \Add12~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~18 (
	.dataa(\Add7~34_combout ),
	.datab(\Add9~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~17 ),
	.combout(\Add12~18_combout ),
	.cout(\Add12~19 ));
defparam \Add12~18 .lut_mask = 16'h9617;
defparam \Add12~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~20 (
	.dataa(\Add7~34_combout ),
	.datab(\Add9~25_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add12~19 ),
	.combout(\Add12~20_combout ),
	.cout(\Add12~21 ));
defparam \Add12~20 .lut_mask = 16'h698E;
defparam \Add12~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add12~22 (
	.dataa(\Add7~34_combout ),
	.datab(\Add9~24_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add12~21 ),
	.combout(\Add12~22_combout ),
	.cout());
defparam \Add12~22 .lut_mask = 16'h9696;
defparam \Add12~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~0 (
	.dataa(\Add13~38_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add14~0_combout ),
	.cout(\Add14~1 ));
defparam \Add14~0 .lut_mask = 16'h6688;
defparam \Add14~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add14~2 (
	.dataa(\Add13~37_combout ),
	.datab(\Add11~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~1 ),
	.combout(\Add14~2_combout ),
	.cout(\Add14~3 ));
defparam \Add14~2 .lut_mask = 16'h9617;
defparam \Add14~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~4 (
	.dataa(\Add13~36_combout ),
	.datab(\Add11~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~3 ),
	.combout(\Add14~4_combout ),
	.cout(\Add14~5 ));
defparam \Add14~4 .lut_mask = 16'h698E;
defparam \Add14~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~6 (
	.dataa(\Add13~35_combout ),
	.datab(\Add11~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~5 ),
	.combout(\Add14~6_combout ),
	.cout(\Add14~7 ));
defparam \Add14~6 .lut_mask = 16'h9617;
defparam \Add14~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~8 (
	.dataa(\Add13~34_combout ),
	.datab(\Add11~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~7 ),
	.combout(\Add14~8_combout ),
	.cout(\Add14~9 ));
defparam \Add14~8 .lut_mask = 16'h698E;
defparam \Add14~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~10 (
	.dataa(\Add13~33_combout ),
	.datab(\Add11~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~9 ),
	.combout(\Add14~10_combout ),
	.cout(\Add14~11 ));
defparam \Add14~10 .lut_mask = 16'h9617;
defparam \Add14~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~12 (
	.dataa(\Add13~32_combout ),
	.datab(\Add11~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~11 ),
	.combout(\Add14~12_combout ),
	.cout(\Add14~13 ));
defparam \Add14~12 .lut_mask = 16'h698E;
defparam \Add14~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~14 (
	.dataa(\Add13~31_combout ),
	.datab(\Add11~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~13 ),
	.combout(\Add14~14_combout ),
	.cout(\Add14~15 ));
defparam \Add14~14 .lut_mask = 16'h9617;
defparam \Add14~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~16 (
	.dataa(\Add13~30_combout ),
	.datab(\Add11~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~15 ),
	.combout(\Add14~16_combout ),
	.cout(\Add14~17 ));
defparam \Add14~16 .lut_mask = 16'h698E;
defparam \Add14~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~18 (
	.dataa(\Add13~29_combout ),
	.datab(\Add11~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~17 ),
	.combout(\Add14~18_combout ),
	.cout(\Add14~19 ));
defparam \Add14~18 .lut_mask = 16'h9617;
defparam \Add14~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~20 (
	.dataa(\Add13~28_combout ),
	.datab(\Add11~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add14~19 ),
	.combout(\Add14~20_combout ),
	.cout(\Add14~21 ));
defparam \Add14~20 .lut_mask = 16'h698E;
defparam \Add14~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add14~22 (
	.dataa(\Add11~27_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add14~21 ),
	.combout(\Add14~22_combout ),
	.cout());
defparam \Add14~22 .lut_mask = 16'h5A5A;
defparam \Add14~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~1 (
	.dataa(\Add5~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add15~1_cout ));
defparam \Add15~1 .lut_mask = 16'h0055;
defparam \Add15~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~2 (
	.dataa(\Add13~40_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~1_cout ),
	.combout(\Add15~2_combout ),
	.cout(\Add15~3 ));
defparam \Add15~2 .lut_mask = 16'hA5AF;
defparam \Add15~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~4 (
	.dataa(\Add13~39_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~3 ),
	.combout(\Add15~4_combout ),
	.cout(\Add15~5 ));
defparam \Add15~4 .lut_mask = 16'h5A05;
defparam \Add15~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~6 (
	.dataa(\Add13~38_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~5 ),
	.combout(\Add15~6_combout ),
	.cout(\Add15~7 ));
defparam \Add15~6 .lut_mask = 16'h692B;
defparam \Add15~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~8 (
	.dataa(\Add13~37_combout ),
	.datab(\Add11~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~7 ),
	.combout(\Add15~8_combout ),
	.cout(\Add15~9 ));
defparam \Add15~8 .lut_mask = 16'h964D;
defparam \Add15~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~10 (
	.dataa(\Add13~36_combout ),
	.datab(\Add11~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~9 ),
	.combout(\Add15~10_combout ),
	.cout(\Add15~11 ));
defparam \Add15~10 .lut_mask = 16'h692B;
defparam \Add15~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~12 (
	.dataa(\Add13~35_combout ),
	.datab(\Add11~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~11 ),
	.combout(\Add15~12_combout ),
	.cout(\Add15~13 ));
defparam \Add15~12 .lut_mask = 16'h964D;
defparam \Add15~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~14 (
	.dataa(\Add13~34_combout ),
	.datab(\Add11~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~13 ),
	.combout(\Add15~14_combout ),
	.cout(\Add15~15 ));
defparam \Add15~14 .lut_mask = 16'h692B;
defparam \Add15~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~16 (
	.dataa(\Add13~33_combout ),
	.datab(\Add11~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~15 ),
	.combout(\Add15~16_combout ),
	.cout(\Add15~17 ));
defparam \Add15~16 .lut_mask = 16'h964D;
defparam \Add15~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~18 (
	.dataa(\Add13~32_combout ),
	.datab(\Add11~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~17 ),
	.combout(\Add15~18_combout ),
	.cout(\Add15~19 ));
defparam \Add15~18 .lut_mask = 16'h692B;
defparam \Add15~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~20 (
	.dataa(\Add13~31_combout ),
	.datab(\Add11~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~19 ),
	.combout(\Add15~20_combout ),
	.cout(\Add15~21 ));
defparam \Add15~20 .lut_mask = 16'h964D;
defparam \Add15~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~22 (
	.dataa(\Add13~30_combout ),
	.datab(\Add11~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~21 ),
	.combout(\Add15~22_combout ),
	.cout(\Add15~23 ));
defparam \Add15~22 .lut_mask = 16'h692B;
defparam \Add15~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~24 (
	.dataa(\Add13~29_combout ),
	.datab(\Add11~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~23 ),
	.combout(\Add15~24_combout ),
	.cout(\Add15~25 ));
defparam \Add15~24 .lut_mask = 16'h964D;
defparam \Add15~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~26 (
	.dataa(\Add13~28_combout ),
	.datab(\Add11~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add15~25 ),
	.combout(\Add15~26_combout ),
	.cout(\Add15~27 ));
defparam \Add15~26 .lut_mask = 16'h692B;
defparam \Add15~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add15~28 (
	.dataa(\Add11~27_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add15~27 ),
	.combout(\Add15~28_combout ),
	.cout());
defparam \Add15~28 .lut_mask = 16'h5A5A;
defparam \Add15~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~1 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add17~1_cout ));
defparam \Add17~1 .lut_mask = 16'h0055;
defparam \Add17~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~2 (
	.dataa(\Add11~37_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~1_cout ),
	.combout(\Add17~2_combout ),
	.cout(\Add17~3 ));
defparam \Add17~2 .lut_mask = 16'hA5AF;
defparam \Add17~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~4 (
	.dataa(\Add11~36_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~3 ),
	.combout(\Add17~4_combout ),
	.cout(\Add17~5 ));
defparam \Add17~4 .lut_mask = 16'h5A05;
defparam \Add17~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~6 (
	.dataa(\Add11~35_combout ),
	.datab(\Add5~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~5 ),
	.combout(\Add17~6_combout ),
	.cout(\Add17~7 ));
defparam \Add17~6 .lut_mask = 16'h692B;
defparam \Add17~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~8 (
	.dataa(\Add11~34_combout ),
	.datab(\Add13~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~7 ),
	.combout(\Add17~8_combout ),
	.cout(\Add17~9 ));
defparam \Add17~8 .lut_mask = 16'h964D;
defparam \Add17~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~10 (
	.dataa(\Add11~33_combout ),
	.datab(\Add13~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~9 ),
	.combout(\Add17~10_combout ),
	.cout(\Add17~11 ));
defparam \Add17~10 .lut_mask = 16'h692B;
defparam \Add17~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~12 (
	.dataa(\Add11~32_combout ),
	.datab(\Add13~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~11 ),
	.combout(\Add17~12_combout ),
	.cout(\Add17~13 ));
defparam \Add17~12 .lut_mask = 16'h964D;
defparam \Add17~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~14 (
	.dataa(\Add11~31_combout ),
	.datab(\Add13~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~13 ),
	.combout(\Add17~14_combout ),
	.cout(\Add17~15 ));
defparam \Add17~14 .lut_mask = 16'h692B;
defparam \Add17~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~16 (
	.dataa(\Add11~30_combout ),
	.datab(\Add13~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~15 ),
	.combout(\Add17~16_combout ),
	.cout(\Add17~17 ));
defparam \Add17~16 .lut_mask = 16'h964D;
defparam \Add17~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~18 (
	.dataa(\Add11~29_combout ),
	.datab(\Add13~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~17 ),
	.combout(\Add17~18_combout ),
	.cout(\Add17~19 ));
defparam \Add17~18 .lut_mask = 16'h692B;
defparam \Add17~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~20 (
	.dataa(\Add11~28_combout ),
	.datab(\Add13~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~19 ),
	.combout(\Add17~20_combout ),
	.cout(\Add17~21 ));
defparam \Add17~20 .lut_mask = 16'h964D;
defparam \Add17~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~22 (
	.dataa(\Add11~27_combout ),
	.datab(\Add13~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~21 ),
	.combout(\Add17~22_combout ),
	.cout(\Add17~23 ));
defparam \Add17~22 .lut_mask = 16'h692B;
defparam \Add17~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~24 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~23 ),
	.combout(\Add17~24_combout ),
	.cout(\Add17~25 ));
defparam \Add17~24 .lut_mask = 16'h964D;
defparam \Add17~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~26 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~25 ),
	.combout(\Add17~26_combout ),
	.cout(\Add17~27 ));
defparam \Add17~26 .lut_mask = 16'h692B;
defparam \Add17~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~28 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~27 ),
	.combout(\Add17~28_combout ),
	.cout(\Add17~29 ));
defparam \Add17~28 .lut_mask = 16'h964D;
defparam \Add17~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~30 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add17~29 ),
	.combout(\Add17~30_combout ),
	.cout(\Add17~31 ));
defparam \Add17~30 .lut_mask = 16'h692B;
defparam \Add17~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add17~32 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~28_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add17~31 ),
	.combout(\Add17~32_combout ),
	.cout());
defparam \Add17~32 .lut_mask = 16'h9696;
defparam \Add17~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~0 (
	.dataa(\Add11~35_combout ),
	.datab(\Add5~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add16~0_combout ),
	.cout(\Add16~1 ));
defparam \Add16~0 .lut_mask = 16'h6688;
defparam \Add16~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add16~2 (
	.dataa(\Add11~34_combout ),
	.datab(\Add13~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~1 ),
	.combout(\Add16~2_combout ),
	.cout(\Add16~3 ));
defparam \Add16~2 .lut_mask = 16'h9617;
defparam \Add16~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~4 (
	.dataa(\Add11~33_combout ),
	.datab(\Add13~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~3 ),
	.combout(\Add16~4_combout ),
	.cout(\Add16~5 ));
defparam \Add16~4 .lut_mask = 16'h698E;
defparam \Add16~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~6 (
	.dataa(\Add11~32_combout ),
	.datab(\Add13~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~5 ),
	.combout(\Add16~6_combout ),
	.cout(\Add16~7 ));
defparam \Add16~6 .lut_mask = 16'h9617;
defparam \Add16~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~8 (
	.dataa(\Add11~31_combout ),
	.datab(\Add13~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~7 ),
	.combout(\Add16~8_combout ),
	.cout(\Add16~9 ));
defparam \Add16~8 .lut_mask = 16'h698E;
defparam \Add16~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~10 (
	.dataa(\Add11~30_combout ),
	.datab(\Add13~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~9 ),
	.combout(\Add16~10_combout ),
	.cout(\Add16~11 ));
defparam \Add16~10 .lut_mask = 16'h9617;
defparam \Add16~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~12 (
	.dataa(\Add11~29_combout ),
	.datab(\Add13~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~11 ),
	.combout(\Add16~12_combout ),
	.cout(\Add16~13 ));
defparam \Add16~12 .lut_mask = 16'h698E;
defparam \Add16~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~14 (
	.dataa(\Add11~28_combout ),
	.datab(\Add13~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~13 ),
	.combout(\Add16~14_combout ),
	.cout(\Add16~15 ));
defparam \Add16~14 .lut_mask = 16'h9617;
defparam \Add16~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~16 (
	.dataa(\Add11~27_combout ),
	.datab(\Add13~33_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~15 ),
	.combout(\Add16~16_combout ),
	.cout(\Add16~17 ));
defparam \Add16~16 .lut_mask = 16'h698E;
defparam \Add16~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~18 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~17 ),
	.combout(\Add16~18_combout ),
	.cout(\Add16~19 ));
defparam \Add16~18 .lut_mask = 16'h9617;
defparam \Add16~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~20 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~31_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~19 ),
	.combout(\Add16~20_combout ),
	.cout(\Add16~21 ));
defparam \Add16~20 .lut_mask = 16'h698E;
defparam \Add16~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~22 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~21 ),
	.combout(\Add16~22_combout ),
	.cout(\Add16~23 ));
defparam \Add16~22 .lut_mask = 16'h9617;
defparam \Add16~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~24 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~29_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add16~23 ),
	.combout(\Add16~24_combout ),
	.cout(\Add16~25 ));
defparam \Add16~24 .lut_mask = 16'h698E;
defparam \Add16~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add16~26 (
	.dataa(\Add11~26_combout ),
	.datab(\Add13~28_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add16~25 ),
	.combout(\Add16~26_combout ),
	.cout());
defparam \Add16~26 .lut_mask = 16'h9696;
defparam \Add16~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~0 (
	.dataa(\Add5~0_combout ),
	.datab(\Add17~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add18~0_combout ),
	.cout(\Add18~1 ));
defparam \Add18~0 .lut_mask = 16'h6688;
defparam \Add18~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add18~2 (
	.dataa(\Add15~43_combout ),
	.datab(\Add17~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~1 ),
	.combout(\Add18~2_combout ),
	.cout(\Add18~3 ));
defparam \Add18~2 .lut_mask = 16'h9617;
defparam \Add18~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~4 (
	.dataa(\Add15~42_combout ),
	.datab(\Add17~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~3 ),
	.combout(\Add18~4_combout ),
	.cout(\Add18~5 ));
defparam \Add18~4 .lut_mask = 16'h698E;
defparam \Add18~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~6 (
	.dataa(\Add15~41_combout ),
	.datab(\Add17~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~5 ),
	.combout(\Add18~6_combout ),
	.cout(\Add18~7 ));
defparam \Add18~6 .lut_mask = 16'h9617;
defparam \Add18~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~8 (
	.dataa(\Add15~40_combout ),
	.datab(\Add17~42_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~7 ),
	.combout(\Add18~8_combout ),
	.cout(\Add18~9 ));
defparam \Add18~8 .lut_mask = 16'h698E;
defparam \Add18~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~10 (
	.dataa(\Add15~39_combout ),
	.datab(\Add17~41_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~9 ),
	.combout(\Add18~10_combout ),
	.cout(\Add18~11 ));
defparam \Add18~10 .lut_mask = 16'h9617;
defparam \Add18~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~12 (
	.dataa(\Add15~38_combout ),
	.datab(\Add17~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~11 ),
	.combout(\Add18~12_combout ),
	.cout(\Add18~13 ));
defparam \Add18~12 .lut_mask = 16'h698E;
defparam \Add18~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~14 (
	.dataa(\Add15~37_combout ),
	.datab(\Add17~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~13 ),
	.combout(\Add18~14_combout ),
	.cout(\Add18~15 ));
defparam \Add18~14 .lut_mask = 16'h9617;
defparam \Add18~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~16 (
	.dataa(\Add15~36_combout ),
	.datab(\Add17~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~15 ),
	.combout(\Add18~16_combout ),
	.cout(\Add18~17 ));
defparam \Add18~16 .lut_mask = 16'h698E;
defparam \Add18~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~18 (
	.dataa(\Add15~35_combout ),
	.datab(\Add17~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~17 ),
	.combout(\Add18~18_combout ),
	.cout(\Add18~19 ));
defparam \Add18~18 .lut_mask = 16'h9617;
defparam \Add18~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~20 (
	.dataa(\Add15~34_combout ),
	.datab(\Add17~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~19 ),
	.combout(\Add18~20_combout ),
	.cout(\Add18~21 ));
defparam \Add18~20 .lut_mask = 16'h698E;
defparam \Add18~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~22 (
	.dataa(\Add15~33_combout ),
	.datab(\Add17~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~21 ),
	.combout(\Add18~22_combout ),
	.cout(\Add18~23 ));
defparam \Add18~22 .lut_mask = 16'h9617;
defparam \Add18~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~24 (
	.dataa(\Add15~32_combout ),
	.datab(\Add17~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add18~23 ),
	.combout(\Add18~24_combout ),
	.cout(\Add18~25 ));
defparam \Add18~24 .lut_mask = 16'h698E;
defparam \Add18~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add18~26 (
	.dataa(\Add15~31_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add18~25 ),
	.combout(\Add18~26_combout ),
	.cout());
defparam \Add18~26 .lut_mask = 16'h5A5A;
defparam \Add18~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~1 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add19~1_cout ));
defparam \Add19~1 .lut_mask = 16'h0055;
defparam \Add19~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~2 (
	.dataa(\Add17~49_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~1_cout ),
	.combout(\Add19~2_combout ),
	.cout(\Add19~3 ));
defparam \Add19~2 .lut_mask = 16'hA5AF;
defparam \Add19~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~4 (
	.dataa(\Add17~48_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~3 ),
	.combout(\Add19~4_combout ),
	.cout(\Add19~5 ));
defparam \Add19~4 .lut_mask = 16'h5A05;
defparam \Add19~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~6 (
	.dataa(\Add17~47_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~5 ),
	.combout(\Add19~6_combout ),
	.cout(\Add19~7 ));
defparam \Add19~6 .lut_mask = 16'hA5AF;
defparam \Add19~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~8 (
	.dataa(\Add5~0_combout ),
	.datab(\Add17~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~7 ),
	.combout(\Add19~8_combout ),
	.cout(\Add19~9 ));
defparam \Add19~8 .lut_mask = 16'h962B;
defparam \Add19~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~10 (
	.dataa(\Add15~43_combout ),
	.datab(\Add17~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~9 ),
	.combout(\Add19~10_combout ),
	.cout(\Add19~11 ));
defparam \Add19~10 .lut_mask = 16'h694D;
defparam \Add19~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~12 (
	.dataa(\Add15~42_combout ),
	.datab(\Add17~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~11 ),
	.combout(\Add19~12_combout ),
	.cout(\Add19~13 ));
defparam \Add19~12 .lut_mask = 16'h962B;
defparam \Add19~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~14 (
	.dataa(\Add15~41_combout ),
	.datab(\Add17~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~13 ),
	.combout(\Add19~14_combout ),
	.cout(\Add19~15 ));
defparam \Add19~14 .lut_mask = 16'h694D;
defparam \Add19~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~16 (
	.dataa(\Add15~40_combout ),
	.datab(\Add17~42_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~15 ),
	.combout(\Add19~16_combout ),
	.cout(\Add19~17 ));
defparam \Add19~16 .lut_mask = 16'h962B;
defparam \Add19~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~18 (
	.dataa(\Add15~39_combout ),
	.datab(\Add17~41_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~17 ),
	.combout(\Add19~18_combout ),
	.cout(\Add19~19 ));
defparam \Add19~18 .lut_mask = 16'h694D;
defparam \Add19~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~20 (
	.dataa(\Add15~38_combout ),
	.datab(\Add17~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~19 ),
	.combout(\Add19~20_combout ),
	.cout(\Add19~21 ));
defparam \Add19~20 .lut_mask = 16'h962B;
defparam \Add19~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~22 (
	.dataa(\Add15~37_combout ),
	.datab(\Add17~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~21 ),
	.combout(\Add19~22_combout ),
	.cout(\Add19~23 ));
defparam \Add19~22 .lut_mask = 16'h694D;
defparam \Add19~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~24 (
	.dataa(\Add15~36_combout ),
	.datab(\Add17~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~23 ),
	.combout(\Add19~24_combout ),
	.cout(\Add19~25 ));
defparam \Add19~24 .lut_mask = 16'h962B;
defparam \Add19~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~26 (
	.dataa(\Add15~35_combout ),
	.datab(\Add17~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~25 ),
	.combout(\Add19~26_combout ),
	.cout(\Add19~27 ));
defparam \Add19~26 .lut_mask = 16'h694D;
defparam \Add19~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~28 (
	.dataa(\Add15~34_combout ),
	.datab(\Add17~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~27 ),
	.combout(\Add19~28_combout ),
	.cout(\Add19~29 ));
defparam \Add19~28 .lut_mask = 16'h962B;
defparam \Add19~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~30 (
	.dataa(\Add15~33_combout ),
	.datab(\Add17~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~29 ),
	.combout(\Add19~30_combout ),
	.cout(\Add19~31 ));
defparam \Add19~30 .lut_mask = 16'h694D;
defparam \Add19~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~32 (
	.dataa(\Add15~32_combout ),
	.datab(\Add17~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add19~31 ),
	.combout(\Add19~32_combout ),
	.cout(\Add19~33 ));
defparam \Add19~32 .lut_mask = 16'h962B;
defparam \Add19~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add19~34 (
	.dataa(\Add15~31_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add19~33 ),
	.combout(\Add19~34_combout ),
	.cout());
defparam \Add19~34 .lut_mask = 16'hA5A5;
defparam \Add19~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~1 (
	.dataa(\Add5~0_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add21~1_cout ));
defparam \Add21~1 .lut_mask = 16'h0055;
defparam \Add21~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~2 (
	.dataa(\Add15~43_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~1_cout ),
	.combout(\Add21~2_combout ),
	.cout(\Add21~3 ));
defparam \Add21~2 .lut_mask = 16'hA5AF;
defparam \Add21~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~4 (
	.dataa(\Add15~42_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~3 ),
	.combout(\Add21~4_combout ),
	.cout(\Add21~5 ));
defparam \Add21~4 .lut_mask = 16'h5A05;
defparam \Add21~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~6 (
	.dataa(\Add15~41_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~5 ),
	.combout(\Add21~6_combout ),
	.cout(\Add21~7 ));
defparam \Add21~6 .lut_mask = 16'hA5AF;
defparam \Add21~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~8 (
	.dataa(\Add15~40_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~7 ),
	.combout(\Add21~8_combout ),
	.cout(\Add21~9 ));
defparam \Add21~8 .lut_mask = 16'h964D;
defparam \Add21~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~10 (
	.dataa(\Add15~39_combout ),
	.datab(\Add17~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~9 ),
	.combout(\Add21~10_combout ),
	.cout(\Add21~11 ));
defparam \Add21~10 .lut_mask = 16'h692B;
defparam \Add21~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~12 (
	.dataa(\Add15~38_combout ),
	.datab(\Add17~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~11 ),
	.combout(\Add21~12_combout ),
	.cout(\Add21~13 ));
defparam \Add21~12 .lut_mask = 16'h964D;
defparam \Add21~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~14 (
	.dataa(\Add15~37_combout ),
	.datab(\Add17~47_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~13 ),
	.combout(\Add21~14_combout ),
	.cout(\Add21~15 ));
defparam \Add21~14 .lut_mask = 16'h692B;
defparam \Add21~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~16 (
	.dataa(\Add15~36_combout ),
	.datab(\Add17~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~15 ),
	.combout(\Add21~16_combout ),
	.cout(\Add21~17 ));
defparam \Add21~16 .lut_mask = 16'h964D;
defparam \Add21~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~18 (
	.dataa(\Add15~35_combout ),
	.datab(\Add17~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~17 ),
	.combout(\Add21~18_combout ),
	.cout(\Add21~19 ));
defparam \Add21~18 .lut_mask = 16'h692B;
defparam \Add21~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~20 (
	.dataa(\Add15~34_combout ),
	.datab(\Add17~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~19 ),
	.combout(\Add21~20_combout ),
	.cout(\Add21~21 ));
defparam \Add21~20 .lut_mask = 16'h964D;
defparam \Add21~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~22 (
	.dataa(\Add15~33_combout ),
	.datab(\Add17~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~21 ),
	.combout(\Add21~22_combout ),
	.cout(\Add21~23 ));
defparam \Add21~22 .lut_mask = 16'h692B;
defparam \Add21~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~24 (
	.dataa(\Add15~32_combout ),
	.datab(\Add17~42_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~23 ),
	.combout(\Add21~24_combout ),
	.cout(\Add21~25 ));
defparam \Add21~24 .lut_mask = 16'h964D;
defparam \Add21~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~26 (
	.dataa(\Add15~31_combout ),
	.datab(\Add17~41_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~25 ),
	.combout(\Add21~26_combout ),
	.cout(\Add21~27 ));
defparam \Add21~26 .lut_mask = 16'h692B;
defparam \Add21~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~28 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~27 ),
	.combout(\Add21~28_combout ),
	.cout(\Add21~29 ));
defparam \Add21~28 .lut_mask = 16'h964D;
defparam \Add21~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~30 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~29 ),
	.combout(\Add21~30_combout ),
	.cout(\Add21~31 ));
defparam \Add21~30 .lut_mask = 16'h692B;
defparam \Add21~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~32 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~31 ),
	.combout(\Add21~32_combout ),
	.cout(\Add21~33 ));
defparam \Add21~32 .lut_mask = 16'h964D;
defparam \Add21~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~34 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~33 ),
	.combout(\Add21~34_combout ),
	.cout(\Add21~35 ));
defparam \Add21~34 .lut_mask = 16'h692B;
defparam \Add21~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~36 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~35 ),
	.combout(\Add21~36_combout ),
	.cout(\Add21~37 ));
defparam \Add21~36 .lut_mask = 16'h964D;
defparam \Add21~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~38 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add21~37 ),
	.combout(\Add21~38_combout ),
	.cout(\Add21~39 ));
defparam \Add21~38 .lut_mask = 16'h692B;
defparam \Add21~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~0 (
	.dataa(\Add15~40_combout ),
	.datab(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add20~0_combout ),
	.cout(\Add20~1 ));
defparam \Add20~0 .lut_mask = 16'h6688;
defparam \Add20~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add20~2 (
	.dataa(\Add15~39_combout ),
	.datab(\Add17~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~1 ),
	.combout(\Add20~2_combout ),
	.cout(\Add20~3 ));
defparam \Add20~2 .lut_mask = 16'h9617;
defparam \Add20~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~4 (
	.dataa(\Add15~38_combout ),
	.datab(\Add17~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~3 ),
	.combout(\Add20~4_combout ),
	.cout(\Add20~5 ));
defparam \Add20~4 .lut_mask = 16'h698E;
defparam \Add20~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~6 (
	.dataa(\Add15~37_combout ),
	.datab(\Add17~47_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~5 ),
	.combout(\Add20~6_combout ),
	.cout(\Add20~7 ));
defparam \Add20~6 .lut_mask = 16'h9617;
defparam \Add20~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~8 (
	.dataa(\Add15~36_combout ),
	.datab(\Add17~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~7 ),
	.combout(\Add20~8_combout ),
	.cout(\Add20~9 ));
defparam \Add20~8 .lut_mask = 16'h698E;
defparam \Add20~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~10 (
	.dataa(\Add15~35_combout ),
	.datab(\Add17~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~9 ),
	.combout(\Add20~10_combout ),
	.cout(\Add20~11 ));
defparam \Add20~10 .lut_mask = 16'h9617;
defparam \Add20~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~12 (
	.dataa(\Add15~34_combout ),
	.datab(\Add17~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~11 ),
	.combout(\Add20~12_combout ),
	.cout(\Add20~13 ));
defparam \Add20~12 .lut_mask = 16'h698E;
defparam \Add20~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~14 (
	.dataa(\Add15~33_combout ),
	.datab(\Add17~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~13 ),
	.combout(\Add20~14_combout ),
	.cout(\Add20~15 ));
defparam \Add20~14 .lut_mask = 16'h9617;
defparam \Add20~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~16 (
	.dataa(\Add15~32_combout ),
	.datab(\Add17~42_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~15 ),
	.combout(\Add20~16_combout ),
	.cout(\Add20~17 ));
defparam \Add20~16 .lut_mask = 16'h698E;
defparam \Add20~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~18 (
	.dataa(\Add15~31_combout ),
	.datab(\Add17~41_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~17 ),
	.combout(\Add20~18_combout ),
	.cout(\Add20~19 ));
defparam \Add20~18 .lut_mask = 16'h9617;
defparam \Add20~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~20 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~19 ),
	.combout(\Add20~20_combout ),
	.cout(\Add20~21 ));
defparam \Add20~20 .lut_mask = 16'h698E;
defparam \Add20~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~22 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~21 ),
	.combout(\Add20~22_combout ),
	.cout(\Add20~23 ));
defparam \Add20~22 .lut_mask = 16'h9617;
defparam \Add20~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~24 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~23 ),
	.combout(\Add20~24_combout ),
	.cout(\Add20~25 ));
defparam \Add20~24 .lut_mask = 16'h698E;
defparam \Add20~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~26 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~37_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~25 ),
	.combout(\Add20~26_combout ),
	.cout(\Add20~27 ));
defparam \Add20~26 .lut_mask = 16'h9617;
defparam \Add20~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~28 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~27 ),
	.combout(\Add20~28_combout ),
	.cout(\Add20~29 ));
defparam \Add20~28 .lut_mask = 16'h698E;
defparam \Add20~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~30 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~35_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add20~29 ),
	.combout(\Add20~30_combout ),
	.cout(\Add20~31 ));
defparam \Add20~30 .lut_mask = 16'h9617;
defparam \Add20~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~1 (
	.dataa(\Add19~52_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add25~1_cout ));
defparam \Add25~1 .lut_mask = 16'h0055;
defparam \Add25~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add25~2 (
	.dataa(\Add19~51_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~1_cout ),
	.combout(\Add25~2_combout ),
	.cout(\Add25~3 ));
defparam \Add25~2 .lut_mask = 16'hA5AF;
defparam \Add25~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~4 (
	.dataa(\Add19~50_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~3 ),
	.combout(\Add25~4_combout ),
	.cout(\Add25~5 ));
defparam \Add25~4 .lut_mask = 16'h5A05;
defparam \Add25~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~6 (
	.dataa(\Add19~49_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~5 ),
	.combout(\Add25~6_combout ),
	.cout(\Add25~7 ));
defparam \Add25~6 .lut_mask = 16'hA5AF;
defparam \Add25~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~8 (
	.dataa(\Add19~48_combout ),
	.datab(\Add5~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~7 ),
	.combout(\Add25~8_combout ),
	.cout(\Add25~9 ));
defparam \Add25~8 .lut_mask = 16'h964D;
defparam \Add25~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~10 (
	.dataa(\Add19~47_combout ),
	.datab(\Add21~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~9 ),
	.combout(\Add25~10_combout ),
	.cout(\Add25~11 ));
defparam \Add25~10 .lut_mask = 16'h692B;
defparam \Add25~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~12 (
	.dataa(\Add19~46_combout ),
	.datab(\Add21~57_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~11 ),
	.combout(\Add25~12_combout ),
	.cout(\Add25~13 ));
defparam \Add25~12 .lut_mask = 16'h964D;
defparam \Add25~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~14 (
	.dataa(\Add19~45_combout ),
	.datab(\Add21~56_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~13 ),
	.combout(\Add25~14_combout ),
	.cout(\Add25~15 ));
defparam \Add25~14 .lut_mask = 16'h692B;
defparam \Add25~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~16 (
	.dataa(\Add19~44_combout ),
	.datab(\Add21~55_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~15 ),
	.combout(\Add25~16_combout ),
	.cout(\Add25~17 ));
defparam \Add25~16 .lut_mask = 16'h964D;
defparam \Add25~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~18 (
	.dataa(\Add19~43_combout ),
	.datab(\Add21~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~17 ),
	.combout(\Add25~18_combout ),
	.cout(\Add25~19 ));
defparam \Add25~18 .lut_mask = 16'h692B;
defparam \Add25~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~20 (
	.dataa(\Add19~42_combout ),
	.datab(\Add21~53_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~19 ),
	.combout(\Add25~20_combout ),
	.cout(\Add25~21 ));
defparam \Add25~20 .lut_mask = 16'h964D;
defparam \Add25~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~22 (
	.dataa(\Add19~41_combout ),
	.datab(\Add21~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~21 ),
	.combout(\Add25~22_combout ),
	.cout(\Add25~23 ));
defparam \Add25~22 .lut_mask = 16'h692B;
defparam \Add25~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~24 (
	.dataa(\Add19~40_combout ),
	.datab(\Add21~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~23 ),
	.combout(\Add25~24_combout ),
	.cout(\Add25~25 ));
defparam \Add25~24 .lut_mask = 16'h964D;
defparam \Add25~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~26 (
	.dataa(\Add19~39_combout ),
	.datab(\Add21~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~25 ),
	.combout(\Add25~26_combout ),
	.cout(\Add25~27 ));
defparam \Add25~26 .lut_mask = 16'h692B;
defparam \Add25~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~28 (
	.dataa(\Add19~38_combout ),
	.datab(\Add21~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~27 ),
	.combout(\Add25~28_combout ),
	.cout(\Add25~29 ));
defparam \Add25~28 .lut_mask = 16'h964D;
defparam \Add25~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~30 (
	.dataa(\Add19~37_combout ),
	.datab(\Add21~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~29 ),
	.combout(\Add25~30_combout ),
	.cout(\Add25~31 ));
defparam \Add25~30 .lut_mask = 16'h692B;
defparam \Add25~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~32 (
	.dataa(\Add21~47_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~31 ),
	.combout(\Add25~32_combout ),
	.cout(\Add25~33 ));
defparam \Add25~32 .lut_mask = 16'h962B;
defparam \Add25~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~34 (
	.dataa(\Add21~46_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~33 ),
	.combout(\Add25~34_combout ),
	.cout(\Add25~35 ));
defparam \Add25~34 .lut_mask = 16'h694D;
defparam \Add25~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~36 (
	.dataa(\Add21~45_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~35 ),
	.combout(\Add25~36_combout ),
	.cout(\Add25~37 ));
defparam \Add25~36 .lut_mask = 16'h962B;
defparam \Add25~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~38 (
	.dataa(\Add21~44_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~37 ),
	.combout(\Add25~38_combout ),
	.cout(\Add25~39 ));
defparam \Add25~38 .lut_mask = 16'h694D;
defparam \Add25~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~40 (
	.dataa(\Add21~43_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~39 ),
	.combout(\Add25~40_combout ),
	.cout(\Add25~41 ));
defparam \Add25~40 .lut_mask = 16'h962B;
defparam \Add25~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~42 (
	.dataa(\Add21~42_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~41 ),
	.combout(\Add25~42_combout ),
	.cout(\Add25~43 ));
defparam \Add25~42 .lut_mask = 16'h694D;
defparam \Add25~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~44 (
	.dataa(\Add21~41_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~43 ),
	.combout(\Add25~44_combout ),
	.cout(\Add25~45 ));
defparam \Add25~44 .lut_mask = 16'h962B;
defparam \Add25~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~46 (
	.dataa(\Add21~40_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add25~45 ),
	.combout(\Add25~46_combout ),
	.cout(\Add25~47 ));
defparam \Add25~46 .lut_mask = 16'h694D;
defparam \Add25~46 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~0 (
	.dataa(\Add19~48_combout ),
	.datab(\Add5~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add24~0_combout ),
	.cout(\Add24~1 ));
defparam \Add24~0 .lut_mask = 16'h6688;
defparam \Add24~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~2 (
	.dataa(\Add19~47_combout ),
	.datab(\Add21~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~1 ),
	.combout(\Add24~2_combout ),
	.cout(\Add24~3 ));
defparam \Add24~2 .lut_mask = 16'h9617;
defparam \Add24~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~4 (
	.dataa(\Add19~46_combout ),
	.datab(\Add21~57_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~3 ),
	.combout(\Add24~4_combout ),
	.cout(\Add24~5 ));
defparam \Add24~4 .lut_mask = 16'h698E;
defparam \Add24~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~6 (
	.dataa(\Add19~45_combout ),
	.datab(\Add21~56_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~5 ),
	.combout(\Add24~6_combout ),
	.cout(\Add24~7 ));
defparam \Add24~6 .lut_mask = 16'h9617;
defparam \Add24~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~8 (
	.dataa(\Add19~44_combout ),
	.datab(\Add21~55_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~7 ),
	.combout(\Add24~8_combout ),
	.cout(\Add24~9 ));
defparam \Add24~8 .lut_mask = 16'h698E;
defparam \Add24~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~10 (
	.dataa(\Add19~43_combout ),
	.datab(\Add21~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~9 ),
	.combout(\Add24~10_combout ),
	.cout(\Add24~11 ));
defparam \Add24~10 .lut_mask = 16'h9617;
defparam \Add24~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~12 (
	.dataa(\Add19~42_combout ),
	.datab(\Add21~53_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~11 ),
	.combout(\Add24~12_combout ),
	.cout(\Add24~13 ));
defparam \Add24~12 .lut_mask = 16'h698E;
defparam \Add24~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~14 (
	.dataa(\Add19~41_combout ),
	.datab(\Add21~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~13 ),
	.combout(\Add24~14_combout ),
	.cout(\Add24~15 ));
defparam \Add24~14 .lut_mask = 16'h9617;
defparam \Add24~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~16 (
	.dataa(\Add19~40_combout ),
	.datab(\Add21~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~15 ),
	.combout(\Add24~16_combout ),
	.cout(\Add24~17 ));
defparam \Add24~16 .lut_mask = 16'h698E;
defparam \Add24~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~18 (
	.dataa(\Add19~39_combout ),
	.datab(\Add21~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~17 ),
	.combout(\Add24~18_combout ),
	.cout(\Add24~19 ));
defparam \Add24~18 .lut_mask = 16'h9617;
defparam \Add24~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~20 (
	.dataa(\Add19~38_combout ),
	.datab(\Add21~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~19 ),
	.combout(\Add24~20_combout ),
	.cout(\Add24~21 ));
defparam \Add24~20 .lut_mask = 16'h698E;
defparam \Add24~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~22 (
	.dataa(\Add19~37_combout ),
	.datab(\Add21~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~21 ),
	.combout(\Add24~22_combout ),
	.cout(\Add24~23 ));
defparam \Add24~22 .lut_mask = 16'h9617;
defparam \Add24~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~24 (
	.dataa(\Add21~47_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~23 ),
	.combout(\Add24~24_combout ),
	.cout(\Add24~25 ));
defparam \Add24~24 .lut_mask = 16'h698E;
defparam \Add24~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~26 (
	.dataa(\Add21~46_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~25 ),
	.combout(\Add24~26_combout ),
	.cout(\Add24~27 ));
defparam \Add24~26 .lut_mask = 16'h9617;
defparam \Add24~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~28 (
	.dataa(\Add21~45_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~27 ),
	.combout(\Add24~28_combout ),
	.cout(\Add24~29 ));
defparam \Add24~28 .lut_mask = 16'h698E;
defparam \Add24~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~30 (
	.dataa(\Add21~44_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~29 ),
	.combout(\Add24~30_combout ),
	.cout(\Add24~31 ));
defparam \Add24~30 .lut_mask = 16'h9617;
defparam \Add24~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~32 (
	.dataa(\Add21~43_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~31 ),
	.combout(\Add24~32_combout ),
	.cout(\Add24~33 ));
defparam \Add24~32 .lut_mask = 16'h698E;
defparam \Add24~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~34 (
	.dataa(\Add21~42_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~33 ),
	.combout(\Add24~34_combout ),
	.cout(\Add24~35 ));
defparam \Add24~34 .lut_mask = 16'h9617;
defparam \Add24~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~36 (
	.dataa(\Add21~41_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~35 ),
	.combout(\Add24~36_combout ),
	.cout(\Add24~37 ));
defparam \Add24~36 .lut_mask = 16'h698E;
defparam \Add24~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~38 (
	.dataa(\Add21~40_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add24~37 ),
	.combout(\Add24~38_combout ),
	.cout(\Add24~39 ));
defparam \Add24~38 .lut_mask = 16'h9617;
defparam \Add24~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add21~59 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~34_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add21~39 ),
	.combout(\Add21~59_combout ),
	.cout());
defparam \Add21~59 .lut_mask = 16'h9696;
defparam \Add21~59 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add20~32 (
	.dataa(\Add15~30_combout ),
	.datab(\Add17~34_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add20~31 ),
	.combout(\Add20~32_combout ),
	.cout());
defparam \Add20~32 .lut_mask = 16'h6969;
defparam \Add20~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~1 (
	.dataa(\Add21~58_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add23~1_cout ));
defparam \Add23~1 .lut_mask = 16'h0055;
defparam \Add23~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~2 (
	.dataa(\Add21~57_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~1_cout ),
	.combout(\Add23~2_combout ),
	.cout(\Add23~3 ));
defparam \Add23~2 .lut_mask = 16'hA5AF;
defparam \Add23~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~4 (
	.dataa(\Add21~56_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~3 ),
	.combout(\Add23~4_combout ),
	.cout(\Add23~5 ));
defparam \Add23~4 .lut_mask = 16'h5A05;
defparam \Add23~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~6 (
	.dataa(\Add21~55_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~5 ),
	.combout(\Add23~6_combout ),
	.cout(\Add23~7 ));
defparam \Add23~6 .lut_mask = 16'hA5AF;
defparam \Add23~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~8 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datab(\Add21~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~7 ),
	.combout(\Add23~8_combout ),
	.cout(\Add23~9 ));
defparam \Add23~8 .lut_mask = 16'h962B;
defparam \Add23~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~10 (
	.dataa(\Add21~53_combout ),
	.datab(\Add19~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~9 ),
	.combout(\Add23~10_combout ),
	.cout(\Add23~11 ));
defparam \Add23~10 .lut_mask = 16'h692B;
defparam \Add23~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~12 (
	.dataa(\Add21~52_combout ),
	.datab(\Add19~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~11 ),
	.combout(\Add23~12_combout ),
	.cout(\Add23~13 ));
defparam \Add23~12 .lut_mask = 16'h964D;
defparam \Add23~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~14 (
	.dataa(\Add21~51_combout ),
	.datab(\Add19~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~13 ),
	.combout(\Add23~14_combout ),
	.cout(\Add23~15 ));
defparam \Add23~14 .lut_mask = 16'h692B;
defparam \Add23~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~16 (
	.dataa(\Add21~50_combout ),
	.datab(\Add19~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~15 ),
	.combout(\Add23~16_combout ),
	.cout(\Add23~17 ));
defparam \Add23~16 .lut_mask = 16'h964D;
defparam \Add23~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~18 (
	.dataa(\Add21~49_combout ),
	.datab(\Add19~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~17 ),
	.combout(\Add23~18_combout ),
	.cout(\Add23~19 ));
defparam \Add23~18 .lut_mask = 16'h692B;
defparam \Add23~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~20 (
	.dataa(\Add21~48_combout ),
	.datab(\Add19~47_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~19 ),
	.combout(\Add23~20_combout ),
	.cout(\Add23~21 ));
defparam \Add23~20 .lut_mask = 16'h964D;
defparam \Add23~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~22 (
	.dataa(\Add21~47_combout ),
	.datab(\Add19~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~21 ),
	.combout(\Add23~22_combout ),
	.cout(\Add23~23 ));
defparam \Add23~22 .lut_mask = 16'h692B;
defparam \Add23~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~24 (
	.dataa(\Add21~46_combout ),
	.datab(\Add19~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~23 ),
	.combout(\Add23~24_combout ),
	.cout(\Add23~25 ));
defparam \Add23~24 .lut_mask = 16'h964D;
defparam \Add23~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~26 (
	.dataa(\Add21~45_combout ),
	.datab(\Add19~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~25 ),
	.combout(\Add23~26_combout ),
	.cout(\Add23~27 ));
defparam \Add23~26 .lut_mask = 16'h692B;
defparam \Add23~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~28 (
	.dataa(\Add21~44_combout ),
	.datab(\Add19~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~27 ),
	.combout(\Add23~28_combout ),
	.cout(\Add23~29 ));
defparam \Add23~28 .lut_mask = 16'h964D;
defparam \Add23~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~30 (
	.dataa(\Add21~43_combout ),
	.datab(\Add19~42_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~29 ),
	.combout(\Add23~30_combout ),
	.cout(\Add23~31 ));
defparam \Add23~30 .lut_mask = 16'h692B;
defparam \Add23~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~32 (
	.dataa(\Add21~42_combout ),
	.datab(\Add19~41_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~31 ),
	.combout(\Add23~32_combout ),
	.cout(\Add23~33 ));
defparam \Add23~32 .lut_mask = 16'h964D;
defparam \Add23~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~34 (
	.dataa(\Add21~41_combout ),
	.datab(\Add19~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~33 ),
	.combout(\Add23~34_combout ),
	.cout(\Add23~35 ));
defparam \Add23~34 .lut_mask = 16'h692B;
defparam \Add23~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~36 (
	.dataa(\Add21~40_combout ),
	.datab(\Add19~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~35 ),
	.combout(\Add23~36_combout ),
	.cout(\Add23~37 ));
defparam \Add23~36 .lut_mask = 16'h964D;
defparam \Add23~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~38 (
	.dataa(\Add21~61_combout ),
	.datab(\Add19~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add23~37 ),
	.combout(\Add23~38_combout ),
	.cout(\Add23~39 ));
defparam \Add23~38 .lut_mask = 16'h692B;
defparam \Add23~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add23~40 (
	.dataa(\Add19~37_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add23~39 ),
	.combout(\Add23~40_combout ),
	.cout());
defparam \Add23~40 .lut_mask = 16'h5A5A;
defparam \Add23~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~0 (
	.dataa(\xip1E_2sumAHighB_uid40_atan2Test_b[0]~0_combout ),
	.datab(\Add21~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add22~0_combout ),
	.cout(\Add22~1 ));
defparam \Add22~0 .lut_mask = 16'h6688;
defparam \Add22~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add22~2 (
	.dataa(\Add21~53_combout ),
	.datab(\Add19~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~1 ),
	.combout(\Add22~2_combout ),
	.cout(\Add22~3 ));
defparam \Add22~2 .lut_mask = 16'h9617;
defparam \Add22~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~4 (
	.dataa(\Add21~52_combout ),
	.datab(\Add19~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~3 ),
	.combout(\Add22~4_combout ),
	.cout(\Add22~5 ));
defparam \Add22~4 .lut_mask = 16'h698E;
defparam \Add22~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~6 (
	.dataa(\Add21~51_combout ),
	.datab(\Add19~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~5 ),
	.combout(\Add22~6_combout ),
	.cout(\Add22~7 ));
defparam \Add22~6 .lut_mask = 16'h9617;
defparam \Add22~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~8 (
	.dataa(\Add21~50_combout ),
	.datab(\Add19~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~7 ),
	.combout(\Add22~8_combout ),
	.cout(\Add22~9 ));
defparam \Add22~8 .lut_mask = 16'h698E;
defparam \Add22~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~10 (
	.dataa(\Add21~49_combout ),
	.datab(\Add19~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~9 ),
	.combout(\Add22~10_combout ),
	.cout(\Add22~11 ));
defparam \Add22~10 .lut_mask = 16'h9617;
defparam \Add22~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~12 (
	.dataa(\Add21~48_combout ),
	.datab(\Add19~47_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~11 ),
	.combout(\Add22~12_combout ),
	.cout(\Add22~13 ));
defparam \Add22~12 .lut_mask = 16'h698E;
defparam \Add22~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~14 (
	.dataa(\Add21~47_combout ),
	.datab(\Add19~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~13 ),
	.combout(\Add22~14_combout ),
	.cout(\Add22~15 ));
defparam \Add22~14 .lut_mask = 16'h9617;
defparam \Add22~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~16 (
	.dataa(\Add21~46_combout ),
	.datab(\Add19~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~15 ),
	.combout(\Add22~16_combout ),
	.cout(\Add22~17 ));
defparam \Add22~16 .lut_mask = 16'h698E;
defparam \Add22~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~18 (
	.dataa(\Add21~45_combout ),
	.datab(\Add19~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~17 ),
	.combout(\Add22~18_combout ),
	.cout(\Add22~19 ));
defparam \Add22~18 .lut_mask = 16'h9617;
defparam \Add22~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~20 (
	.dataa(\Add21~44_combout ),
	.datab(\Add19~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~19 ),
	.combout(\Add22~20_combout ),
	.cout(\Add22~21 ));
defparam \Add22~20 .lut_mask = 16'h698E;
defparam \Add22~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~22 (
	.dataa(\Add21~43_combout ),
	.datab(\Add19~42_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~21 ),
	.combout(\Add22~22_combout ),
	.cout(\Add22~23 ));
defparam \Add22~22 .lut_mask = 16'h9617;
defparam \Add22~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~24 (
	.dataa(\Add21~42_combout ),
	.datab(\Add19~41_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~23 ),
	.combout(\Add22~24_combout ),
	.cout(\Add22~25 ));
defparam \Add22~24 .lut_mask = 16'h698E;
defparam \Add22~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~26 (
	.dataa(\Add21~41_combout ),
	.datab(\Add19~40_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~25 ),
	.combout(\Add22~26_combout ),
	.cout(\Add22~27 ));
defparam \Add22~26 .lut_mask = 16'h9617;
defparam \Add22~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~28 (
	.dataa(\Add21~40_combout ),
	.datab(\Add19~39_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~27 ),
	.combout(\Add22~28_combout ),
	.cout(\Add22~29 ));
defparam \Add22~28 .lut_mask = 16'h698E;
defparam \Add22~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~30 (
	.dataa(\Add21~61_combout ),
	.datab(\Add19~38_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add22~29 ),
	.combout(\Add22~30_combout ),
	.cout(\Add22~31 ));
defparam \Add22~30 .lut_mask = 16'h9617;
defparam \Add22~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add22~32 (
	.dataa(\Add19~37_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add22~31 ),
	.combout(\Add22~32_combout ),
	.cout());
defparam \Add22~32 .lut_mask = 16'hA5A5;
defparam \Add22~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[0]~1 (
	.dataa(\Add23~56_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add28|auto_generated|result_int[0]~1_cout ));
defparam \Add28|auto_generated|result_int[0]~1 .lut_mask = 16'h00AA;
defparam \Add28|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|result_int[1]~2 (
	.dataa(\Add28|auto_generated|_~13_combout ),
	.datab(\Add19~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[0]~1_cout ),
	.combout(\Add28|auto_generated|result_int[1]~2_combout ),
	.cout(\Add28|auto_generated|result_int[1]~3 ));
defparam \Add28|auto_generated|result_int[1]~2 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[2]~4 (
	.dataa(\Add28|auto_generated|_~12_combout ),
	.datab(\xip1E_6sumAHighB_uid118_atan2Test_o[1]~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[1]~3 ),
	.combout(\Add28|auto_generated|result_int[2]~4_combout ),
	.cout(\Add28|auto_generated|result_int[2]~5 ));
defparam \Add28|auto_generated|result_int[2]~4 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[3]~6 (
	.dataa(\Add28|auto_generated|_~11_combout ),
	.datab(\xip1E_6sumAHighB_uid118_atan2Test_o[2]~1_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[2]~5 ),
	.combout(\Add28|auto_generated|result_int[3]~6_combout ),
	.cout(\Add28|auto_generated|result_int[3]~7 ));
defparam \Add28|auto_generated|result_int[3]~6 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[4]~8 (
	.dataa(\Add28|auto_generated|_~10_combout ),
	.datab(\xip1E_6sumAHighB_uid118_atan2Test_o[3]~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[3]~7 ),
	.combout(\Add28|auto_generated|result_int[4]~8_combout ),
	.cout(\Add28|auto_generated|result_int[4]~9 ));
defparam \Add28|auto_generated|result_int[4]~8 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[5]~10 (
	.dataa(\Add28|auto_generated|_~9_combout ),
	.datab(\Add24~59_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[4]~9 ),
	.combout(\Add28|auto_generated|result_int[5]~10_combout ),
	.cout(\Add28|auto_generated|result_int[5]~11 ));
defparam \Add28|auto_generated|result_int[5]~10 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[6]~12 (
	.dataa(\Add28|auto_generated|_~8_combout ),
	.datab(\Add24~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[5]~11 ),
	.combout(\Add28|auto_generated|result_int[6]~12_combout ),
	.cout(\Add28|auto_generated|result_int[6]~13 ));
defparam \Add28|auto_generated|result_int[6]~12 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[7]~14 (
	.dataa(\Add28|auto_generated|_~7_combout ),
	.datab(\Add24~57_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[6]~13 ),
	.combout(\Add28|auto_generated|result_int[7]~14_combout ),
	.cout(\Add28|auto_generated|result_int[7]~15 ));
defparam \Add28|auto_generated|result_int[7]~14 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[8]~16 (
	.dataa(\Add28|auto_generated|_~6_combout ),
	.datab(\Add24~56_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[7]~15 ),
	.combout(\Add28|auto_generated|result_int[8]~16_combout ),
	.cout(\Add28|auto_generated|result_int[8]~17 ));
defparam \Add28|auto_generated|result_int[8]~16 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[9]~18 (
	.dataa(\Add28|auto_generated|_~5_combout ),
	.datab(\Add24~55_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[8]~17 ),
	.combout(\Add28|auto_generated|result_int[9]~18_combout ),
	.cout(\Add28|auto_generated|result_int[9]~19 ));
defparam \Add28|auto_generated|result_int[9]~18 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[10]~20 (
	.dataa(\Add28|auto_generated|_~4_combout ),
	.datab(\Add24~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[9]~19 ),
	.combout(\Add28|auto_generated|result_int[10]~20_combout ),
	.cout(\Add28|auto_generated|result_int[10]~21 ));
defparam \Add28|auto_generated|result_int[10]~20 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[11]~22 (
	.dataa(\Add28|auto_generated|_~3_combout ),
	.datab(\Add24~53_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[10]~21 ),
	.combout(\Add28|auto_generated|result_int[11]~22_combout ),
	.cout(\Add28|auto_generated|result_int[11]~23 ));
defparam \Add28|auto_generated|result_int[11]~22 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[12]~24 (
	.dataa(\Add28|auto_generated|_~2_combout ),
	.datab(\Add24~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[11]~23 ),
	.combout(\Add28|auto_generated|result_int[12]~24_combout ),
	.cout(\Add28|auto_generated|result_int[12]~25 ));
defparam \Add28|auto_generated|result_int[12]~24 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[13]~26 (
	.dataa(\Add28|auto_generated|_~1_combout ),
	.datab(\Add24~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[12]~25 ),
	.combout(\Add28|auto_generated|result_int[13]~26_combout ),
	.cout(\Add28|auto_generated|result_int[13]~27 ));
defparam \Add28|auto_generated|result_int[13]~26 .lut_mask = 16'h9617;
defparam \Add28|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[14]~28 (
	.dataa(\Add28|auto_generated|_~0_combout ),
	.datab(\Add24~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[13]~27 ),
	.combout(\Add28|auto_generated|result_int[14]~28_combout ),
	.cout(\Add28|auto_generated|result_int[14]~29 ));
defparam \Add28|auto_generated|result_int[14]~28 .lut_mask = 16'h698E;
defparam \Add28|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[15]~30 (
	.dataa(\Add24~49_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[14]~29 ),
	.combout(\Add28|auto_generated|result_int[15]~30_combout ),
	.cout(\Add28|auto_generated|result_int[15]~31 ));
defparam \Add28|auto_generated|result_int[15]~30 .lut_mask = 16'h5A5F;
defparam \Add28|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[16]~32 (
	.dataa(\Add24~48_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[15]~31 ),
	.combout(\Add28|auto_generated|result_int[16]~32_combout ),
	.cout(\Add28|auto_generated|result_int[16]~33 ));
defparam \Add28|auto_generated|result_int[16]~32 .lut_mask = 16'hA50A;
defparam \Add28|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[17]~34 (
	.dataa(\Add24~47_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[16]~33 ),
	.combout(\Add28|auto_generated|result_int[17]~34_combout ),
	.cout(\Add28|auto_generated|result_int[17]~35 ));
defparam \Add28|auto_generated|result_int[17]~34 .lut_mask = 16'h5A5F;
defparam \Add28|auto_generated|result_int[17]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[18]~36 (
	.dataa(\Add24~46_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[17]~35 ),
	.combout(\Add28|auto_generated|result_int[18]~36_combout ),
	.cout(\Add28|auto_generated|result_int[18]~37 ));
defparam \Add28|auto_generated|result_int[18]~36 .lut_mask = 16'hA50A;
defparam \Add28|auto_generated|result_int[18]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[19]~38 (
	.dataa(\Add24~45_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[18]~37 ),
	.combout(\Add28|auto_generated|result_int[19]~38_combout ),
	.cout(\Add28|auto_generated|result_int[19]~39 ));
defparam \Add28|auto_generated|result_int[19]~38 .lut_mask = 16'h5A5F;
defparam \Add28|auto_generated|result_int[19]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[20]~40 (
	.dataa(\Add24~44_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[19]~39 ),
	.combout(\Add28|auto_generated|result_int[20]~40_combout ),
	.cout(\Add28|auto_generated|result_int[20]~41 ));
defparam \Add28|auto_generated|result_int[20]~40 .lut_mask = 16'hA50A;
defparam \Add28|auto_generated|result_int[20]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[21]~42 (
	.dataa(\Add24~43_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[20]~41 ),
	.combout(\Add28|auto_generated|result_int[21]~42_combout ),
	.cout(\Add28|auto_generated|result_int[21]~43 ));
defparam \Add28|auto_generated|result_int[21]~42 .lut_mask = 16'h5A5F;
defparam \Add28|auto_generated|result_int[21]~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[22]~44 (
	.dataa(\Add24~42_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[21]~43 ),
	.combout(\Add28|auto_generated|result_int[22]~44_combout ),
	.cout(\Add28|auto_generated|result_int[22]~45 ));
defparam \Add28|auto_generated|result_int[22]~44 .lut_mask = 16'hA50A;
defparam \Add28|auto_generated|result_int[22]~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[23]~46 (
	.dataa(\Add24~41_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[22]~45 ),
	.combout(\Add28|auto_generated|result_int[23]~46_combout ),
	.cout(\Add28|auto_generated|result_int[23]~47 ));
defparam \Add28|auto_generated|result_int[23]~46 .lut_mask = 16'h5A5F;
defparam \Add28|auto_generated|result_int[23]~46 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[24]~48 (
	.dataa(\Add24~40_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add28|auto_generated|result_int[23]~47 ),
	.combout(\Add28|auto_generated|result_int[24]~48_combout ),
	.cout(\Add28|auto_generated|result_int[24]~49 ));
defparam \Add28|auto_generated|result_int[24]~48 .lut_mask = 16'hA50A;
defparam \Add28|auto_generated|result_int[24]~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add24~60 (
	.dataa(\Add21~61_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add24~39 ),
	.combout(\Add24~60_combout ),
	.cout());
defparam \Add24~60 .lut_mask = 16'h6969;
defparam \Add24~60 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add25~48 (
	.dataa(\Add21~61_combout ),
	.datab(\Add19~36_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add25~47 ),
	.combout(\Add25~48_combout ),
	.cout());
defparam \Add25~48 .lut_mask = 16'h9696;
defparam \Add25~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[0]~1 (
	.dataa(\Add23~56_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add26|auto_generated|result_int[0]~1_cout ));
defparam \Add26|auto_generated|result_int[0]~1 .lut_mask = 16'h0055;
defparam \Add26|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|result_int[1]~2 (
	.dataa(\Add26|auto_generated|_~18_combout ),
	.datab(\Add21~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[0]~1_cout ),
	.combout(\Add26|auto_generated|result_int[1]~2_combout ),
	.cout(\Add26|auto_generated|result_int[1]~3 ));
defparam \Add26|auto_generated|result_int[1]~2 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[2]~4 (
	.dataa(\Add26|auto_generated|_~17_combout ),
	.datab(\Add23~61_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[1]~3 ),
	.combout(\Add26|auto_generated|result_int[2]~4_combout ),
	.cout(\Add26|auto_generated|result_int[2]~5 ));
defparam \Add26|auto_generated|result_int[2]~4 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[3]~6 (
	.dataa(\Add26|auto_generated|_~16_combout ),
	.datab(\Add23~60_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[2]~5 ),
	.combout(\Add26|auto_generated|result_int[3]~6_combout ),
	.cout(\Add26|auto_generated|result_int[3]~7 ));
defparam \Add26|auto_generated|result_int[3]~6 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[4]~8 (
	.dataa(\Add26|auto_generated|_~15_combout ),
	.datab(\Add23~59_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[3]~7 ),
	.combout(\Add26|auto_generated|result_int[4]~8_combout ),
	.cout(\Add26|auto_generated|result_int[4]~9 ));
defparam \Add26|auto_generated|result_int[4]~8 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[5]~10 (
	.dataa(\Add26|auto_generated|_~14_combout ),
	.datab(\Add23~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[4]~9 ),
	.combout(\Add26|auto_generated|result_int[5]~10_combout ),
	.cout(\Add26|auto_generated|result_int[5]~11 ));
defparam \Add26|auto_generated|result_int[5]~10 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[6]~12 (
	.dataa(\Add26|auto_generated|_~13_combout ),
	.datab(\Add23~57_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[5]~11 ),
	.combout(\Add26|auto_generated|result_int[6]~12_combout ),
	.cout(\Add26|auto_generated|result_int[6]~13 ));
defparam \Add26|auto_generated|result_int[6]~12 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[7]~14 (
	.dataa(\Add26|auto_generated|_~12_combout ),
	.datab(\Add23~55_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[6]~13 ),
	.combout(\Add26|auto_generated|result_int[7]~14_combout ),
	.cout(\Add26|auto_generated|result_int[7]~15 ));
defparam \Add26|auto_generated|result_int[7]~14 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[8]~16 (
	.dataa(\Add26|auto_generated|_~11_combout ),
	.datab(\Add23~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[7]~15 ),
	.combout(\Add26|auto_generated|result_int[8]~16_combout ),
	.cout(\Add26|auto_generated|result_int[8]~17 ));
defparam \Add26|auto_generated|result_int[8]~16 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[9]~18 (
	.dataa(\Add26|auto_generated|_~10_combout ),
	.datab(\Add23~53_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[8]~17 ),
	.combout(\Add26|auto_generated|result_int[9]~18_combout ),
	.cout(\Add26|auto_generated|result_int[9]~19 ));
defparam \Add26|auto_generated|result_int[9]~18 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[10]~20 (
	.dataa(\Add26|auto_generated|_~9_combout ),
	.datab(\Add23~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[9]~19 ),
	.combout(\Add26|auto_generated|result_int[10]~20_combout ),
	.cout(\Add26|auto_generated|result_int[10]~21 ));
defparam \Add26|auto_generated|result_int[10]~20 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[11]~22 (
	.dataa(\Add26|auto_generated|_~8_combout ),
	.datab(\Add23~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[10]~21 ),
	.combout(\Add26|auto_generated|result_int[11]~22_combout ),
	.cout(\Add26|auto_generated|result_int[11]~23 ));
defparam \Add26|auto_generated|result_int[11]~22 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[12]~24 (
	.dataa(\Add26|auto_generated|_~7_combout ),
	.datab(\Add23~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[11]~23 ),
	.combout(\Add26|auto_generated|result_int[12]~24_combout ),
	.cout(\Add26|auto_generated|result_int[12]~25 ));
defparam \Add26|auto_generated|result_int[12]~24 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[13]~26 (
	.dataa(\Add26|auto_generated|_~6_combout ),
	.datab(\Add23~49_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[12]~25 ),
	.combout(\Add26|auto_generated|result_int[13]~26_combout ),
	.cout(\Add26|auto_generated|result_int[13]~27 ));
defparam \Add26|auto_generated|result_int[13]~26 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[14]~28 (
	.dataa(\Add26|auto_generated|_~5_combout ),
	.datab(\Add23~48_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[13]~27 ),
	.combout(\Add26|auto_generated|result_int[14]~28_combout ),
	.cout(\Add26|auto_generated|result_int[14]~29 ));
defparam \Add26|auto_generated|result_int[14]~28 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[15]~30 (
	.dataa(\Add26|auto_generated|_~4_combout ),
	.datab(\Add23~47_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[14]~29 ),
	.combout(\Add26|auto_generated|result_int[15]~30_combout ),
	.cout(\Add26|auto_generated|result_int[15]~31 ));
defparam \Add26|auto_generated|result_int[15]~30 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[16]~32 (
	.dataa(\Add26|auto_generated|_~3_combout ),
	.datab(\Add23~46_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[15]~31 ),
	.combout(\Add26|auto_generated|result_int[16]~32_combout ),
	.cout(\Add26|auto_generated|result_int[16]~33 ));
defparam \Add26|auto_generated|result_int[16]~32 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[17]~34 (
	.dataa(\Add26|auto_generated|_~2_combout ),
	.datab(\Add23~45_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[16]~33 ),
	.combout(\Add26|auto_generated|result_int[17]~34_combout ),
	.cout(\Add26|auto_generated|result_int[17]~35 ));
defparam \Add26|auto_generated|result_int[17]~34 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[17]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[18]~36 (
	.dataa(\Add26|auto_generated|_~1_combout ),
	.datab(\Add23~44_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[17]~35 ),
	.combout(\Add26|auto_generated|result_int[18]~36_combout ),
	.cout(\Add26|auto_generated|result_int[18]~37 ));
defparam \Add26|auto_generated|result_int[18]~36 .lut_mask = 16'h964D;
defparam \Add26|auto_generated|result_int[18]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[19]~38 (
	.dataa(\Add26|auto_generated|_~0_combout ),
	.datab(\Add23~43_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add26|auto_generated|result_int[18]~37 ),
	.combout(\Add26|auto_generated|result_int[19]~38_combout ),
	.cout(\Add26|auto_generated|result_int[19]~39 ));
defparam \Add26|auto_generated|result_int[19]~38 .lut_mask = 16'h692B;
defparam \Add26|auto_generated|result_int[19]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add26|auto_generated|result_int[20]~40 (
	.dataa(\Add23~56_combout ),
	.datab(\Add23~42_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add26|auto_generated|result_int[19]~39 ),
	.combout(\Add26|auto_generated|result_int[20]~40_combout ),
	.cout());
defparam \Add26|auto_generated|result_int[20]~40 .lut_mask = 16'h9696;
defparam \Add26|auto_generated|result_int[20]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add28|auto_generated|result_int[25]~50 (
	.dataa(\Add24~62_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add28|auto_generated|result_int[24]~49 ),
	.combout(\Add28|auto_generated|result_int[25]~50_combout ),
	.cout());
defparam \Add28|auto_generated|result_int[25]~50 .lut_mask = 16'h5A5A;
defparam \Add28|auto_generated|result_int[25]~50 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add3~20 (
	.dataa(y[9]),
	.datab(\Add3~18_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Add3~20_combout ),
	.cout());
defparam \Add3~20 .lut_mask = 16'h8888;
defparam \Add3~20 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~20 (
	.dataa(x[9]),
	.datab(\Add1~18_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Add1~20_combout ),
	.cout());
defparam \Add1~20 .lut_mask = 16'h8888;
defparam \Add1~20 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~21 (
	.dataa(\Add3~16_combout ),
	.datab(y_8),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~21_combout ),
	.cout());
defparam \Add3~21 .lut_mask = 16'hAACC;
defparam \Add3~21 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~21 (
	.dataa(\Add1~16_combout ),
	.datab(x_8),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~21_combout ),
	.cout());
defparam \Add1~21 .lut_mask = 16'hAACC;
defparam \Add1~21 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~22 (
	.dataa(\Add3~14_combout ),
	.datab(y_7),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~22_combout ),
	.cout());
defparam \Add3~22 .lut_mask = 16'hAACC;
defparam \Add3~22 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~22 (
	.dataa(\Add1~14_combout ),
	.datab(x_7),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~22_combout ),
	.cout());
defparam \Add1~22 .lut_mask = 16'hAACC;
defparam \Add1~22 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~23 (
	.dataa(\Add3~12_combout ),
	.datab(y_6),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~23_combout ),
	.cout());
defparam \Add3~23 .lut_mask = 16'hAACC;
defparam \Add3~23 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~23 (
	.dataa(\Add1~12_combout ),
	.datab(x_6),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~23_combout ),
	.cout());
defparam \Add1~23 .lut_mask = 16'hAACC;
defparam \Add1~23 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~24 (
	.dataa(\Add3~10_combout ),
	.datab(y_5),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~24_combout ),
	.cout());
defparam \Add3~24 .lut_mask = 16'hAACC;
defparam \Add3~24 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~24 (
	.dataa(\Add1~10_combout ),
	.datab(x_5),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~24_combout ),
	.cout());
defparam \Add1~24 .lut_mask = 16'hAACC;
defparam \Add1~24 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~25 (
	.dataa(\Add3~8_combout ),
	.datab(y_4),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~25_combout ),
	.cout());
defparam \Add3~25 .lut_mask = 16'hAACC;
defparam \Add3~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~25 (
	.dataa(\Add1~8_combout ),
	.datab(x_4),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~25_combout ),
	.cout());
defparam \Add1~25 .lut_mask = 16'hAACC;
defparam \Add1~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~26 (
	.dataa(\Add3~6_combout ),
	.datab(y_3),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~26_combout ),
	.cout());
defparam \Add3~26 .lut_mask = 16'hAACC;
defparam \Add3~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~26 (
	.dataa(\Add1~6_combout ),
	.datab(x_3),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~26_combout ),
	.cout());
defparam \Add1~26 .lut_mask = 16'hAACC;
defparam \Add1~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~27 (
	.dataa(\Add3~4_combout ),
	.datab(y_2),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~27_combout ),
	.cout());
defparam \Add3~27 .lut_mask = 16'hAACC;
defparam \Add3~27 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~27 (
	.dataa(\Add1~4_combout ),
	.datab(x_2),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~27_combout ),
	.cout());
defparam \Add1~27 .lut_mask = 16'hAACC;
defparam \Add1~27 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add3~28 (
	.dataa(\Add3~2_combout ),
	.datab(y_1),
	.datac(gnd),
	.datad(y[9]),
	.cin(gnd),
	.combout(\Add3~28_combout ),
	.cout());
defparam \Add3~28 .lut_mask = 16'hAACC;
defparam \Add3~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add1~28 (
	.dataa(\Add1~2_combout ),
	.datab(x_1),
	.datac(gnd),
	.datad(x[9]),
	.cin(gnd),
	.combout(\Add1~28_combout ),
	.cout());
defparam \Add1~28 .lut_mask = 16'hAACC;
defparam \Add1~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~22 (
	.dataa(\Add6~18_combout ),
	.datab(\Add7~20_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~22_combout ),
	.cout());
defparam \Add7~22 .lut_mask = 16'hAACC;
defparam \Add7~22 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~23 (
	.dataa(\Add6~16_combout ),
	.datab(\Add7~18_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~23_combout ),
	.cout());
defparam \Add7~23 .lut_mask = 16'hAACC;
defparam \Add7~23 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~24 (
	.dataa(\Add9~22_combout ),
	.datab(\Add8~20_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~24_combout ),
	.cout());
defparam \Add9~24 .lut_mask = 16'hAACC;
defparam \Add9~24 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~24 (
	.dataa(\Add6~14_combout ),
	.datab(\Add7~16_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~24_combout ),
	.cout());
defparam \Add7~24 .lut_mask = 16'hAACC;
defparam \Add7~24 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~25 (
	.dataa(\Add9~20_combout ),
	.datab(\Add8~18_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~25_combout ),
	.cout());
defparam \Add9~25 .lut_mask = 16'hAACC;
defparam \Add9~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~25 (
	.dataa(\Add6~12_combout ),
	.datab(\Add7~14_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~25_combout ),
	.cout());
defparam \Add7~25 .lut_mask = 16'hAACC;
defparam \Add7~25 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~26 (
	.dataa(\Add9~18_combout ),
	.datab(\Add8~16_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~26_combout ),
	.cout());
defparam \Add9~26 .lut_mask = 16'hAACC;
defparam \Add9~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~26 (
	.dataa(\Add6~10_combout ),
	.datab(\Add7~12_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~26_combout ),
	.cout());
defparam \Add7~26 .lut_mask = 16'hAACC;
defparam \Add7~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~27 (
	.dataa(\Add9~16_combout ),
	.datab(\Add8~14_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~27_combout ),
	.cout());
defparam \Add9~27 .lut_mask = 16'hAACC;
defparam \Add9~27 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~27 (
	.dataa(\Add6~8_combout ),
	.datab(\Add7~10_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~27_combout ),
	.cout());
defparam \Add7~27 .lut_mask = 16'hAACC;
defparam \Add7~27 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~28 (
	.dataa(\Add9~14_combout ),
	.datab(\Add8~12_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~28_combout ),
	.cout());
defparam \Add9~28 .lut_mask = 16'hAACC;
defparam \Add9~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~28 (
	.dataa(\Add6~6_combout ),
	.datab(\Add7~8_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~28_combout ),
	.cout());
defparam \Add7~28 .lut_mask = 16'hAACC;
defparam \Add7~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~29 (
	.dataa(\Add9~12_combout ),
	.datab(\Add8~10_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~29_combout ),
	.cout());
defparam \Add9~29 .lut_mask = 16'hAACC;
defparam \Add9~29 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~29 (
	.dataa(\Add6~4_combout ),
	.datab(\Add7~6_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~29_combout ),
	.cout());
defparam \Add7~29 .lut_mask = 16'hAACC;
defparam \Add7~29 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~30 (
	.dataa(\Add9~10_combout ),
	.datab(\Add8~8_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~30_combout ),
	.cout());
defparam \Add9~30 .lut_mask = 16'hAACC;
defparam \Add9~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~30 (
	.dataa(\Add6~2_combout ),
	.datab(\Add7~4_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~30_combout ),
	.cout());
defparam \Add7~30 .lut_mask = 16'hAACC;
defparam \Add7~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~31 (
	.dataa(\Add9~8_combout ),
	.datab(\Add8~6_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~31_combout ),
	.cout());
defparam \Add9~31 .lut_mask = 16'hAACC;
defparam \Add9~31 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~31 (
	.dataa(\Add6~0_combout ),
	.datab(\Add7~2_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~31_combout ),
	.cout());
defparam \Add7~31 .lut_mask = 16'hAACC;
defparam \Add7~31 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~32 (
	.dataa(\Add9~6_combout ),
	.datab(\Add8~4_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~32_combout ),
	.cout());
defparam \Add9~32 .lut_mask = 16'hAACC;
defparam \Add9~32 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~33 (
	.dataa(\Add9~4_combout ),
	.datab(\Add8~2_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~33_combout ),
	.cout());
defparam \Add9~33 .lut_mask = 16'hAACC;
defparam \Add9~33 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add9~34 (
	.dataa(\Add9~2_combout ),
	.datab(\Add8~0_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add9~34_combout ),
	.cout());
defparam \Add9~34 .lut_mask = 16'hAACC;
defparam \Add9~34 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add7~34 (
	.dataa(\Add6~20_combout ),
	.datab(\Add7~32_combout ),
	.datac(gnd),
	.datad(\xip1E_2sumAHighB_uid40_atan2Test_b[10]~20_combout ),
	.cin(gnd),
	.combout(\Add7~34_combout ),
	.cout());
defparam \Add7~34 .lut_mask = 16'hAACC;
defparam \Add7~34 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~26 (
	.dataa(\Add10~20_combout ),
	.datab(\Add11~24_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~26_combout ),
	.cout());
defparam \Add11~26 .lut_mask = 16'hAACC;
defparam \Add11~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~27 (
	.dataa(\Add10~18_combout ),
	.datab(\Add11~22_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~27_combout ),
	.cout());
defparam \Add11~27 .lut_mask = 16'hAACC;
defparam \Add11~27 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~28 (
	.dataa(\Add13~26_combout ),
	.datab(\Add12~22_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~28_combout ),
	.cout());
defparam \Add13~28 .lut_mask = 16'hAACC;
defparam \Add13~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~28 (
	.dataa(\Add10~16_combout ),
	.datab(\Add11~20_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~28_combout ),
	.cout());
defparam \Add11~28 .lut_mask = 16'hAACC;
defparam \Add11~28 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~29 (
	.dataa(\Add13~24_combout ),
	.datab(\Add12~20_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~29_combout ),
	.cout());
defparam \Add13~29 .lut_mask = 16'hAACC;
defparam \Add13~29 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~29 (
	.dataa(\Add10~14_combout ),
	.datab(\Add11~18_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~29_combout ),
	.cout());
defparam \Add11~29 .lut_mask = 16'hAACC;
defparam \Add11~29 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~30 (
	.dataa(\Add13~22_combout ),
	.datab(\Add12~18_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~30_combout ),
	.cout());
defparam \Add13~30 .lut_mask = 16'hAACC;
defparam \Add13~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~30 (
	.dataa(\Add10~12_combout ),
	.datab(\Add11~16_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~30_combout ),
	.cout());
defparam \Add11~30 .lut_mask = 16'hAACC;
defparam \Add11~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~31 (
	.dataa(\Add13~20_combout ),
	.datab(\Add12~16_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~31_combout ),
	.cout());
defparam \Add13~31 .lut_mask = 16'hAACC;
defparam \Add13~31 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~31 (
	.dataa(\Add10~10_combout ),
	.datab(\Add11~14_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~31_combout ),
	.cout());
defparam \Add11~31 .lut_mask = 16'hAACC;
defparam \Add11~31 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~32 (
	.dataa(\Add13~18_combout ),
	.datab(\Add12~14_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~32_combout ),
	.cout());
defparam \Add13~32 .lut_mask = 16'hAACC;
defparam \Add13~32 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~32 (
	.dataa(\Add10~8_combout ),
	.datab(\Add11~12_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~32_combout ),
	.cout());
defparam \Add11~32 .lut_mask = 16'hAACC;
defparam \Add11~32 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~33 (
	.dataa(\Add13~16_combout ),
	.datab(\Add12~12_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~33_combout ),
	.cout());
defparam \Add13~33 .lut_mask = 16'hAACC;
defparam \Add13~33 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~33 (
	.dataa(\Add10~6_combout ),
	.datab(\Add11~10_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~33_combout ),
	.cout());
defparam \Add11~33 .lut_mask = 16'hAACC;
defparam \Add11~33 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~34 (
	.dataa(\Add13~14_combout ),
	.datab(\Add12~10_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~34_combout ),
	.cout());
defparam \Add13~34 .lut_mask = 16'hAACC;
defparam \Add13~34 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~34 (
	.dataa(\Add10~4_combout ),
	.datab(\Add11~8_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~34_combout ),
	.cout());
defparam \Add11~34 .lut_mask = 16'hAACC;
defparam \Add11~34 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~35 (
	.dataa(\Add13~12_combout ),
	.datab(\Add12~8_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~35_combout ),
	.cout());
defparam \Add13~35 .lut_mask = 16'hAACC;
defparam \Add13~35 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~35 (
	.dataa(\Add10~2_combout ),
	.datab(\Add11~6_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~35_combout ),
	.cout());
defparam \Add11~35 .lut_mask = 16'hAACC;
defparam \Add11~35 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~36 (
	.dataa(\Add13~10_combout ),
	.datab(\Add12~6_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~36_combout ),
	.cout());
defparam \Add13~36 .lut_mask = 16'hAACC;
defparam \Add13~36 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~36 (
	.dataa(\Add10~0_combout ),
	.datab(\Add11~4_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~36_combout ),
	.cout());
defparam \Add11~36 .lut_mask = 16'hAACC;
defparam \Add11~36 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~37 (
	.dataa(\Add13~8_combout ),
	.datab(\Add12~4_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~37_combout ),
	.cout());
defparam \Add13~37 .lut_mask = 16'hAACC;
defparam \Add13~37 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add11~37 (
	.dataa(\Add9~34_combout ),
	.datab(\Add11~2_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add11~37_combout ),
	.cout());
defparam \Add11~37 .lut_mask = 16'hAACC;
defparam \Add11~37 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~38 (
	.dataa(\Add13~6_combout ),
	.datab(\Add12~2_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~38_combout ),
	.cout());
defparam \Add13~38 .lut_mask = 16'hAACC;
defparam \Add13~38 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~39 (
	.dataa(\Add13~4_combout ),
	.datab(\Add12~0_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~39_combout ),
	.cout());
defparam \Add13~39 .lut_mask = 16'hAACC;
defparam \Add13~39 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add13~40 (
	.dataa(\Add13~2_combout ),
	.datab(\Add7~31_combout ),
	.datac(gnd),
	.datad(\Add7~34_combout ),
	.cin(gnd),
	.combout(\Add13~40_combout ),
	.cout());
defparam \Add13~40 .lut_mask = 16'hAACC;
defparam \Add13~40 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~30 (
	.dataa(\Add14~22_combout ),
	.datab(\Add15~28_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~30_combout ),
	.cout());
defparam \Add15~30 .lut_mask = 16'hAACC;
defparam \Add15~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~31 (
	.dataa(\Add14~20_combout ),
	.datab(\Add15~26_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~31_combout ),
	.cout());
defparam \Add15~31 .lut_mask = 16'hAACC;
defparam \Add15~31 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~32 (
	.dataa(\Add14~18_combout ),
	.datab(\Add15~24_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~32_combout ),
	.cout());
defparam \Add15~32 .lut_mask = 16'hAACC;
defparam \Add15~32 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~34 (
	.dataa(\Add17~32_combout ),
	.datab(\Add16~26_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~34_combout ),
	.cout());
defparam \Add17~34 .lut_mask = 16'hAACC;
defparam \Add17~34 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~33 (
	.dataa(\Add14~16_combout ),
	.datab(\Add15~22_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~33_combout ),
	.cout());
defparam \Add15~33 .lut_mask = 16'hAACC;
defparam \Add15~33 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~35 (
	.dataa(\Add17~30_combout ),
	.datab(\Add16~24_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~35_combout ),
	.cout());
defparam \Add17~35 .lut_mask = 16'hAACC;
defparam \Add17~35 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~34 (
	.dataa(\Add14~14_combout ),
	.datab(\Add15~20_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~34_combout ),
	.cout());
defparam \Add15~34 .lut_mask = 16'hAACC;
defparam \Add15~34 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~36 (
	.dataa(\Add17~28_combout ),
	.datab(\Add16~22_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~36_combout ),
	.cout());
defparam \Add17~36 .lut_mask = 16'hAACC;
defparam \Add17~36 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~35 (
	.dataa(\Add14~12_combout ),
	.datab(\Add15~18_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~35_combout ),
	.cout());
defparam \Add15~35 .lut_mask = 16'hAACC;
defparam \Add15~35 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~37 (
	.dataa(\Add17~26_combout ),
	.datab(\Add16~20_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~37_combout ),
	.cout());
defparam \Add17~37 .lut_mask = 16'hAACC;
defparam \Add17~37 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~36 (
	.dataa(\Add14~10_combout ),
	.datab(\Add15~16_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~36_combout ),
	.cout());
defparam \Add15~36 .lut_mask = 16'hAACC;
defparam \Add15~36 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~38 (
	.dataa(\Add17~24_combout ),
	.datab(\Add16~18_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~38_combout ),
	.cout());
defparam \Add17~38 .lut_mask = 16'hAACC;
defparam \Add17~38 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~37 (
	.dataa(\Add14~8_combout ),
	.datab(\Add15~14_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~37_combout ),
	.cout());
defparam \Add15~37 .lut_mask = 16'hAACC;
defparam \Add15~37 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~39 (
	.dataa(\Add17~22_combout ),
	.datab(\Add16~16_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~39_combout ),
	.cout());
defparam \Add17~39 .lut_mask = 16'hAACC;
defparam \Add17~39 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~38 (
	.dataa(\Add14~6_combout ),
	.datab(\Add15~12_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~38_combout ),
	.cout());
defparam \Add15~38 .lut_mask = 16'hAACC;
defparam \Add15~38 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~40 (
	.dataa(\Add17~20_combout ),
	.datab(\Add16~14_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~40_combout ),
	.cout());
defparam \Add17~40 .lut_mask = 16'hAACC;
defparam \Add17~40 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~39 (
	.dataa(\Add14~4_combout ),
	.datab(\Add15~10_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~39_combout ),
	.cout());
defparam \Add15~39 .lut_mask = 16'hAACC;
defparam \Add15~39 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~41 (
	.dataa(\Add17~18_combout ),
	.datab(\Add16~12_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~41_combout ),
	.cout());
defparam \Add17~41 .lut_mask = 16'hAACC;
defparam \Add17~41 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~40 (
	.dataa(\Add14~2_combout ),
	.datab(\Add15~8_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~40_combout ),
	.cout());
defparam \Add15~40 .lut_mask = 16'hAACC;
defparam \Add15~40 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~42 (
	.dataa(\Add17~16_combout ),
	.datab(\Add16~10_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~42_combout ),
	.cout());
defparam \Add17~42 .lut_mask = 16'hAACC;
defparam \Add17~42 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~41 (
	.dataa(\Add14~0_combout ),
	.datab(\Add15~6_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~41_combout ),
	.cout());
defparam \Add15~41 .lut_mask = 16'hAACC;
defparam \Add15~41 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~43 (
	.dataa(\Add17~14_combout ),
	.datab(\Add16~8_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~43_combout ),
	.cout());
defparam \Add17~43 .lut_mask = 16'hAACC;
defparam \Add17~43 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~42 (
	.dataa(\Add13~39_combout ),
	.datab(\Add15~4_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~42_combout ),
	.cout());
defparam \Add15~42 .lut_mask = 16'hAACC;
defparam \Add15~42 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~44 (
	.dataa(\Add17~12_combout ),
	.datab(\Add16~6_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~44_combout ),
	.cout());
defparam \Add17~44 .lut_mask = 16'hAACC;
defparam \Add17~44 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add15~43 (
	.dataa(\Add13~40_combout ),
	.datab(\Add15~2_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add15~43_combout ),
	.cout());
defparam \Add15~43 .lut_mask = 16'hAACC;
defparam \Add15~43 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~45 (
	.dataa(\Add17~10_combout ),
	.datab(\Add16~4_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~45_combout ),
	.cout());
defparam \Add17~45 .lut_mask = 16'hAACC;
defparam \Add17~45 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~46 (
	.dataa(\Add17~8_combout ),
	.datab(\Add16~2_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~46_combout ),
	.cout());
defparam \Add17~46 .lut_mask = 16'hAACC;
defparam \Add17~46 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~47 (
	.dataa(\Add17~6_combout ),
	.datab(\Add16~0_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~47_combout ),
	.cout());
defparam \Add17~47 .lut_mask = 16'hAACC;
defparam \Add17~47 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~48 (
	.dataa(\Add17~4_combout ),
	.datab(\Add11~36_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~48_combout ),
	.cout());
defparam \Add17~48 .lut_mask = 16'hAACC;
defparam \Add17~48 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add17~49 (
	.dataa(\Add17~2_combout ),
	.datab(\Add11~37_combout ),
	.datac(gnd),
	.datad(\Add11~26_combout ),
	.cin(gnd),
	.combout(\Add17~49_combout ),
	.cout());
defparam \Add17~49 .lut_mask = 16'hAACC;
defparam \Add17~49 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~36 (
	.dataa(\Add18~26_combout ),
	.datab(\Add19~34_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~36_combout ),
	.cout());
defparam \Add19~36 .lut_mask = 16'hAACC;
defparam \Add19~36 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~40 (
	.dataa(\Add21~38_combout ),
	.datab(\Add20~30_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~40_combout ),
	.cout());
defparam \Add21~40 .lut_mask = 16'hAACC;
defparam \Add21~40 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~41 (
	.dataa(\Add21~36_combout ),
	.datab(\Add20~28_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~41_combout ),
	.cout());
defparam \Add21~41 .lut_mask = 16'hAACC;
defparam \Add21~41 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~42 (
	.dataa(\Add21~34_combout ),
	.datab(\Add20~26_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~42_combout ),
	.cout());
defparam \Add21~42 .lut_mask = 16'hAACC;
defparam \Add21~42 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~43 (
	.dataa(\Add21~32_combout ),
	.datab(\Add20~24_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~43_combout ),
	.cout());
defparam \Add21~43 .lut_mask = 16'hAACC;
defparam \Add21~43 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~44 (
	.dataa(\Add21~30_combout ),
	.datab(\Add20~22_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~44_combout ),
	.cout());
defparam \Add21~44 .lut_mask = 16'hAACC;
defparam \Add21~44 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~45 (
	.dataa(\Add21~28_combout ),
	.datab(\Add20~20_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~45_combout ),
	.cout());
defparam \Add21~45 .lut_mask = 16'hAACC;
defparam \Add21~45 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~46 (
	.dataa(\Add21~26_combout ),
	.datab(\Add20~18_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~46_combout ),
	.cout());
defparam \Add21~46 .lut_mask = 16'hAACC;
defparam \Add21~46 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~47 (
	.dataa(\Add21~24_combout ),
	.datab(\Add20~16_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~47_combout ),
	.cout());
defparam \Add21~47 .lut_mask = 16'hAACC;
defparam \Add21~47 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~37 (
	.dataa(\Add18~24_combout ),
	.datab(\Add19~32_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~37_combout ),
	.cout());
defparam \Add19~37 .lut_mask = 16'hAACC;
defparam \Add19~37 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~48 (
	.dataa(\Add21~22_combout ),
	.datab(\Add20~14_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~48_combout ),
	.cout());
defparam \Add21~48 .lut_mask = 16'hAACC;
defparam \Add21~48 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~38 (
	.dataa(\Add18~22_combout ),
	.datab(\Add19~30_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~38_combout ),
	.cout());
defparam \Add19~38 .lut_mask = 16'hAACC;
defparam \Add19~38 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~49 (
	.dataa(\Add21~20_combout ),
	.datab(\Add20~12_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~49_combout ),
	.cout());
defparam \Add21~49 .lut_mask = 16'hAACC;
defparam \Add21~49 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~39 (
	.dataa(\Add18~20_combout ),
	.datab(\Add19~28_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~39_combout ),
	.cout());
defparam \Add19~39 .lut_mask = 16'hAACC;
defparam \Add19~39 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~50 (
	.dataa(\Add21~18_combout ),
	.datab(\Add20~10_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~50_combout ),
	.cout());
defparam \Add21~50 .lut_mask = 16'hAACC;
defparam \Add21~50 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~40 (
	.dataa(\Add18~18_combout ),
	.datab(\Add19~26_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~40_combout ),
	.cout());
defparam \Add19~40 .lut_mask = 16'hAACC;
defparam \Add19~40 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~51 (
	.dataa(\Add21~16_combout ),
	.datab(\Add20~8_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~51_combout ),
	.cout());
defparam \Add21~51 .lut_mask = 16'hAACC;
defparam \Add21~51 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~41 (
	.dataa(\Add18~16_combout ),
	.datab(\Add19~24_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~41_combout ),
	.cout());
defparam \Add19~41 .lut_mask = 16'hAACC;
defparam \Add19~41 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~52 (
	.dataa(\Add21~14_combout ),
	.datab(\Add20~6_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~52_combout ),
	.cout());
defparam \Add21~52 .lut_mask = 16'hAACC;
defparam \Add21~52 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~42 (
	.dataa(\Add18~14_combout ),
	.datab(\Add19~22_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~42_combout ),
	.cout());
defparam \Add19~42 .lut_mask = 16'hAACC;
defparam \Add19~42 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~53 (
	.dataa(\Add21~12_combout ),
	.datab(\Add20~4_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~53_combout ),
	.cout());
defparam \Add21~53 .lut_mask = 16'hAACC;
defparam \Add21~53 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~43 (
	.dataa(\Add18~12_combout ),
	.datab(\Add19~20_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~43_combout ),
	.cout());
defparam \Add19~43 .lut_mask = 16'hAACC;
defparam \Add19~43 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~54 (
	.dataa(\Add21~10_combout ),
	.datab(\Add20~2_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~54_combout ),
	.cout());
defparam \Add21~54 .lut_mask = 16'hAACC;
defparam \Add21~54 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~44 (
	.dataa(\Add18~10_combout ),
	.datab(\Add19~18_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~44_combout ),
	.cout());
defparam \Add19~44 .lut_mask = 16'hAACC;
defparam \Add19~44 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~55 (
	.dataa(\Add21~8_combout ),
	.datab(\Add20~0_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~55_combout ),
	.cout());
defparam \Add21~55 .lut_mask = 16'hAACC;
defparam \Add21~55 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~45 (
	.dataa(\Add18~8_combout ),
	.datab(\Add19~16_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~45_combout ),
	.cout());
defparam \Add19~45 .lut_mask = 16'hAACC;
defparam \Add19~45 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~56 (
	.dataa(\Add21~6_combout ),
	.datab(\Add15~41_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~56_combout ),
	.cout());
defparam \Add21~56 .lut_mask = 16'hAACC;
defparam \Add21~56 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~46 (
	.dataa(\Add18~6_combout ),
	.datab(\Add19~14_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~46_combout ),
	.cout());
defparam \Add19~46 .lut_mask = 16'hAACC;
defparam \Add19~46 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~57 (
	.dataa(\Add21~4_combout ),
	.datab(\Add15~42_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~57_combout ),
	.cout());
defparam \Add21~57 .lut_mask = 16'hAACC;
defparam \Add21~57 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~47 (
	.dataa(\Add18~4_combout ),
	.datab(\Add19~12_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~47_combout ),
	.cout());
defparam \Add19~47 .lut_mask = 16'hAACC;
defparam \Add19~47 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~58 (
	.dataa(\Add21~2_combout ),
	.datab(\Add15~43_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~58_combout ),
	.cout());
defparam \Add21~58 .lut_mask = 16'hAACC;
defparam \Add21~58 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~48 (
	.dataa(\Add18~2_combout ),
	.datab(\Add19~10_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~48_combout ),
	.cout());
defparam \Add19~48 .lut_mask = 16'hAACC;
defparam \Add19~48 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~49 (
	.dataa(\Add18~0_combout ),
	.datab(\Add19~8_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~49_combout ),
	.cout());
defparam \Add19~49 .lut_mask = 16'hAACC;
defparam \Add19~49 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~50 (
	.dataa(\Add17~47_combout ),
	.datab(\Add19~6_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~50_combout ),
	.cout());
defparam \Add19~50 .lut_mask = 16'hAACC;
defparam \Add19~50 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~51 (
	.dataa(\Add17~48_combout ),
	.datab(\Add19~4_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~51_combout ),
	.cout());
defparam \Add19~51 .lut_mask = 16'hAACC;
defparam \Add19~51 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add19~52 (
	.dataa(\Add17~49_combout ),
	.datab(\Add19~2_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add19~52_combout ),
	.cout());
defparam \Add19~52 .lut_mask = 16'hAACC;
defparam \Add19~52 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~40 (
	.dataa(\Add25~46_combout ),
	.datab(\Add24~38_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~40_combout ),
	.cout());
defparam \Add24~40 .lut_mask = 16'hAACC;
defparam \Add24~40 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~41 (
	.dataa(\Add25~44_combout ),
	.datab(\Add24~36_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~41_combout ),
	.cout());
defparam \Add24~41 .lut_mask = 16'hAACC;
defparam \Add24~41 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~42 (
	.dataa(\Add25~42_combout ),
	.datab(\Add24~34_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~42_combout ),
	.cout());
defparam \Add24~42 .lut_mask = 16'hAACC;
defparam \Add24~42 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~43 (
	.dataa(\Add25~40_combout ),
	.datab(\Add24~32_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~43_combout ),
	.cout());
defparam \Add24~43 .lut_mask = 16'hAACC;
defparam \Add24~43 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~44 (
	.dataa(\Add25~38_combout ),
	.datab(\Add24~30_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~44_combout ),
	.cout());
defparam \Add24~44 .lut_mask = 16'hAACC;
defparam \Add24~44 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~45 (
	.dataa(\Add25~36_combout ),
	.datab(\Add24~28_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~45_combout ),
	.cout());
defparam \Add24~45 .lut_mask = 16'hAACC;
defparam \Add24~45 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~46 (
	.dataa(\Add25~34_combout ),
	.datab(\Add24~26_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~46_combout ),
	.cout());
defparam \Add24~46 .lut_mask = 16'hAACC;
defparam \Add24~46 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~47 (
	.dataa(\Add25~32_combout ),
	.datab(\Add24~24_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~47_combout ),
	.cout());
defparam \Add24~47 .lut_mask = 16'hAACC;
defparam \Add24~47 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~48 (
	.dataa(\Add25~30_combout ),
	.datab(\Add24~22_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~48_combout ),
	.cout());
defparam \Add24~48 .lut_mask = 16'hAACC;
defparam \Add24~48 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~49 (
	.dataa(\Add25~28_combout ),
	.datab(\Add24~20_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~49_combout ),
	.cout());
defparam \Add24~49 .lut_mask = 16'hAACC;
defparam \Add24~49 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add21~61 (
	.dataa(\Add21~59_combout ),
	.datab(\Add20~32_combout ),
	.datac(gnd),
	.datad(\Add15~30_combout ),
	.cin(gnd),
	.combout(\Add21~61_combout ),
	.cout());
defparam \Add21~61 .lut_mask = 16'hAACC;
defparam \Add21~61 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~42 (
	.dataa(\Add22~30_combout ),
	.datab(\Add23~38_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~42_combout ),
	.cout());
defparam \Add23~42 .lut_mask = 16'hAACC;
defparam \Add23~42 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~0 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~42_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~0_combout ),
	.cout());
defparam \Add28|auto_generated|_~0 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~50 (
	.dataa(\Add25~26_combout ),
	.datab(\Add24~18_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~50_combout ),
	.cout());
defparam \Add24~50 .lut_mask = 16'hAACC;
defparam \Add24~50 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~43 (
	.dataa(\Add22~28_combout ),
	.datab(\Add23~36_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~43_combout ),
	.cout());
defparam \Add23~43 .lut_mask = 16'hAACC;
defparam \Add23~43 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~1 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~43_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~1_combout ),
	.cout());
defparam \Add28|auto_generated|_~1 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~51 (
	.dataa(\Add25~24_combout ),
	.datab(\Add24~16_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~51_combout ),
	.cout());
defparam \Add24~51 .lut_mask = 16'hAACC;
defparam \Add24~51 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~44 (
	.dataa(\Add22~26_combout ),
	.datab(\Add23~34_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~44_combout ),
	.cout());
defparam \Add23~44 .lut_mask = 16'hAACC;
defparam \Add23~44 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~2 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~44_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~2_combout ),
	.cout());
defparam \Add28|auto_generated|_~2 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~52 (
	.dataa(\Add25~22_combout ),
	.datab(\Add24~14_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~52_combout ),
	.cout());
defparam \Add24~52 .lut_mask = 16'hAACC;
defparam \Add24~52 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~45 (
	.dataa(\Add22~24_combout ),
	.datab(\Add23~32_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~45_combout ),
	.cout());
defparam \Add23~45 .lut_mask = 16'hAACC;
defparam \Add23~45 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~3 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~45_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~3_combout ),
	.cout());
defparam \Add28|auto_generated|_~3 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~53 (
	.dataa(\Add25~20_combout ),
	.datab(\Add24~12_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~53_combout ),
	.cout());
defparam \Add24~53 .lut_mask = 16'hAACC;
defparam \Add24~53 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~46 (
	.dataa(\Add22~22_combout ),
	.datab(\Add23~30_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~46_combout ),
	.cout());
defparam \Add23~46 .lut_mask = 16'hAACC;
defparam \Add23~46 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~4 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~46_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~4_combout ),
	.cout());
defparam \Add28|auto_generated|_~4 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~54 (
	.dataa(\Add25~18_combout ),
	.datab(\Add24~10_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~54_combout ),
	.cout());
defparam \Add24~54 .lut_mask = 16'hAACC;
defparam \Add24~54 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~47 (
	.dataa(\Add22~20_combout ),
	.datab(\Add23~28_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~47_combout ),
	.cout());
defparam \Add23~47 .lut_mask = 16'hAACC;
defparam \Add23~47 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~5 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~47_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~5_combout ),
	.cout());
defparam \Add28|auto_generated|_~5 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~55 (
	.dataa(\Add25~16_combout ),
	.datab(\Add24~8_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~55_combout ),
	.cout());
defparam \Add24~55 .lut_mask = 16'hAACC;
defparam \Add24~55 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~48 (
	.dataa(\Add22~18_combout ),
	.datab(\Add23~26_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~48_combout ),
	.cout());
defparam \Add23~48 .lut_mask = 16'hAACC;
defparam \Add23~48 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~6 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~48_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~6_combout ),
	.cout());
defparam \Add28|auto_generated|_~6 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~56 (
	.dataa(\Add25~14_combout ),
	.datab(\Add24~6_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~56_combout ),
	.cout());
defparam \Add24~56 .lut_mask = 16'hAACC;
defparam \Add24~56 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~49 (
	.dataa(\Add22~16_combout ),
	.datab(\Add23~24_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~49_combout ),
	.cout());
defparam \Add23~49 .lut_mask = 16'hAACC;
defparam \Add23~49 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~7 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~49_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~7_combout ),
	.cout());
defparam \Add28|auto_generated|_~7 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~57 (
	.dataa(\Add25~12_combout ),
	.datab(\Add24~4_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~57_combout ),
	.cout());
defparam \Add24~57 .lut_mask = 16'hAACC;
defparam \Add24~57 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~50 (
	.dataa(\Add22~14_combout ),
	.datab(\Add23~22_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~50_combout ),
	.cout());
defparam \Add23~50 .lut_mask = 16'hAACC;
defparam \Add23~50 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~8 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~50_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~8_combout ),
	.cout());
defparam \Add28|auto_generated|_~8 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~58 (
	.dataa(\Add25~10_combout ),
	.datab(\Add24~2_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~58_combout ),
	.cout());
defparam \Add24~58 .lut_mask = 16'hAACC;
defparam \Add24~58 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~51 (
	.dataa(\Add22~12_combout ),
	.datab(\Add23~20_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~51_combout ),
	.cout());
defparam \Add23~51 .lut_mask = 16'hAACC;
defparam \Add23~51 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~9 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~51_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~9_combout ),
	.cout());
defparam \Add28|auto_generated|_~9 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~59 (
	.dataa(\Add25~8_combout ),
	.datab(\Add24~0_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~59_combout ),
	.cout());
defparam \Add24~59 .lut_mask = 16'hAACC;
defparam \Add24~59 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~52 (
	.dataa(\Add22~10_combout ),
	.datab(\Add23~18_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~52_combout ),
	.cout());
defparam \Add23~52 .lut_mask = 16'hAACC;
defparam \Add23~52 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~10 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~52_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~10_combout ),
	.cout());
defparam \Add28|auto_generated|_~10 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \xip1E_6sumAHighB_uid118_atan2Test_o[3]~0 (
	.dataa(\Add25~6_combout ),
	.datab(\Add19~49_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\xip1E_6sumAHighB_uid118_atan2Test_o[3]~0_combout ),
	.cout());
defparam \xip1E_6sumAHighB_uid118_atan2Test_o[3]~0 .lut_mask = 16'hAACC;
defparam \xip1E_6sumAHighB_uid118_atan2Test_o[3]~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~53 (
	.dataa(\Add22~8_combout ),
	.datab(\Add23~16_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~53_combout ),
	.cout());
defparam \Add23~53 .lut_mask = 16'hAACC;
defparam \Add23~53 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~11 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~53_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~11_combout ),
	.cout());
defparam \Add28|auto_generated|_~11 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \xip1E_6sumAHighB_uid118_atan2Test_o[2]~1 (
	.dataa(\Add25~4_combout ),
	.datab(\Add19~50_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\xip1E_6sumAHighB_uid118_atan2Test_o[2]~1_combout ),
	.cout());
defparam \xip1E_6sumAHighB_uid118_atan2Test_o[2]~1 .lut_mask = 16'hAACC;
defparam \xip1E_6sumAHighB_uid118_atan2Test_o[2]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~54 (
	.dataa(\Add22~6_combout ),
	.datab(\Add23~14_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~54_combout ),
	.cout());
defparam \Add23~54 .lut_mask = 16'hAACC;
defparam \Add23~54 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~12 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~54_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~12_combout ),
	.cout());
defparam \Add28|auto_generated|_~12 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \xip1E_6sumAHighB_uid118_atan2Test_o[1]~2 (
	.dataa(\Add25~2_combout ),
	.datab(\Add19~51_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\xip1E_6sumAHighB_uid118_atan2Test_o[1]~2_combout ),
	.cout());
defparam \xip1E_6sumAHighB_uid118_atan2Test_o[1]~2 .lut_mask = 16'hAACC;
defparam \xip1E_6sumAHighB_uid118_atan2Test_o[1]~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~55 (
	.dataa(\Add22~4_combout ),
	.datab(\Add23~12_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~55_combout ),
	.cout());
defparam \Add23~55 .lut_mask = 16'hAACC;
defparam \Add23~55 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add28|auto_generated|_~13 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add23~55_combout ),
	.cin(gnd),
	.combout(\Add28|auto_generated|_~13_combout ),
	.cout());
defparam \Add28|auto_generated|_~13 .lut_mask = 16'h1BE4;
defparam \Add28|auto_generated|_~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~56 (
	.dataa(\Add22~32_combout ),
	.datab(\Add23~40_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~56_combout ),
	.cout());
defparam \Add23~56 .lut_mask = 16'hAACC;
defparam \Add23~56 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~0 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~60_combout ),
	.datac(\Add25~48_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~0_combout ),
	.cout());
defparam \Add26|auto_generated|_~0 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~1 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~38_combout ),
	.datac(\Add25~46_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~1_combout ),
	.cout());
defparam \Add26|auto_generated|_~1 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~2 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~36_combout ),
	.datac(\Add25~44_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~2_combout ),
	.cout());
defparam \Add26|auto_generated|_~2 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~3 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~34_combout ),
	.datac(\Add25~42_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~3_combout ),
	.cout());
defparam \Add26|auto_generated|_~3 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~4 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~32_combout ),
	.datac(\Add25~40_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~4_combout ),
	.cout());
defparam \Add26|auto_generated|_~4 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~5 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~30_combout ),
	.datac(\Add25~38_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~5_combout ),
	.cout());
defparam \Add26|auto_generated|_~5 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~6 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~28_combout ),
	.datac(\Add25~36_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~6_combout ),
	.cout());
defparam \Add26|auto_generated|_~6 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~7 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~26_combout ),
	.datac(\Add25~34_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~7_combout ),
	.cout());
defparam \Add26|auto_generated|_~7 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~8 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~24_combout ),
	.datac(\Add25~32_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~8_combout ),
	.cout());
defparam \Add26|auto_generated|_~8 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~9 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~22_combout ),
	.datac(\Add25~30_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~9_combout ),
	.cout());
defparam \Add26|auto_generated|_~9 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~10 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~20_combout ),
	.datac(\Add25~28_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~10_combout ),
	.cout());
defparam \Add26|auto_generated|_~10 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~11 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~18_combout ),
	.datac(\Add25~26_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~11_combout ),
	.cout());
defparam \Add26|auto_generated|_~11 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~12 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~16_combout ),
	.datac(\Add25~24_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~12_combout ),
	.cout());
defparam \Add26|auto_generated|_~12 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~13 (
	.dataa(\Add19~36_combout ),
	.datab(\Add24~14_combout ),
	.datac(\Add25~22_combout ),
	.datad(\Add23~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~13_combout ),
	.cout());
defparam \Add26|auto_generated|_~13 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~57 (
	.dataa(\Add22~2_combout ),
	.datab(\Add23~10_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~57_combout ),
	.cout());
defparam \Add23~57 .lut_mask = 16'hAACC;
defparam \Add23~57 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~14 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add24~53_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~14_combout ),
	.cout());
defparam \Add26|auto_generated|_~14 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~58 (
	.dataa(\Add22~0_combout ),
	.datab(\Add23~8_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~58_combout ),
	.cout());
defparam \Add23~58 .lut_mask = 16'hAACC;
defparam \Add23~58 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~15 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add24~54_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~15_combout ),
	.cout());
defparam \Add26|auto_generated|_~15 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~59 (
	.dataa(\Add21~55_combout ),
	.datab(\Add23~6_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~59_combout ),
	.cout());
defparam \Add23~59 .lut_mask = 16'hAACC;
defparam \Add23~59 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~16 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add24~55_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~16_combout ),
	.cout());
defparam \Add26|auto_generated|_~16 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~60 (
	.dataa(\Add21~56_combout ),
	.datab(\Add23~4_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~60_combout ),
	.cout());
defparam \Add23~60 .lut_mask = 16'hAACC;
defparam \Add23~60 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~17 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add24~56_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~17_combout ),
	.cout());
defparam \Add26|auto_generated|_~17 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add23~61 (
	.dataa(\Add21~57_combout ),
	.datab(\Add23~2_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add23~61_combout ),
	.cout());
defparam \Add23~61 .lut_mask = 16'hAACC;
defparam \Add23~61 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add26|auto_generated|_~18 (
	.dataa(\Add19~36_combout ),
	.datab(\Add23~40_combout ),
	.datac(\Add22~32_combout ),
	.datad(\Add24~57_combout ),
	.cin(gnd),
	.combout(\Add26|auto_generated|_~18_combout ),
	.cout());
defparam \Add26|auto_generated|_~18 .lut_mask = 16'h1BE4;
defparam \Add26|auto_generated|_~18 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[19]~38_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~0_combout ),
	.cout());
defparam \Add32~0 .lut_mask = 16'h0FF0;
defparam \Add32~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[18]~36_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~1_combout ),
	.cout());
defparam \Add32~1 .lut_mask = 16'h0FF0;
defparam \Add32~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[17]~34_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~2_combout ),
	.cout());
defparam \Add32~2 .lut_mask = 16'h0FF0;
defparam \Add32~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[16]~32_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~3_combout ),
	.cout());
defparam \Add32~3 .lut_mask = 16'h0FF0;
defparam \Add32~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[15]~30_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~4_combout ),
	.cout());
defparam \Add32~4 .lut_mask = 16'h0FF0;
defparam \Add32~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[14]~28_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~5_combout ),
	.cout());
defparam \Add32~5 .lut_mask = 16'h0FF0;
defparam \Add32~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[13]~26_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~6_combout ),
	.cout());
defparam \Add32~6 .lut_mask = 16'h0FF0;
defparam \Add32~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[12]~24_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~7_combout ),
	.cout());
defparam \Add32~7 .lut_mask = 16'h0FF0;
defparam \Add32~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[11]~22_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~8_combout ),
	.cout());
defparam \Add32~8 .lut_mask = 16'h0FF0;
defparam \Add32~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[10]~20_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~9_combout ),
	.cout());
defparam \Add32~9 .lut_mask = 16'h0FF0;
defparam \Add32~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[9]~18_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~10_combout ),
	.cout());
defparam \Add32~10 .lut_mask = 16'h0FF0;
defparam \Add32~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add32~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[8]~16_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add32~11_combout ),
	.cout());
defparam \Add32~11 .lut_mask = 16'h0FF0;
defparam \Add32~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add24~62 (
	.dataa(\Add25~48_combout ),
	.datab(\Add24~60_combout ),
	.datac(gnd),
	.datad(\Add19~36_combout ),
	.cin(gnd),
	.combout(\Add24~62_combout ),
	.cout());
defparam \Add24~62 .lut_mask = 16'hAACC;
defparam \Add24~62 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add26|auto_generated|result_int[20]~40_combout ),
	.datad(\Add28|auto_generated|result_int[25]~50_combout ),
	.cin(gnd),
	.combout(\Add30~0_combout ),
	.cout());
defparam \Add30~0 .lut_mask = 16'h0FF0;
defparam \Add30~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[24]~48_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~1_combout ),
	.cout());
defparam \Add30~1 .lut_mask = 16'h0FF0;
defparam \Add30~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[23]~46_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~2_combout ),
	.cout());
defparam \Add30~2 .lut_mask = 16'h0FF0;
defparam \Add30~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[22]~44_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~3_combout ),
	.cout());
defparam \Add30~3 .lut_mask = 16'h0FF0;
defparam \Add30~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[21]~42_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~4_combout ),
	.cout());
defparam \Add30~4 .lut_mask = 16'h0FF0;
defparam \Add30~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[20]~40_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~5_combout ),
	.cout());
defparam \Add30~5 .lut_mask = 16'h0FF0;
defparam \Add30~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[19]~38_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~6_combout ),
	.cout());
defparam \Add30~6 .lut_mask = 16'h0FF0;
defparam \Add30~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[18]~36_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~7_combout ),
	.cout());
defparam \Add30~7 .lut_mask = 16'h0FF0;
defparam \Add30~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[17]~34_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~8_combout ),
	.cout());
defparam \Add30~8 .lut_mask = 16'h0FF0;
defparam \Add30~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[16]~32_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~9_combout ),
	.cout());
defparam \Add30~9 .lut_mask = 16'h0FF0;
defparam \Add30~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[15]~30_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~10_combout ),
	.cout());
defparam \Add30~10 .lut_mask = 16'h0FF0;
defparam \Add30~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[14]~28_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~11_combout ),
	.cout());
defparam \Add30~11 .lut_mask = 16'h0FF0;
defparam \Add30~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~12 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[13]~26_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~12_combout ),
	.cout());
defparam \Add30~12 .lut_mask = 16'h0FF0;
defparam \Add30~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[12]~24_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~13_combout ),
	.cout());
defparam \Add30~13 .lut_mask = 16'h0FF0;
defparam \Add30~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[11]~22_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~14_combout ),
	.cout());
defparam \Add30~14 .lut_mask = 16'h0FF0;
defparam \Add30~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~15 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[10]~20_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~15_combout ),
	.cout());
defparam \Add30~15 .lut_mask = 16'h0FF0;
defparam \Add30~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~16 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[9]~18_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~16_combout ),
	.cout());
defparam \Add30~16 .lut_mask = 16'h0FF0;
defparam \Add30~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add30~17 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add28|auto_generated|result_int[8]~16_combout ),
	.datad(\Add26|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add30~17_combout ),
	.cout());
defparam \Add30~17 .lut_mask = 16'h0FF0;
defparam \Add30~17 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Equal1~0 (
	.dataa(y_0),
	.datab(y_1),
	.datac(y_2),
	.datad(y_3),
	.cin(gnd),
	.combout(\Equal1~0_combout ),
	.cout());
defparam \Equal1~0 .lut_mask = 16'h0001;
defparam \Equal1~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Equal1~1 (
	.dataa(y_4),
	.datab(y_5),
	.datac(y_6),
	.datad(y_7),
	.cin(gnd),
	.combout(\Equal1~1_combout ),
	.cout());
defparam \Equal1~1 .lut_mask = 16'h0001;
defparam \Equal1~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Equal1~2 (
	.dataa(\Equal1~0_combout ),
	.datab(\Equal1~1_combout ),
	.datac(y[9]),
	.datad(y_8),
	.cin(gnd),
	.combout(\Equal1~2_combout ),
	.cout());
defparam \Equal1~2 .lut_mask = 16'hFFF7;
defparam \Equal1~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Equal0~0 (
	.dataa(x_0),
	.datab(x_1),
	.datac(x_2),
	.datad(x_3),
	.cin(gnd),
	.combout(\Equal0~0_combout ),
	.cout());
defparam \Equal0~0 .lut_mask = 16'h0001;
defparam \Equal0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Equal0~1 (
	.dataa(x_4),
	.datab(x_5),
	.datac(x_6),
	.datad(x_7),
	.cin(gnd),
	.combout(\Equal0~1_combout ),
	.cout());
defparam \Equal0~1 .lut_mask = 16'h0001;
defparam \Equal0~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Equal0~2 (
	.dataa(\Equal0~0_combout ),
	.datab(\Equal0~1_combout ),
	.datac(x[9]),
	.datad(x_8),
	.cin(gnd),
	.combout(\Equal0~2_combout ),
	.cout());
defparam \Equal0~2 .lut_mask = 16'hFFF7;
defparam \Equal0~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \q[0]~0 (
	.dataa(\Mux58~2_combout ),
	.datab(\Mux44~3_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add51~3_cout ),
	.combout(q_0),
	.cout(\q[0]~1 ));
defparam \q[0]~0 .lut_mask = 16'h962B;
defparam \q[0]~0 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[1]~2 (
	.dataa(\Mux57~4_combout ),
	.datab(\Mux43~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[0]~1 ),
	.combout(q_1),
	.cout(\q[1]~3 ));
defparam \q[1]~2 .lut_mask = 16'h694D;
defparam \q[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[2]~4 (
	.dataa(\Mux56~4_combout ),
	.datab(\Mux42~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[1]~3 ),
	.combout(q_2),
	.cout(\q[2]~5 ));
defparam \q[2]~4 .lut_mask = 16'h962B;
defparam \q[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[3]~6 (
	.dataa(\Mux55~2_combout ),
	.datab(\Mux41~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[2]~5 ),
	.combout(q_3),
	.cout(\q[3]~7 ));
defparam \q[3]~6 .lut_mask = 16'h694D;
defparam \q[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[4]~8 (
	.dataa(\Mux54~0_combout ),
	.datab(\Mux40~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[3]~7 ),
	.combout(q_4),
	.cout(\q[4]~9 ));
defparam \q[4]~8 .lut_mask = 16'h962B;
defparam \q[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[5]~10 (
	.dataa(\Mux53~4_combout ),
	.datab(\Mux39~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[4]~9 ),
	.combout(q_5),
	.cout(\q[5]~11 ));
defparam \q[5]~10 .lut_mask = 16'h694D;
defparam \q[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[6]~12 (
	.dataa(\Mux52~2_combout ),
	.datab(\Mux38~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[5]~11 ),
	.combout(q_6),
	.cout(\q[6]~13 ));
defparam \q[6]~12 .lut_mask = 16'h962B;
defparam \q[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[7]~14 (
	.dataa(\Mux51~0_combout ),
	.datab(\Mux37~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[6]~13 ),
	.combout(q_7),
	.cout(\q[7]~15 ));
defparam \q[7]~14 .lut_mask = 16'h694D;
defparam \q[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[8]~16 (
	.dataa(\Mux50~4_combout ),
	.datab(\Mux36~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[7]~15 ),
	.combout(q_8),
	.cout(\q[8]~17 ));
defparam \q[8]~16 .lut_mask = 16'h962B;
defparam \q[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[9]~18 (
	.dataa(\Mux49~2_combout ),
	.datab(\Mux35~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[8]~17 ),
	.combout(q_9),
	.cout(\q[9]~19 ));
defparam \q[9]~18 .lut_mask = 16'h694D;
defparam \q[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[10]~20 (
	.dataa(\Mux48~2_combout ),
	.datab(\Mux34~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[9]~19 ),
	.combout(q_10),
	.cout(\q[10]~21 ));
defparam \q[10]~20 .lut_mask = 16'h962B;
defparam \q[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[11]~22 (
	.dataa(\Mux47~0_combout ),
	.datab(\Mux33~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\q[10]~21 ),
	.combout(q_11),
	.cout(\q[11]~23 ));
defparam \q[11]~22 .lut_mask = 16'h694D;
defparam \q[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \q[12]~24 (
	.dataa(gnd),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\q[11]~23 ),
	.combout(q_12),
	.cout());
defparam \q[12]~24 .lut_mask = 16'hF0F0;
defparam \q[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux34~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux34~4_combout ),
	.cout());
defparam \Mux34~4 .lut_mask = 16'h0FF0;
defparam \Mux34~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux12~0 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux12~0_combout ),
	.cout());
defparam \Mux12~0 .lut_mask = 16'hAAAF;
defparam \Mux12~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux13~0 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux13~0_combout ),
	.cout());
defparam \Mux13~0 .lut_mask = 16'h8181;
defparam \Mux13~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux14~0 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux14~0_combout ),
	.cout());
defparam \Mux14~0 .lut_mask = 16'hE8E8;
defparam \Mux14~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux15~0 (
	.dataa(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux15~0_combout ),
	.cout());
defparam \Mux15~0 .lut_mask = 16'h0AAF;
defparam \Mux15~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux16~0 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux16~0_combout ),
	.cout());
defparam \Mux16~0 .lut_mask = 16'h9696;
defparam \Mux16~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux17~0 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux17~0_combout ),
	.cout());
defparam \Mux17~0 .lut_mask = 16'h88FF;
defparam \Mux17~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux0~0 (
	.dataa(\redist4_xMSB_uid108_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux0~0_combout ),
	.cout());
defparam \Mux0~0 .lut_mask = 16'hAAFF;
defparam \Mux0~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux18~0 (
	.dataa(gnd),
	.datab(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux18~0_combout ),
	.cout());
defparam \Mux18~0 .lut_mask = 16'h3CFC;
defparam \Mux18~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux1~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist4_xMSB_uid108_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux1~0_combout ),
	.cout());
defparam \Mux1~0 .lut_mask = 16'h0FF0;
defparam \Mux1~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~1 (
	.dataa(\Mux18~0_combout ),
	.datab(\Mux1~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add49~1_cout ));
defparam \Add49~1 .lut_mask = 16'h0088;
defparam \Add49~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~3 (
	.dataa(\Mux17~0_combout ),
	.datab(\Mux0~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~1_cout ),
	.combout(),
	.cout(\Add49~3_cout ));
defparam \Add49~3 .lut_mask = 16'h0017;
defparam \Add49~3 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add49~5 (
	.dataa(\Mux16~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~3_cout ),
	.combout(),
	.cout(\Add49~5_cout ));
defparam \Add49~5 .lut_mask = 16'h004D;
defparam \Add49~5 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add49~7 (
	.dataa(\Mux15~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~5_cout ),
	.combout(),
	.cout(\Add49~7_cout ));
defparam \Add49~7 .lut_mask = 16'h004D;
defparam \Add49~7 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add49~8 (
	.dataa(\Mux14~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~7_cout ),
	.combout(\Add49~8_combout ),
	.cout(\Add49~9 ));
defparam \Add49~8 .lut_mask = 16'h962B;
defparam \Add49~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add49~10 (
	.dataa(\Mux13~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~9 ),
	.combout(\Add49~10_combout ),
	.cout(\Add49~11 ));
defparam \Add49~10 .lut_mask = 16'h694D;
defparam \Add49~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add49~12 (
	.dataa(\Mux12~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~11 ),
	.combout(\Add49~12_combout ),
	.cout(\Add49~13 ));
defparam \Add49~12 .lut_mask = 16'h962B;
defparam \Add49~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|_~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][23]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~0_combout ),
	.cout());
defparam \Add34|auto_generated|_~0 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][22]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~1_combout ),
	.cout());
defparam \Add34|auto_generated|_~1 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][21]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~2_combout ),
	.cout());
defparam \Add34|auto_generated|_~2 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][20]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~3_combout ),
	.cout());
defparam \Add34|auto_generated|_~3 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][19]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~4_combout ),
	.cout());
defparam \Add34|auto_generated|_~4 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][18]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~5_combout ),
	.cout());
defparam \Add34|auto_generated|_~5 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][17]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~6_combout ),
	.cout());
defparam \Add34|auto_generated|_~6 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][16]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~7_combout ),
	.cout());
defparam \Add34|auto_generated|_~7 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][15]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~8_combout ),
	.cout());
defparam \Add34|auto_generated|_~8 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][14]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~9_combout ),
	.cout());
defparam \Add34|auto_generated|_~9 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][13]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~10_combout ),
	.cout());
defparam \Add34|auto_generated|_~10 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][12]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~11_combout ),
	.cout());
defparam \Add34|auto_generated|_~11 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~12 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][11]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~12_combout ),
	.cout());
defparam \Add34|auto_generated|_~12 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][10]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~13_combout ),
	.cout());
defparam \Add34|auto_generated|_~13 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][9]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~14_combout ),
	.cout());
defparam \Add34|auto_generated|_~14 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|_~15 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][8]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~15_combout ),
	.cout());
defparam \Add34|auto_generated|_~15 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|result_int[0]~1 (
	.dataa(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add34|auto_generated|result_int[0]~1_cout ));
defparam \Add34|auto_generated|result_int[0]~1 .lut_mask = 16'h0055;
defparam \Add34|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|result_int[1]~2 (
	.dataa(\Add34|auto_generated|_~15_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[0]~1_cout ),
	.combout(\Add34|auto_generated|result_int[1]~2_combout ),
	.cout(\Add34|auto_generated|result_int[1]~3 ));
defparam \Add34|auto_generated|result_int[1]~2 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[2]~4 (
	.dataa(\Add34|auto_generated|_~14_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][1]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[1]~3 ),
	.combout(\Add34|auto_generated|result_int[2]~4_combout ),
	.cout(\Add34|auto_generated|result_int[2]~5 ));
defparam \Add34|auto_generated|result_int[2]~4 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[3]~6 (
	.dataa(\Add34|auto_generated|_~13_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][2]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[2]~5 ),
	.combout(\Add34|auto_generated|result_int[3]~6_combout ),
	.cout(\Add34|auto_generated|result_int[3]~7 ));
defparam \Add34|auto_generated|result_int[3]~6 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[4]~8 (
	.dataa(\Add34|auto_generated|_~12_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][3]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[3]~7 ),
	.combout(\Add34|auto_generated|result_int[4]~8_combout ),
	.cout(\Add34|auto_generated|result_int[4]~9 ));
defparam \Add34|auto_generated|result_int[4]~8 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[5]~10 (
	.dataa(\Add34|auto_generated|_~11_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][4]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[4]~9 ),
	.combout(\Add34|auto_generated|result_int[5]~10_combout ),
	.cout(\Add34|auto_generated|result_int[5]~11 ));
defparam \Add34|auto_generated|result_int[5]~10 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[6]~12 (
	.dataa(\Add34|auto_generated|_~10_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][5]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[5]~11 ),
	.combout(\Add34|auto_generated|result_int[6]~12_combout ),
	.cout(\Add34|auto_generated|result_int[6]~13 ));
defparam \Add34|auto_generated|result_int[6]~12 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[7]~14 (
	.dataa(\Add34|auto_generated|_~9_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][6]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[6]~13 ),
	.combout(\Add34|auto_generated|result_int[7]~14_combout ),
	.cout(\Add34|auto_generated|result_int[7]~15 ));
defparam \Add34|auto_generated|result_int[7]~14 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[8]~16 (
	.dataa(\Add34|auto_generated|_~8_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][7]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[7]~15 ),
	.combout(\Add34|auto_generated|result_int[8]~16_combout ),
	.cout(\Add34|auto_generated|result_int[8]~17 ));
defparam \Add34|auto_generated|result_int[8]~16 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[9]~18 (
	.dataa(\Add34|auto_generated|_~7_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][8]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[8]~17 ),
	.combout(\Add34|auto_generated|result_int[9]~18_combout ),
	.cout(\Add34|auto_generated|result_int[9]~19 ));
defparam \Add34|auto_generated|result_int[9]~18 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[10]~20 (
	.dataa(\Add34|auto_generated|_~6_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][9]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[9]~19 ),
	.combout(\Add34|auto_generated|result_int[10]~20_combout ),
	.cout(\Add34|auto_generated|result_int[10]~21 ));
defparam \Add34|auto_generated|result_int[10]~20 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[11]~22 (
	.dataa(\Add34|auto_generated|_~5_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][10]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[10]~21 ),
	.combout(\Add34|auto_generated|result_int[11]~22_combout ),
	.cout(\Add34|auto_generated|result_int[11]~23 ));
defparam \Add34|auto_generated|result_int[11]~22 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[12]~24 (
	.dataa(\Add34|auto_generated|_~4_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][11]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[11]~23 ),
	.combout(\Add34|auto_generated|result_int[12]~24_combout ),
	.cout(\Add34|auto_generated|result_int[12]~25 ));
defparam \Add34|auto_generated|result_int[12]~24 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[13]~26 (
	.dataa(\Add34|auto_generated|_~3_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][12]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[12]~25 ),
	.combout(\Add34|auto_generated|result_int[13]~26_combout ),
	.cout(\Add34|auto_generated|result_int[13]~27 ));
defparam \Add34|auto_generated|result_int[13]~26 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[14]~28 (
	.dataa(\Add34|auto_generated|_~2_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][13]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[13]~27 ),
	.combout(\Add34|auto_generated|result_int[14]~28_combout ),
	.cout(\Add34|auto_generated|result_int[14]~29 ));
defparam \Add34|auto_generated|result_int[14]~28 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[15]~30 (
	.dataa(\Add34|auto_generated|_~1_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][14]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[14]~29 ),
	.combout(\Add34|auto_generated|result_int[15]~30_combout ),
	.cout(\Add34|auto_generated|result_int[15]~31 ));
defparam \Add34|auto_generated|result_int[15]~30 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[16]~32 (
	.dataa(\Add34|auto_generated|_~0_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][15]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[15]~31 ),
	.combout(\Add34|auto_generated|result_int[16]~32_combout ),
	.cout(\Add34|auto_generated|result_int[16]~33 ));
defparam \Add34|auto_generated|result_int[16]~32 .lut_mask = 16'h964D;
defparam \Add34|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|_~16 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][24]~q ),
	.cin(gnd),
	.combout(\Add34|auto_generated|_~16_combout ),
	.cout());
defparam \Add34|auto_generated|_~16 .lut_mask = 16'h0FF0;
defparam \Add34|auto_generated|_~16 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add34|auto_generated|result_int[17]~34 (
	.dataa(\Add34|auto_generated|_~16_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][16]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add34|auto_generated|result_int[16]~33 ),
	.combout(\Add34|auto_generated|result_int[17]~34_combout ),
	.cout(\Add34|auto_generated|result_int[17]~35 ));
defparam \Add34|auto_generated|result_int[17]~34 .lut_mask = 16'h692B;
defparam \Add34|auto_generated|result_int[17]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add34|auto_generated|result_int[18]~36 (
	.dataa(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][17]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add34|auto_generated|result_int[17]~35 ),
	.combout(\Add34|auto_generated|result_int[18]~36_combout ),
	.cout());
defparam \Add34|auto_generated|result_int[18]~36 .lut_mask = 16'h9696;
defparam \Add34|auto_generated|result_int[18]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|_~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][17]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~0_combout ),
	.cout());
defparam \Add36|auto_generated|_~0 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][16]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~1_combout ),
	.cout());
defparam \Add36|auto_generated|_~1 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][15]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~2_combout ),
	.cout());
defparam \Add36|auto_generated|_~2 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][14]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~3_combout ),
	.cout());
defparam \Add36|auto_generated|_~3 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][13]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~4_combout ),
	.cout());
defparam \Add36|auto_generated|_~4 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][12]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~5_combout ),
	.cout());
defparam \Add36|auto_generated|_~5 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][11]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~6_combout ),
	.cout());
defparam \Add36|auto_generated|_~6 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][10]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~7_combout ),
	.cout());
defparam \Add36|auto_generated|_~7 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][9]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~8_combout ),
	.cout());
defparam \Add36|auto_generated|_~8 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|_~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datad(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][8]~q ),
	.cin(gnd),
	.combout(\Add36|auto_generated|_~9_combout ),
	.cout());
defparam \Add36|auto_generated|_~9 .lut_mask = 16'h0FF0;
defparam \Add36|auto_generated|_~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|result_int[0]~1 (
	.dataa(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add36|auto_generated|result_int[0]~1_cout ));
defparam \Add36|auto_generated|result_int[0]~1 .lut_mask = 16'h00AA;
defparam \Add36|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add36|auto_generated|result_int[1]~2 (
	.dataa(\Add36|auto_generated|_~9_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[0]~1_cout ),
	.combout(\Add36|auto_generated|result_int[1]~2_combout ),
	.cout(\Add36|auto_generated|result_int[1]~3 ));
defparam \Add36|auto_generated|result_int[1]~2 .lut_mask = 16'h9617;
defparam \Add36|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[2]~4 (
	.dataa(\Add36|auto_generated|_~8_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][1]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[1]~3 ),
	.combout(\Add36|auto_generated|result_int[2]~4_combout ),
	.cout(\Add36|auto_generated|result_int[2]~5 ));
defparam \Add36|auto_generated|result_int[2]~4 .lut_mask = 16'h698E;
defparam \Add36|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[3]~6 (
	.dataa(\Add36|auto_generated|_~7_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][2]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[2]~5 ),
	.combout(\Add36|auto_generated|result_int[3]~6_combout ),
	.cout(\Add36|auto_generated|result_int[3]~7 ));
defparam \Add36|auto_generated|result_int[3]~6 .lut_mask = 16'h9617;
defparam \Add36|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[4]~8 (
	.dataa(\Add36|auto_generated|_~6_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][3]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[3]~7 ),
	.combout(\Add36|auto_generated|result_int[4]~8_combout ),
	.cout(\Add36|auto_generated|result_int[4]~9 ));
defparam \Add36|auto_generated|result_int[4]~8 .lut_mask = 16'h698E;
defparam \Add36|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[5]~10 (
	.dataa(\Add36|auto_generated|_~5_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][4]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[4]~9 ),
	.combout(\Add36|auto_generated|result_int[5]~10_combout ),
	.cout(\Add36|auto_generated|result_int[5]~11 ));
defparam \Add36|auto_generated|result_int[5]~10 .lut_mask = 16'h9617;
defparam \Add36|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[6]~12 (
	.dataa(\Add36|auto_generated|_~4_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][5]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[5]~11 ),
	.combout(\Add36|auto_generated|result_int[6]~12_combout ),
	.cout(\Add36|auto_generated|result_int[6]~13 ));
defparam \Add36|auto_generated|result_int[6]~12 .lut_mask = 16'h698E;
defparam \Add36|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[7]~14 (
	.dataa(\Add36|auto_generated|_~3_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][6]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[6]~13 ),
	.combout(\Add36|auto_generated|result_int[7]~14_combout ),
	.cout(\Add36|auto_generated|result_int[7]~15 ));
defparam \Add36|auto_generated|result_int[7]~14 .lut_mask = 16'h9617;
defparam \Add36|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[8]~16 (
	.dataa(\Add36|auto_generated|_~2_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][7]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[7]~15 ),
	.combout(\Add36|auto_generated|result_int[8]~16_combout ),
	.cout(\Add36|auto_generated|result_int[8]~17 ));
defparam \Add36|auto_generated|result_int[8]~16 .lut_mask = 16'h698E;
defparam \Add36|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[9]~18 (
	.dataa(\Add36|auto_generated|_~1_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][8]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[8]~17 ),
	.combout(\Add36|auto_generated|result_int[9]~18_combout ),
	.cout(\Add36|auto_generated|result_int[9]~19 ));
defparam \Add36|auto_generated|result_int[9]~18 .lut_mask = 16'h9617;
defparam \Add36|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[10]~20 (
	.dataa(\Add36|auto_generated|_~0_combout ),
	.datab(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][9]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[9]~19 ),
	.combout(\Add36|auto_generated|result_int[10]~20_combout ),
	.cout(\Add36|auto_generated|result_int[10]~21 ));
defparam \Add36|auto_generated|result_int[10]~20 .lut_mask = 16'h698E;
defparam \Add36|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[11]~22 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][10]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[10]~21 ),
	.combout(\Add36|auto_generated|result_int[11]~22_combout ),
	.cout(\Add36|auto_generated|result_int[11]~23 ));
defparam \Add36|auto_generated|result_int[11]~22 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[12]~24 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][11]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[11]~23 ),
	.combout(\Add36|auto_generated|result_int[12]~24_combout ),
	.cout(\Add36|auto_generated|result_int[12]~25 ));
defparam \Add36|auto_generated|result_int[12]~24 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[13]~26 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][12]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[12]~25 ),
	.combout(\Add36|auto_generated|result_int[13]~26_combout ),
	.cout(\Add36|auto_generated|result_int[13]~27 ));
defparam \Add36|auto_generated|result_int[13]~26 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[14]~28 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][13]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[13]~27 ),
	.combout(\Add36|auto_generated|result_int[14]~28_combout ),
	.cout(\Add36|auto_generated|result_int[14]~29 ));
defparam \Add36|auto_generated|result_int[14]~28 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[15]~30 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][14]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[14]~29 ),
	.combout(\Add36|auto_generated|result_int[15]~30_combout ),
	.cout(\Add36|auto_generated|result_int[15]~31 ));
defparam \Add36|auto_generated|result_int[15]~30 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[16]~32 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][15]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[15]~31 ),
	.combout(\Add36|auto_generated|result_int[16]~32_combout ),
	.cout(\Add36|auto_generated|result_int[16]~33 ));
defparam \Add36|auto_generated|result_int[16]~32 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[17]~34 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][16]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[16]~33 ),
	.combout(\Add36|auto_generated|result_int[17]~34_combout ),
	.cout(\Add36|auto_generated|result_int[17]~35 ));
defparam \Add36|auto_generated|result_int[17]~34 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[17]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[18]~36 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][17]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[17]~35 ),
	.combout(\Add36|auto_generated|result_int[18]~36_combout ),
	.cout(\Add36|auto_generated|result_int[18]~37 ));
defparam \Add36|auto_generated|result_int[18]~36 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[18]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[19]~38 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][18]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[18]~37 ),
	.combout(\Add36|auto_generated|result_int[19]~38_combout ),
	.cout(\Add36|auto_generated|result_int[19]~39 ));
defparam \Add36|auto_generated|result_int[19]~38 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[19]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[20]~40 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][19]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[19]~39 ),
	.combout(\Add36|auto_generated|result_int[20]~40_combout ),
	.cout(\Add36|auto_generated|result_int[20]~41 ));
defparam \Add36|auto_generated|result_int[20]~40 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[20]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[21]~42 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][20]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[20]~41 ),
	.combout(\Add36|auto_generated|result_int[21]~42_combout ),
	.cout(\Add36|auto_generated|result_int[21]~43 ));
defparam \Add36|auto_generated|result_int[21]~42 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[21]~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[22]~44 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][21]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[21]~43 ),
	.combout(\Add36|auto_generated|result_int[22]~44_combout ),
	.cout(\Add36|auto_generated|result_int[22]~45 ));
defparam \Add36|auto_generated|result_int[22]~44 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[22]~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[23]~46 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][22]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[22]~45 ),
	.combout(\Add36|auto_generated|result_int[23]~46_combout ),
	.cout(\Add36|auto_generated|result_int[23]~47 ));
defparam \Add36|auto_generated|result_int[23]~46 .lut_mask = 16'h5A5F;
defparam \Add36|auto_generated|result_int[23]~46 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[24]~48 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][23]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add36|auto_generated|result_int[23]~47 ),
	.combout(\Add36|auto_generated|result_int[24]~48_combout ),
	.cout(\Add36|auto_generated|result_int[24]~49 ));
defparam \Add36|auto_generated|result_int[24]~48 .lut_mask = 16'hA50A;
defparam \Add36|auto_generated|result_int[24]~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add36|auto_generated|result_int[25]~50 (
	.dataa(\redist1_xip1_8_uid160_atan2Test_b_1|delay_signals[0][24]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add36|auto_generated|result_int[24]~49 ),
	.combout(\Add36|auto_generated|result_int[25]~50_combout ),
	.cout());
defparam \Add36|auto_generated|result_int[25]~50 .lut_mask = 16'h5A5A;
defparam \Add36|auto_generated|result_int[25]~50 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|_~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[25]~50_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~0_combout ),
	.cout());
defparam \Add38|auto_generated|_~0 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[24]~48_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~1_combout ),
	.cout());
defparam \Add38|auto_generated|_~1 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[23]~46_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~2_combout ),
	.cout());
defparam \Add38|auto_generated|_~2 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[22]~44_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~3_combout ),
	.cout());
defparam \Add38|auto_generated|_~3 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[21]~42_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~4_combout ),
	.cout());
defparam \Add38|auto_generated|_~4 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~5_combout ),
	.cout());
defparam \Add38|auto_generated|_~5 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[19]~38_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~6_combout ),
	.cout());
defparam \Add38|auto_generated|_~6 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~7_combout ),
	.cout());
defparam \Add38|auto_generated|_~7 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~8_combout ),
	.cout());
defparam \Add38|auto_generated|_~8 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[16]~32_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~9_combout ),
	.cout());
defparam \Add38|auto_generated|_~9 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[15]~30_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~10_combout ),
	.cout());
defparam \Add38|auto_generated|_~10 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[14]~28_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~11_combout ),
	.cout());
defparam \Add38|auto_generated|_~11 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~12 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[13]~26_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~12_combout ),
	.cout());
defparam \Add38|auto_generated|_~12 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[12]~24_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~13_combout ),
	.cout());
defparam \Add38|auto_generated|_~13 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[11]~22_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~14_combout ),
	.cout());
defparam \Add38|auto_generated|_~14 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|_~15 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[18]~36_combout ),
	.datad(\Add36|auto_generated|result_int[10]~20_combout ),
	.cin(gnd),
	.combout(\Add38|auto_generated|_~15_combout ),
	.cout());
defparam \Add38|auto_generated|_~15 .lut_mask = 16'h0FF0;
defparam \Add38|auto_generated|_~15 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|result_int[0]~1 (
	.dataa(\Add34|auto_generated|result_int[18]~36_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add38|auto_generated|result_int[0]~1_cout ));
defparam \Add38|auto_generated|result_int[0]~1 .lut_mask = 16'h0055;
defparam \Add38|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add38|auto_generated|result_int[1]~2 (
	.dataa(\Add34|auto_generated|result_int[1]~2_combout ),
	.datab(\Add38|auto_generated|_~15_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[0]~1_cout ),
	.combout(\Add38|auto_generated|result_int[1]~2_combout ),
	.cout(\Add38|auto_generated|result_int[1]~3 ));
defparam \Add38|auto_generated|result_int[1]~2 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[2]~4 (
	.dataa(\Add34|auto_generated|result_int[2]~4_combout ),
	.datab(\Add38|auto_generated|_~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[1]~3 ),
	.combout(\Add38|auto_generated|result_int[2]~4_combout ),
	.cout(\Add38|auto_generated|result_int[2]~5 ));
defparam \Add38|auto_generated|result_int[2]~4 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[3]~6 (
	.dataa(\Add34|auto_generated|result_int[3]~6_combout ),
	.datab(\Add38|auto_generated|_~13_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[2]~5 ),
	.combout(\Add38|auto_generated|result_int[3]~6_combout ),
	.cout(\Add38|auto_generated|result_int[3]~7 ));
defparam \Add38|auto_generated|result_int[3]~6 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[4]~8 (
	.dataa(\Add34|auto_generated|result_int[4]~8_combout ),
	.datab(\Add38|auto_generated|_~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[3]~7 ),
	.combout(\Add38|auto_generated|result_int[4]~8_combout ),
	.cout(\Add38|auto_generated|result_int[4]~9 ));
defparam \Add38|auto_generated|result_int[4]~8 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[5]~10 (
	.dataa(\Add34|auto_generated|result_int[5]~10_combout ),
	.datab(\Add38|auto_generated|_~11_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[4]~9 ),
	.combout(\Add38|auto_generated|result_int[5]~10_combout ),
	.cout(\Add38|auto_generated|result_int[5]~11 ));
defparam \Add38|auto_generated|result_int[5]~10 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[6]~12 (
	.dataa(\Add34|auto_generated|result_int[6]~12_combout ),
	.datab(\Add38|auto_generated|_~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[5]~11 ),
	.combout(\Add38|auto_generated|result_int[6]~12_combout ),
	.cout(\Add38|auto_generated|result_int[6]~13 ));
defparam \Add38|auto_generated|result_int[6]~12 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[7]~14 (
	.dataa(\Add34|auto_generated|result_int[7]~14_combout ),
	.datab(\Add38|auto_generated|_~9_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[6]~13 ),
	.combout(\Add38|auto_generated|result_int[7]~14_combout ),
	.cout(\Add38|auto_generated|result_int[7]~15 ));
defparam \Add38|auto_generated|result_int[7]~14 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[8]~16 (
	.dataa(\Add34|auto_generated|result_int[8]~16_combout ),
	.datab(\Add38|auto_generated|_~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[7]~15 ),
	.combout(\Add38|auto_generated|result_int[8]~16_combout ),
	.cout(\Add38|auto_generated|result_int[8]~17 ));
defparam \Add38|auto_generated|result_int[8]~16 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[9]~18 (
	.dataa(\Add34|auto_generated|result_int[9]~18_combout ),
	.datab(\Add38|auto_generated|_~7_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[8]~17 ),
	.combout(\Add38|auto_generated|result_int[9]~18_combout ),
	.cout(\Add38|auto_generated|result_int[9]~19 ));
defparam \Add38|auto_generated|result_int[9]~18 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[10]~20 (
	.dataa(\Add34|auto_generated|result_int[10]~20_combout ),
	.datab(\Add38|auto_generated|_~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[9]~19 ),
	.combout(\Add38|auto_generated|result_int[10]~20_combout ),
	.cout(\Add38|auto_generated|result_int[10]~21 ));
defparam \Add38|auto_generated|result_int[10]~20 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[11]~22 (
	.dataa(\Add34|auto_generated|result_int[11]~22_combout ),
	.datab(\Add38|auto_generated|_~5_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[10]~21 ),
	.combout(\Add38|auto_generated|result_int[11]~22_combout ),
	.cout(\Add38|auto_generated|result_int[11]~23 ));
defparam \Add38|auto_generated|result_int[11]~22 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[12]~24 (
	.dataa(\Add34|auto_generated|result_int[12]~24_combout ),
	.datab(\Add38|auto_generated|_~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[11]~23 ),
	.combout(\Add38|auto_generated|result_int[12]~24_combout ),
	.cout(\Add38|auto_generated|result_int[12]~25 ));
defparam \Add38|auto_generated|result_int[12]~24 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[13]~26 (
	.dataa(\Add34|auto_generated|result_int[13]~26_combout ),
	.datab(\Add38|auto_generated|_~3_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[12]~25 ),
	.combout(\Add38|auto_generated|result_int[13]~26_combout ),
	.cout(\Add38|auto_generated|result_int[13]~27 ));
defparam \Add38|auto_generated|result_int[13]~26 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[14]~28 (
	.dataa(\Add34|auto_generated|result_int[14]~28_combout ),
	.datab(\Add38|auto_generated|_~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[13]~27 ),
	.combout(\Add38|auto_generated|result_int[14]~28_combout ),
	.cout(\Add38|auto_generated|result_int[14]~29 ));
defparam \Add38|auto_generated|result_int[14]~28 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[15]~30 (
	.dataa(\Add34|auto_generated|result_int[15]~30_combout ),
	.datab(\Add38|auto_generated|_~1_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[14]~29 ),
	.combout(\Add38|auto_generated|result_int[15]~30_combout ),
	.cout(\Add38|auto_generated|result_int[15]~31 ));
defparam \Add38|auto_generated|result_int[15]~30 .lut_mask = 16'h694D;
defparam \Add38|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[16]~32 (
	.dataa(\Add34|auto_generated|result_int[16]~32_combout ),
	.datab(\Add38|auto_generated|_~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add38|auto_generated|result_int[15]~31 ),
	.combout(\Add38|auto_generated|result_int[16]~32_combout ),
	.cout(\Add38|auto_generated|result_int[16]~33 ));
defparam \Add38|auto_generated|result_int[16]~32 .lut_mask = 16'h962B;
defparam \Add38|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add38|auto_generated|result_int[17]~34 (
	.dataa(\Add34|auto_generated|result_int[17]~34_combout ),
	.datab(\Add34|auto_generated|result_int[18]~36_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add38|auto_generated|result_int[16]~33 ),
	.combout(\Add38|auto_generated|result_int[17]~34_combout ),
	.cout());
defparam \Add38|auto_generated|result_int[17]~34 .lut_mask = 16'h6969;
defparam \Add38|auto_generated|result_int[17]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|_~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[17]~34_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~0_combout ),
	.cout());
defparam \Add40|auto_generated|_~0 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[16]~32_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~1_combout ),
	.cout());
defparam \Add40|auto_generated|_~1 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[15]~30_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~2_combout ),
	.cout());
defparam \Add40|auto_generated|_~2 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[14]~28_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~3_combout ),
	.cout());
defparam \Add40|auto_generated|_~3 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[13]~26_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~4_combout ),
	.cout());
defparam \Add40|auto_generated|_~4 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[12]~24_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~5_combout ),
	.cout());
defparam \Add40|auto_generated|_~5 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[11]~22_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~6_combout ),
	.cout());
defparam \Add40|auto_generated|_~6 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|_~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add34|auto_generated|result_int[10]~20_combout ),
	.datad(\Add34|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add40|auto_generated|_~7_combout ),
	.cout());
defparam \Add40|auto_generated|_~7 .lut_mask = 16'h0FF0;
defparam \Add40|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|result_int[0]~1 (
	.dataa(\Add34|auto_generated|result_int[18]~36_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add40|auto_generated|result_int[0]~1_cout ));
defparam \Add40|auto_generated|result_int[0]~1 .lut_mask = 16'h00AA;
defparam \Add40|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add40|auto_generated|result_int[1]~2 (
	.dataa(\Add40|auto_generated|_~7_combout ),
	.datab(\Add36|auto_generated|result_int[1]~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[0]~1_cout ),
	.combout(\Add40|auto_generated|result_int[1]~2_combout ),
	.cout(\Add40|auto_generated|result_int[1]~3 ));
defparam \Add40|auto_generated|result_int[1]~2 .lut_mask = 16'h9617;
defparam \Add40|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[2]~4 (
	.dataa(\Add40|auto_generated|_~6_combout ),
	.datab(\Add36|auto_generated|result_int[2]~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[1]~3 ),
	.combout(\Add40|auto_generated|result_int[2]~4_combout ),
	.cout(\Add40|auto_generated|result_int[2]~5 ));
defparam \Add40|auto_generated|result_int[2]~4 .lut_mask = 16'h698E;
defparam \Add40|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[3]~6 (
	.dataa(\Add40|auto_generated|_~5_combout ),
	.datab(\Add36|auto_generated|result_int[3]~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[2]~5 ),
	.combout(\Add40|auto_generated|result_int[3]~6_combout ),
	.cout(\Add40|auto_generated|result_int[3]~7 ));
defparam \Add40|auto_generated|result_int[3]~6 .lut_mask = 16'h9617;
defparam \Add40|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[4]~8 (
	.dataa(\Add40|auto_generated|_~4_combout ),
	.datab(\Add36|auto_generated|result_int[4]~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[3]~7 ),
	.combout(\Add40|auto_generated|result_int[4]~8_combout ),
	.cout(\Add40|auto_generated|result_int[4]~9 ));
defparam \Add40|auto_generated|result_int[4]~8 .lut_mask = 16'h698E;
defparam \Add40|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[5]~10 (
	.dataa(\Add40|auto_generated|_~3_combout ),
	.datab(\Add36|auto_generated|result_int[5]~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[4]~9 ),
	.combout(\Add40|auto_generated|result_int[5]~10_combout ),
	.cout(\Add40|auto_generated|result_int[5]~11 ));
defparam \Add40|auto_generated|result_int[5]~10 .lut_mask = 16'h9617;
defparam \Add40|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[6]~12 (
	.dataa(\Add40|auto_generated|_~2_combout ),
	.datab(\Add36|auto_generated|result_int[6]~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[5]~11 ),
	.combout(\Add40|auto_generated|result_int[6]~12_combout ),
	.cout(\Add40|auto_generated|result_int[6]~13 ));
defparam \Add40|auto_generated|result_int[6]~12 .lut_mask = 16'h698E;
defparam \Add40|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[7]~14 (
	.dataa(\Add40|auto_generated|_~1_combout ),
	.datab(\Add36|auto_generated|result_int[7]~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[6]~13 ),
	.combout(\Add40|auto_generated|result_int[7]~14_combout ),
	.cout(\Add40|auto_generated|result_int[7]~15 ));
defparam \Add40|auto_generated|result_int[7]~14 .lut_mask = 16'h9617;
defparam \Add40|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[8]~16 (
	.dataa(\Add40|auto_generated|_~0_combout ),
	.datab(\Add36|auto_generated|result_int[8]~16_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[7]~15 ),
	.combout(\Add40|auto_generated|result_int[8]~16_combout ),
	.cout(\Add40|auto_generated|result_int[8]~17 ));
defparam \Add40|auto_generated|result_int[8]~16 .lut_mask = 16'h698E;
defparam \Add40|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[9]~18 (
	.dataa(\Add36|auto_generated|result_int[9]~18_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[8]~17 ),
	.combout(\Add40|auto_generated|result_int[9]~18_combout ),
	.cout(\Add40|auto_generated|result_int[9]~19 ));
defparam \Add40|auto_generated|result_int[9]~18 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[10]~20 (
	.dataa(\Add36|auto_generated|result_int[10]~20_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[9]~19 ),
	.combout(\Add40|auto_generated|result_int[10]~20_combout ),
	.cout(\Add40|auto_generated|result_int[10]~21 ));
defparam \Add40|auto_generated|result_int[10]~20 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[11]~22 (
	.dataa(\Add36|auto_generated|result_int[11]~22_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[10]~21 ),
	.combout(\Add40|auto_generated|result_int[11]~22_combout ),
	.cout(\Add40|auto_generated|result_int[11]~23 ));
defparam \Add40|auto_generated|result_int[11]~22 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[12]~24 (
	.dataa(\Add36|auto_generated|result_int[12]~24_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[11]~23 ),
	.combout(\Add40|auto_generated|result_int[12]~24_combout ),
	.cout(\Add40|auto_generated|result_int[12]~25 ));
defparam \Add40|auto_generated|result_int[12]~24 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[13]~26 (
	.dataa(\Add36|auto_generated|result_int[13]~26_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[12]~25 ),
	.combout(\Add40|auto_generated|result_int[13]~26_combout ),
	.cout(\Add40|auto_generated|result_int[13]~27 ));
defparam \Add40|auto_generated|result_int[13]~26 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[14]~28 (
	.dataa(\Add36|auto_generated|result_int[14]~28_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[13]~27 ),
	.combout(\Add40|auto_generated|result_int[14]~28_combout ),
	.cout(\Add40|auto_generated|result_int[14]~29 ));
defparam \Add40|auto_generated|result_int[14]~28 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[15]~30 (
	.dataa(\Add36|auto_generated|result_int[15]~30_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[14]~29 ),
	.combout(\Add40|auto_generated|result_int[15]~30_combout ),
	.cout(\Add40|auto_generated|result_int[15]~31 ));
defparam \Add40|auto_generated|result_int[15]~30 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[16]~32 (
	.dataa(\Add36|auto_generated|result_int[16]~32_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[15]~31 ),
	.combout(\Add40|auto_generated|result_int[16]~32_combout ),
	.cout(\Add40|auto_generated|result_int[16]~33 ));
defparam \Add40|auto_generated|result_int[16]~32 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[17]~34 (
	.dataa(\Add36|auto_generated|result_int[17]~34_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[16]~33 ),
	.combout(\Add40|auto_generated|result_int[17]~34_combout ),
	.cout(\Add40|auto_generated|result_int[17]~35 ));
defparam \Add40|auto_generated|result_int[17]~34 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[17]~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[18]~36 (
	.dataa(\Add36|auto_generated|result_int[18]~36_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[17]~35 ),
	.combout(\Add40|auto_generated|result_int[18]~36_combout ),
	.cout(\Add40|auto_generated|result_int[18]~37 ));
defparam \Add40|auto_generated|result_int[18]~36 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[18]~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[19]~38 (
	.dataa(\Add36|auto_generated|result_int[19]~38_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[18]~37 ),
	.combout(\Add40|auto_generated|result_int[19]~38_combout ),
	.cout(\Add40|auto_generated|result_int[19]~39 ));
defparam \Add40|auto_generated|result_int[19]~38 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[19]~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[20]~40 (
	.dataa(\Add36|auto_generated|result_int[20]~40_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[19]~39 ),
	.combout(\Add40|auto_generated|result_int[20]~40_combout ),
	.cout(\Add40|auto_generated|result_int[20]~41 ));
defparam \Add40|auto_generated|result_int[20]~40 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[20]~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[21]~42 (
	.dataa(\Add36|auto_generated|result_int[21]~42_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[20]~41 ),
	.combout(\Add40|auto_generated|result_int[21]~42_combout ),
	.cout(\Add40|auto_generated|result_int[21]~43 ));
defparam \Add40|auto_generated|result_int[21]~42 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[21]~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[22]~44 (
	.dataa(\Add36|auto_generated|result_int[22]~44_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[21]~43 ),
	.combout(\Add40|auto_generated|result_int[22]~44_combout ),
	.cout(\Add40|auto_generated|result_int[22]~45 ));
defparam \Add40|auto_generated|result_int[22]~44 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[22]~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[23]~46 (
	.dataa(\Add36|auto_generated|result_int[23]~46_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[22]~45 ),
	.combout(\Add40|auto_generated|result_int[23]~46_combout ),
	.cout(\Add40|auto_generated|result_int[23]~47 ));
defparam \Add40|auto_generated|result_int[23]~46 .lut_mask = 16'h5A5F;
defparam \Add40|auto_generated|result_int[23]~46 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[24]~48 (
	.dataa(\Add36|auto_generated|result_int[24]~48_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add40|auto_generated|result_int[23]~47 ),
	.combout(\Add40|auto_generated|result_int[24]~48_combout ),
	.cout(\Add40|auto_generated|result_int[24]~49 ));
defparam \Add40|auto_generated|result_int[24]~48 .lut_mask = 16'hA50A;
defparam \Add40|auto_generated|result_int[24]~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add40|auto_generated|result_int[25]~50 (
	.dataa(\Add36|auto_generated|result_int[25]~50_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add40|auto_generated|result_int[24]~49 ),
	.combout(\Add40|auto_generated|result_int[25]~50_combout ),
	.cout());
defparam \Add40|auto_generated|result_int[25]~50 .lut_mask = 16'h5A5A;
defparam \Add40|auto_generated|result_int[25]~50 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|_~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[25]~50_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~0_combout ),
	.cout());
defparam \Add42|auto_generated|_~0 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[24]~48_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~1_combout ),
	.cout());
defparam \Add42|auto_generated|_~1 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~2 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[23]~46_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~2_combout ),
	.cout());
defparam \Add42|auto_generated|_~2 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~3 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[22]~44_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~3_combout ),
	.cout());
defparam \Add42|auto_generated|_~3 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~4 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[21]~42_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~4_combout ),
	.cout());
defparam \Add42|auto_generated|_~4 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~5 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[20]~40_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~5_combout ),
	.cout());
defparam \Add42|auto_generated|_~5 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~6 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[19]~38_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~6_combout ),
	.cout());
defparam \Add42|auto_generated|_~6 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~7 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[18]~36_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~7_combout ),
	.cout());
defparam \Add42|auto_generated|_~7 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~7 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~8 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~8_combout ),
	.cout());
defparam \Add42|auto_generated|_~8 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~8 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~9 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[16]~32_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~9_combout ),
	.cout());
defparam \Add42|auto_generated|_~9 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~9 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~10 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[15]~30_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~10_combout ),
	.cout());
defparam \Add42|auto_generated|_~10 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~10 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~11 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[14]~28_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~11_combout ),
	.cout());
defparam \Add42|auto_generated|_~11 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~11 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~12 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[13]~26_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~12_combout ),
	.cout());
defparam \Add42|auto_generated|_~12 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~12 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~13 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[12]~24_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~13_combout ),
	.cout());
defparam \Add42|auto_generated|_~13 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~13 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|_~14 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\Add38|auto_generated|result_int[17]~34_combout ),
	.datad(\Add40|auto_generated|result_int[11]~22_combout ),
	.cin(gnd),
	.combout(\Add42|auto_generated|_~14_combout ),
	.cout());
defparam \Add42|auto_generated|_~14 .lut_mask = 16'h0FF0;
defparam \Add42|auto_generated|_~14 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|result_int[0]~1 (
	.dataa(\Add38|auto_generated|result_int[17]~34_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add42|auto_generated|result_int[0]~1_cout ));
defparam \Add42|auto_generated|result_int[0]~1 .lut_mask = 16'h0055;
defparam \Add42|auto_generated|result_int[0]~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add42|auto_generated|result_int[1]~2 (
	.dataa(\Add38|auto_generated|result_int[1]~2_combout ),
	.datab(\Add42|auto_generated|_~14_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[0]~1_cout ),
	.combout(\Add42|auto_generated|result_int[1]~2_combout ),
	.cout(\Add42|auto_generated|result_int[1]~3 ));
defparam \Add42|auto_generated|result_int[1]~2 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[1]~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[2]~4 (
	.dataa(\Add38|auto_generated|result_int[2]~4_combout ),
	.datab(\Add42|auto_generated|_~13_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[1]~3 ),
	.combout(\Add42|auto_generated|result_int[2]~4_combout ),
	.cout(\Add42|auto_generated|result_int[2]~5 ));
defparam \Add42|auto_generated|result_int[2]~4 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[2]~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[3]~6 (
	.dataa(\Add38|auto_generated|result_int[3]~6_combout ),
	.datab(\Add42|auto_generated|_~12_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[2]~5 ),
	.combout(\Add42|auto_generated|result_int[3]~6_combout ),
	.cout(\Add42|auto_generated|result_int[3]~7 ));
defparam \Add42|auto_generated|result_int[3]~6 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[3]~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[4]~8 (
	.dataa(\Add38|auto_generated|result_int[4]~8_combout ),
	.datab(\Add42|auto_generated|_~11_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[3]~7 ),
	.combout(\Add42|auto_generated|result_int[4]~8_combout ),
	.cout(\Add42|auto_generated|result_int[4]~9 ));
defparam \Add42|auto_generated|result_int[4]~8 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[4]~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[5]~10 (
	.dataa(\Add38|auto_generated|result_int[5]~10_combout ),
	.datab(\Add42|auto_generated|_~10_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[4]~9 ),
	.combout(\Add42|auto_generated|result_int[5]~10_combout ),
	.cout(\Add42|auto_generated|result_int[5]~11 ));
defparam \Add42|auto_generated|result_int[5]~10 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[5]~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[6]~12 (
	.dataa(\Add38|auto_generated|result_int[6]~12_combout ),
	.datab(\Add42|auto_generated|_~9_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[5]~11 ),
	.combout(\Add42|auto_generated|result_int[6]~12_combout ),
	.cout(\Add42|auto_generated|result_int[6]~13 ));
defparam \Add42|auto_generated|result_int[6]~12 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[6]~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[7]~14 (
	.dataa(\Add38|auto_generated|result_int[7]~14_combout ),
	.datab(\Add42|auto_generated|_~8_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[6]~13 ),
	.combout(\Add42|auto_generated|result_int[7]~14_combout ),
	.cout(\Add42|auto_generated|result_int[7]~15 ));
defparam \Add42|auto_generated|result_int[7]~14 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[7]~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[8]~16 (
	.dataa(\Add38|auto_generated|result_int[8]~16_combout ),
	.datab(\Add42|auto_generated|_~7_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[7]~15 ),
	.combout(\Add42|auto_generated|result_int[8]~16_combout ),
	.cout(\Add42|auto_generated|result_int[8]~17 ));
defparam \Add42|auto_generated|result_int[8]~16 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[8]~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[9]~18 (
	.dataa(\Add38|auto_generated|result_int[9]~18_combout ),
	.datab(\Add42|auto_generated|_~6_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[8]~17 ),
	.combout(\Add42|auto_generated|result_int[9]~18_combout ),
	.cout(\Add42|auto_generated|result_int[9]~19 ));
defparam \Add42|auto_generated|result_int[9]~18 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[9]~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[10]~20 (
	.dataa(\Add38|auto_generated|result_int[10]~20_combout ),
	.datab(\Add42|auto_generated|_~5_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[9]~19 ),
	.combout(\Add42|auto_generated|result_int[10]~20_combout ),
	.cout(\Add42|auto_generated|result_int[10]~21 ));
defparam \Add42|auto_generated|result_int[10]~20 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[10]~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[11]~22 (
	.dataa(\Add38|auto_generated|result_int[11]~22_combout ),
	.datab(\Add42|auto_generated|_~4_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[10]~21 ),
	.combout(\Add42|auto_generated|result_int[11]~22_combout ),
	.cout(\Add42|auto_generated|result_int[11]~23 ));
defparam \Add42|auto_generated|result_int[11]~22 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[11]~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[12]~24 (
	.dataa(\Add38|auto_generated|result_int[12]~24_combout ),
	.datab(\Add42|auto_generated|_~3_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[11]~23 ),
	.combout(\Add42|auto_generated|result_int[12]~24_combout ),
	.cout(\Add42|auto_generated|result_int[12]~25 ));
defparam \Add42|auto_generated|result_int[12]~24 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[12]~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[13]~26 (
	.dataa(\Add38|auto_generated|result_int[13]~26_combout ),
	.datab(\Add42|auto_generated|_~2_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[12]~25 ),
	.combout(\Add42|auto_generated|result_int[13]~26_combout ),
	.cout(\Add42|auto_generated|result_int[13]~27 ));
defparam \Add42|auto_generated|result_int[13]~26 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[13]~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[14]~28 (
	.dataa(\Add38|auto_generated|result_int[14]~28_combout ),
	.datab(\Add42|auto_generated|_~1_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[13]~27 ),
	.combout(\Add42|auto_generated|result_int[14]~28_combout ),
	.cout(\Add42|auto_generated|result_int[14]~29 ));
defparam \Add42|auto_generated|result_int[14]~28 .lut_mask = 16'h962B;
defparam \Add42|auto_generated|result_int[14]~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[15]~30 (
	.dataa(\Add38|auto_generated|result_int[15]~30_combout ),
	.datab(\Add42|auto_generated|_~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add42|auto_generated|result_int[14]~29 ),
	.combout(\Add42|auto_generated|result_int[15]~30_combout ),
	.cout(\Add42|auto_generated|result_int[15]~31 ));
defparam \Add42|auto_generated|result_int[15]~30 .lut_mask = 16'h694D;
defparam \Add42|auto_generated|result_int[15]~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add42|auto_generated|result_int[16]~32 (
	.dataa(\Add38|auto_generated|result_int[16]~32_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add42|auto_generated|result_int[15]~31 ),
	.combout(\Add42|auto_generated|result_int[16]~32_combout ),
	.cout());
defparam \Add42|auto_generated|result_int[16]~32 .lut_mask = 16'h9696;
defparam \Add42|auto_generated|result_int[16]~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~1 (
	.dataa(\Add40|auto_generated|result_int[1]~2_combout ),
	.datab(\Add38|auto_generated|result_int[11]~22_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add45~1_cout ));
defparam \Add45~1 .lut_mask = 16'h00BB;
defparam \Add45~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~3 (
	.dataa(\Add40|auto_generated|result_int[2]~4_combout ),
	.datab(\Add38|auto_generated|result_int[12]~24_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~1_cout ),
	.combout(),
	.cout(\Add45~3_cout ));
defparam \Add45~3 .lut_mask = 16'h004D;
defparam \Add45~3 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~5 (
	.dataa(\Add40|auto_generated|result_int[3]~6_combout ),
	.datab(\Add38|auto_generated|result_int[13]~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~3_cout ),
	.combout(),
	.cout(\Add45~5_cout ));
defparam \Add45~5 .lut_mask = 16'h002B;
defparam \Add45~5 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~7 (
	.dataa(\Add40|auto_generated|result_int[4]~8_combout ),
	.datab(\Add38|auto_generated|result_int[14]~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~5_cout ),
	.combout(),
	.cout(\Add45~7_cout ));
defparam \Add45~7 .lut_mask = 16'h004D;
defparam \Add45~7 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~9 (
	.dataa(\Add40|auto_generated|result_int[5]~10_combout ),
	.datab(\Add38|auto_generated|result_int[15]~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~7_cout ),
	.combout(),
	.cout(\Add45~9_cout ));
defparam \Add45~9 .lut_mask = 16'h002B;
defparam \Add45~9 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~11 (
	.dataa(\Add40|auto_generated|result_int[6]~12_combout ),
	.datab(\Add38|auto_generated|result_int[16]~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~9_cout ),
	.combout(),
	.cout(\Add45~11_cout ));
defparam \Add45~11 .lut_mask = 16'h004D;
defparam \Add45~11 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~13 (
	.dataa(\Add40|auto_generated|result_int[7]~14_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~11_cout ),
	.combout(),
	.cout(\Add45~13_cout ));
defparam \Add45~13 .lut_mask = 16'h002B;
defparam \Add45~13 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~15 (
	.dataa(\Add40|auto_generated|result_int[8]~16_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~13_cout ),
	.combout(),
	.cout(\Add45~15_cout ));
defparam \Add45~15 .lut_mask = 16'h004D;
defparam \Add45~15 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~17 (
	.dataa(\Add40|auto_generated|result_int[9]~18_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~15_cout ),
	.combout(),
	.cout(\Add45~17_cout ));
defparam \Add45~17 .lut_mask = 16'h002B;
defparam \Add45~17 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~19 (
	.dataa(\Add40|auto_generated|result_int[10]~20_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~17_cout ),
	.combout(),
	.cout(\Add45~19_cout ));
defparam \Add45~19 .lut_mask = 16'h004D;
defparam \Add45~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~21 (
	.dataa(\Add40|auto_generated|result_int[11]~22_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~19_cout ),
	.combout(),
	.cout(\Add45~21_cout ));
defparam \Add45~21 .lut_mask = 16'h002B;
defparam \Add45~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~22 (
	.dataa(\Add40|auto_generated|result_int[12]~24_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~21_cout ),
	.combout(\Add45~22_combout ),
	.cout(\Add45~23 ));
defparam \Add45~22 .lut_mask = 16'h694D;
defparam \Add45~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~24 (
	.dataa(\Add40|auto_generated|result_int[13]~26_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~23 ),
	.combout(\Add45~24_combout ),
	.cout(\Add45~25 ));
defparam \Add45~24 .lut_mask = 16'h962B;
defparam \Add45~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~26 (
	.dataa(\Add40|auto_generated|result_int[14]~28_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~25 ),
	.combout(\Add45~26_combout ),
	.cout(\Add45~27 ));
defparam \Add45~26 .lut_mask = 16'h694D;
defparam \Add45~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~28 (
	.dataa(\Add40|auto_generated|result_int[15]~30_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~27 ),
	.combout(\Add45~28_combout ),
	.cout(\Add45~29 ));
defparam \Add45~28 .lut_mask = 16'h962B;
defparam \Add45~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~30 (
	.dataa(\Add40|auto_generated|result_int[16]~32_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~29 ),
	.combout(\Add45~30_combout ),
	.cout(\Add45~31 ));
defparam \Add45~30 .lut_mask = 16'h694D;
defparam \Add45~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~32 (
	.dataa(\Add40|auto_generated|result_int[17]~34_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~31 ),
	.combout(\Add45~32_combout ),
	.cout(\Add45~33 ));
defparam \Add45~32 .lut_mask = 16'h962B;
defparam \Add45~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~34 (
	.dataa(\Add40|auto_generated|result_int[18]~36_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~33 ),
	.combout(\Add45~34_combout ),
	.cout(\Add45~35 ));
defparam \Add45~34 .lut_mask = 16'h694D;
defparam \Add45~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~36 (
	.dataa(\Add40|auto_generated|result_int[19]~38_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~35 ),
	.combout(\Add45~36_combout ),
	.cout(\Add45~37 ));
defparam \Add45~36 .lut_mask = 16'h962B;
defparam \Add45~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~38 (
	.dataa(\Add40|auto_generated|result_int[20]~40_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~37 ),
	.combout(\Add45~38_combout ),
	.cout(\Add45~39 ));
defparam \Add45~38 .lut_mask = 16'h694D;
defparam \Add45~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~40 (
	.dataa(\Add40|auto_generated|result_int[21]~42_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~39 ),
	.combout(\Add45~40_combout ),
	.cout(\Add45~41 ));
defparam \Add45~40 .lut_mask = 16'h962B;
defparam \Add45~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~42 (
	.dataa(\Add40|auto_generated|result_int[22]~44_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~41 ),
	.combout(\Add45~42_combout ),
	.cout(\Add45~43 ));
defparam \Add45~42 .lut_mask = 16'h694D;
defparam \Add45~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~44 (
	.dataa(\Add40|auto_generated|result_int[23]~46_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~43 ),
	.combout(\Add45~44_combout ),
	.cout(\Add45~45 ));
defparam \Add45~44 .lut_mask = 16'h962B;
defparam \Add45~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~46 (
	.dataa(\Add40|auto_generated|result_int[24]~48_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add45~45 ),
	.combout(\Add45~46_combout ),
	.cout(\Add45~47 ));
defparam \Add45~46 .lut_mask = 16'h694D;
defparam \Add45~46 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~48 (
	.dataa(\Add40|auto_generated|result_int[25]~50_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add45~47 ),
	.combout(\Add45~48_combout ),
	.cout());
defparam \Add45~48 .lut_mask = 16'h9696;
defparam \Add45~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~1 (
	.dataa(\Add40|auto_generated|result_int[1]~2_combout ),
	.datab(\Add38|auto_generated|result_int[11]~22_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add44~1_cout ));
defparam \Add44~1 .lut_mask = 16'h0088;
defparam \Add44~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add44~3 (
	.dataa(\Add40|auto_generated|result_int[2]~4_combout ),
	.datab(\Add38|auto_generated|result_int[12]~24_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~1_cout ),
	.combout(),
	.cout(\Add44~3_cout ));
defparam \Add44~3 .lut_mask = 16'h0017;
defparam \Add44~3 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~5 (
	.dataa(\Add40|auto_generated|result_int[3]~6_combout ),
	.datab(\Add38|auto_generated|result_int[13]~26_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~3_cout ),
	.combout(),
	.cout(\Add44~5_cout ));
defparam \Add44~5 .lut_mask = 16'h008E;
defparam \Add44~5 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~7 (
	.dataa(\Add40|auto_generated|result_int[4]~8_combout ),
	.datab(\Add38|auto_generated|result_int[14]~28_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~5_cout ),
	.combout(),
	.cout(\Add44~7_cout ));
defparam \Add44~7 .lut_mask = 16'h0017;
defparam \Add44~7 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~9 (
	.dataa(\Add40|auto_generated|result_int[5]~10_combout ),
	.datab(\Add38|auto_generated|result_int[15]~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~7_cout ),
	.combout(),
	.cout(\Add44~9_cout ));
defparam \Add44~9 .lut_mask = 16'h008E;
defparam \Add44~9 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~11 (
	.dataa(\Add40|auto_generated|result_int[6]~12_combout ),
	.datab(\Add38|auto_generated|result_int[16]~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~9_cout ),
	.combout(),
	.cout(\Add44~11_cout ));
defparam \Add44~11 .lut_mask = 16'h0017;
defparam \Add44~11 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~13 (
	.dataa(\Add40|auto_generated|result_int[7]~14_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~11_cout ),
	.combout(),
	.cout(\Add44~13_cout ));
defparam \Add44~13 .lut_mask = 16'h008E;
defparam \Add44~13 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~15 (
	.dataa(\Add40|auto_generated|result_int[8]~16_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~13_cout ),
	.combout(),
	.cout(\Add44~15_cout ));
defparam \Add44~15 .lut_mask = 16'h0017;
defparam \Add44~15 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~17 (
	.dataa(\Add40|auto_generated|result_int[9]~18_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~15_cout ),
	.combout(),
	.cout(\Add44~17_cout ));
defparam \Add44~17 .lut_mask = 16'h008E;
defparam \Add44~17 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~19 (
	.dataa(\Add40|auto_generated|result_int[10]~20_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~17_cout ),
	.combout(),
	.cout(\Add44~19_cout ));
defparam \Add44~19 .lut_mask = 16'h0017;
defparam \Add44~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~21 (
	.dataa(\Add40|auto_generated|result_int[11]~22_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~19_cout ),
	.combout(),
	.cout(\Add44~21_cout ));
defparam \Add44~21 .lut_mask = 16'h008E;
defparam \Add44~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~22 (
	.dataa(\Add40|auto_generated|result_int[12]~24_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~21_cout ),
	.combout(\Add44~22_combout ),
	.cout(\Add44~23 ));
defparam \Add44~22 .lut_mask = 16'h9617;
defparam \Add44~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~24 (
	.dataa(\Add40|auto_generated|result_int[13]~26_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~23 ),
	.combout(\Add44~24_combout ),
	.cout(\Add44~25 ));
defparam \Add44~24 .lut_mask = 16'h698E;
defparam \Add44~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~26 (
	.dataa(\Add40|auto_generated|result_int[14]~28_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~25 ),
	.combout(\Add44~26_combout ),
	.cout(\Add44~27 ));
defparam \Add44~26 .lut_mask = 16'h9617;
defparam \Add44~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~28 (
	.dataa(\Add40|auto_generated|result_int[15]~30_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~27 ),
	.combout(\Add44~28_combout ),
	.cout(\Add44~29 ));
defparam \Add44~28 .lut_mask = 16'h698E;
defparam \Add44~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~30 (
	.dataa(\Add40|auto_generated|result_int[16]~32_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~29 ),
	.combout(\Add44~30_combout ),
	.cout(\Add44~31 ));
defparam \Add44~30 .lut_mask = 16'h9617;
defparam \Add44~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~32 (
	.dataa(\Add40|auto_generated|result_int[17]~34_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~31 ),
	.combout(\Add44~32_combout ),
	.cout(\Add44~33 ));
defparam \Add44~32 .lut_mask = 16'h698E;
defparam \Add44~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~34 (
	.dataa(\Add40|auto_generated|result_int[18]~36_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~33 ),
	.combout(\Add44~34_combout ),
	.cout(\Add44~35 ));
defparam \Add44~34 .lut_mask = 16'h9617;
defparam \Add44~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~36 (
	.dataa(\Add40|auto_generated|result_int[19]~38_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~35 ),
	.combout(\Add44~36_combout ),
	.cout(\Add44~37 ));
defparam \Add44~36 .lut_mask = 16'h698E;
defparam \Add44~36 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~38 (
	.dataa(\Add40|auto_generated|result_int[20]~40_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~37 ),
	.combout(\Add44~38_combout ),
	.cout(\Add44~39 ));
defparam \Add44~38 .lut_mask = 16'h9617;
defparam \Add44~38 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~40 (
	.dataa(\Add40|auto_generated|result_int[21]~42_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~39 ),
	.combout(\Add44~40_combout ),
	.cout(\Add44~41 ));
defparam \Add44~40 .lut_mask = 16'h698E;
defparam \Add44~40 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~42 (
	.dataa(\Add40|auto_generated|result_int[22]~44_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~41 ),
	.combout(\Add44~42_combout ),
	.cout(\Add44~43 ));
defparam \Add44~42 .lut_mask = 16'h9617;
defparam \Add44~42 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~44 (
	.dataa(\Add40|auto_generated|result_int[23]~46_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~43 ),
	.combout(\Add44~44_combout ),
	.cout(\Add44~45 ));
defparam \Add44~44 .lut_mask = 16'h698E;
defparam \Add44~44 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~46 (
	.dataa(\Add40|auto_generated|result_int[24]~48_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add44~45 ),
	.combout(\Add44~46_combout ),
	.cout(\Add44~47 ));
defparam \Add44~46 .lut_mask = 16'h9617;
defparam \Add44~46 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add44~48 (
	.dataa(\Add40|auto_generated|result_int[25]~50_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add44~47 ),
	.combout(\Add44~48_combout ),
	.cout());
defparam \Add44~48 .lut_mask = 16'h6969;
defparam \Add44~48 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add45~50 (
	.dataa(\Add45~48_combout ),
	.datab(\Add44~48_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~50_combout ),
	.cout());
defparam \Add45~50 .lut_mask = 16'hAACC;
defparam \Add45~50 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~51 (
	.dataa(\Add45~46_combout ),
	.datab(\Add44~46_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~51_combout ),
	.cout());
defparam \Add45~51 .lut_mask = 16'hAACC;
defparam \Add45~51 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~52 (
	.dataa(\Add45~44_combout ),
	.datab(\Add44~44_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~52_combout ),
	.cout());
defparam \Add45~52 .lut_mask = 16'hAACC;
defparam \Add45~52 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~53 (
	.dataa(\Add45~42_combout ),
	.datab(\Add44~42_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~53_combout ),
	.cout());
defparam \Add45~53 .lut_mask = 16'hAACC;
defparam \Add45~53 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~54 (
	.dataa(\Add45~40_combout ),
	.datab(\Add44~40_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~54_combout ),
	.cout());
defparam \Add45~54 .lut_mask = 16'hAACC;
defparam \Add45~54 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~55 (
	.dataa(\Add45~38_combout ),
	.datab(\Add44~38_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~55_combout ),
	.cout());
defparam \Add45~55 .lut_mask = 16'hAACC;
defparam \Add45~55 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~56 (
	.dataa(\Add45~36_combout ),
	.datab(\Add44~36_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~56_combout ),
	.cout());
defparam \Add45~56 .lut_mask = 16'hAACC;
defparam \Add45~56 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~57 (
	.dataa(\Add45~34_combout ),
	.datab(\Add44~34_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~57_combout ),
	.cout());
defparam \Add45~57 .lut_mask = 16'hAACC;
defparam \Add45~57 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~58 (
	.dataa(\Add45~32_combout ),
	.datab(\Add44~32_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~58_combout ),
	.cout());
defparam \Add45~58 .lut_mask = 16'hAACC;
defparam \Add45~58 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~59 (
	.dataa(\Add45~30_combout ),
	.datab(\Add44~30_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~59_combout ),
	.cout());
defparam \Add45~59 .lut_mask = 16'hAACC;
defparam \Add45~59 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~60 (
	.dataa(\Add45~28_combout ),
	.datab(\Add44~28_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~60_combout ),
	.cout());
defparam \Add45~60 .lut_mask = 16'hAACC;
defparam \Add45~60 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~61 (
	.dataa(\Add45~26_combout ),
	.datab(\Add44~26_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~61_combout ),
	.cout());
defparam \Add45~61 .lut_mask = 16'hAACC;
defparam \Add45~61 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~62 (
	.dataa(\Add45~24_combout ),
	.datab(\Add44~24_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~62_combout ),
	.cout());
defparam \Add45~62 .lut_mask = 16'hAACC;
defparam \Add45~62 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add45~63 (
	.dataa(\Add45~22_combout ),
	.datab(\Add44~22_combout ),
	.datac(gnd),
	.datad(\Add38|auto_generated|result_int[17]~34_combout ),
	.cin(gnd),
	.combout(\Add45~63_combout ),
	.cout());
defparam \Add45~63 .lut_mask = 16'hAACC;
defparam \Add45~63 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add46~1 (
	.dataa(\Add42|auto_generated|result_int[1]~2_combout ),
	.datab(\Add45~63_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add46~1_cout ));
defparam \Add46~1 .lut_mask = 16'h0088;
defparam \Add46~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add46~3 (
	.dataa(\Add42|auto_generated|result_int[2]~4_combout ),
	.datab(\Add45~62_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~1_cout ),
	.combout(),
	.cout(\Add46~3_cout ));
defparam \Add46~3 .lut_mask = 16'h0017;
defparam \Add46~3 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~5 (
	.dataa(\Add42|auto_generated|result_int[3]~6_combout ),
	.datab(\Add45~61_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~3_cout ),
	.combout(),
	.cout(\Add46~5_cout ));
defparam \Add46~5 .lut_mask = 16'h008E;
defparam \Add46~5 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~7 (
	.dataa(\Add42|auto_generated|result_int[4]~8_combout ),
	.datab(\Add45~60_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~5_cout ),
	.combout(),
	.cout(\Add46~7_cout ));
defparam \Add46~7 .lut_mask = 16'h0017;
defparam \Add46~7 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~9 (
	.dataa(\Add42|auto_generated|result_int[5]~10_combout ),
	.datab(\Add45~59_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~7_cout ),
	.combout(),
	.cout(\Add46~9_cout ));
defparam \Add46~9 .lut_mask = 16'h008E;
defparam \Add46~9 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~11 (
	.dataa(\Add42|auto_generated|result_int[6]~12_combout ),
	.datab(\Add45~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~9_cout ),
	.combout(),
	.cout(\Add46~11_cout ));
defparam \Add46~11 .lut_mask = 16'h0017;
defparam \Add46~11 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~13 (
	.dataa(\Add42|auto_generated|result_int[7]~14_combout ),
	.datab(\Add45~57_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~11_cout ),
	.combout(),
	.cout(\Add46~13_cout ));
defparam \Add46~13 .lut_mask = 16'h008E;
defparam \Add46~13 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~15 (
	.dataa(\Add42|auto_generated|result_int[8]~16_combout ),
	.datab(\Add45~56_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~13_cout ),
	.combout(),
	.cout(\Add46~15_cout ));
defparam \Add46~15 .lut_mask = 16'h0017;
defparam \Add46~15 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~17 (
	.dataa(\Add42|auto_generated|result_int[9]~18_combout ),
	.datab(\Add45~55_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~15_cout ),
	.combout(),
	.cout(\Add46~17_cout ));
defparam \Add46~17 .lut_mask = 16'h008E;
defparam \Add46~17 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~19 (
	.dataa(\Add42|auto_generated|result_int[10]~20_combout ),
	.datab(\Add45~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~17_cout ),
	.combout(),
	.cout(\Add46~19_cout ));
defparam \Add46~19 .lut_mask = 16'h0017;
defparam \Add46~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~21 (
	.dataa(\Add42|auto_generated|result_int[11]~22_combout ),
	.datab(\Add45~53_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~19_cout ),
	.combout(),
	.cout(\Add46~21_cout ));
defparam \Add46~21 .lut_mask = 16'h008E;
defparam \Add46~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~23 (
	.dataa(\Add42|auto_generated|result_int[12]~24_combout ),
	.datab(\Add45~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~21_cout ),
	.combout(),
	.cout(\Add46~23_cout ));
defparam \Add46~23 .lut_mask = 16'h0017;
defparam \Add46~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~25 (
	.dataa(\Add42|auto_generated|result_int[13]~26_combout ),
	.datab(\Add45~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~23_cout ),
	.combout(),
	.cout(\Add46~25_cout ));
defparam \Add46~25 .lut_mask = 16'h008E;
defparam \Add46~25 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~27 (
	.dataa(\Add42|auto_generated|result_int[14]~28_combout ),
	.datab(\Add45~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add46~25_cout ),
	.combout(),
	.cout(\Add46~27_cout ));
defparam \Add46~27 .lut_mask = 16'h0017;
defparam \Add46~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add46~28 (
	.dataa(\Add42|auto_generated|result_int[15]~30_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add46~27_cout ),
	.combout(\Add46~28_combout ),
	.cout());
defparam \Add46~28 .lut_mask = 16'hA5A5;
defparam \Add46~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~1 (
	.dataa(\Add42|auto_generated|result_int[1]~2_combout ),
	.datab(\Add45~63_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add47~1_cout ));
defparam \Add47~1 .lut_mask = 16'h00BB;
defparam \Add47~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add47~3 (
	.dataa(\Add42|auto_generated|result_int[2]~4_combout ),
	.datab(\Add45~62_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~1_cout ),
	.combout(),
	.cout(\Add47~3_cout ));
defparam \Add47~3 .lut_mask = 16'h004D;
defparam \Add47~3 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~5 (
	.dataa(\Add42|auto_generated|result_int[3]~6_combout ),
	.datab(\Add45~61_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~3_cout ),
	.combout(),
	.cout(\Add47~5_cout ));
defparam \Add47~5 .lut_mask = 16'h002B;
defparam \Add47~5 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~7 (
	.dataa(\Add42|auto_generated|result_int[4]~8_combout ),
	.datab(\Add45~60_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~5_cout ),
	.combout(),
	.cout(\Add47~7_cout ));
defparam \Add47~7 .lut_mask = 16'h004D;
defparam \Add47~7 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~9 (
	.dataa(\Add42|auto_generated|result_int[5]~10_combout ),
	.datab(\Add45~59_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~7_cout ),
	.combout(),
	.cout(\Add47~9_cout ));
defparam \Add47~9 .lut_mask = 16'h002B;
defparam \Add47~9 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~11 (
	.dataa(\Add42|auto_generated|result_int[6]~12_combout ),
	.datab(\Add45~58_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~9_cout ),
	.combout(),
	.cout(\Add47~11_cout ));
defparam \Add47~11 .lut_mask = 16'h004D;
defparam \Add47~11 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~13 (
	.dataa(\Add42|auto_generated|result_int[7]~14_combout ),
	.datab(\Add45~57_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~11_cout ),
	.combout(),
	.cout(\Add47~13_cout ));
defparam \Add47~13 .lut_mask = 16'h002B;
defparam \Add47~13 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~15 (
	.dataa(\Add42|auto_generated|result_int[8]~16_combout ),
	.datab(\Add45~56_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~13_cout ),
	.combout(),
	.cout(\Add47~15_cout ));
defparam \Add47~15 .lut_mask = 16'h004D;
defparam \Add47~15 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~17 (
	.dataa(\Add42|auto_generated|result_int[9]~18_combout ),
	.datab(\Add45~55_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~15_cout ),
	.combout(),
	.cout(\Add47~17_cout ));
defparam \Add47~17 .lut_mask = 16'h002B;
defparam \Add47~17 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~19 (
	.dataa(\Add42|auto_generated|result_int[10]~20_combout ),
	.datab(\Add45~54_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~17_cout ),
	.combout(),
	.cout(\Add47~19_cout ));
defparam \Add47~19 .lut_mask = 16'h004D;
defparam \Add47~19 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~21 (
	.dataa(\Add42|auto_generated|result_int[11]~22_combout ),
	.datab(\Add45~53_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~19_cout ),
	.combout(),
	.cout(\Add47~21_cout ));
defparam \Add47~21 .lut_mask = 16'h002B;
defparam \Add47~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~23 (
	.dataa(\Add42|auto_generated|result_int[12]~24_combout ),
	.datab(\Add45~52_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~21_cout ),
	.combout(),
	.cout(\Add47~23_cout ));
defparam \Add47~23 .lut_mask = 16'h004D;
defparam \Add47~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~25 (
	.dataa(\Add42|auto_generated|result_int[13]~26_combout ),
	.datab(\Add45~51_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~23_cout ),
	.combout(),
	.cout(\Add47~25_cout ));
defparam \Add47~25 .lut_mask = 16'h002B;
defparam \Add47~25 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~27 (
	.dataa(\Add42|auto_generated|result_int[14]~28_combout ),
	.datab(\Add45~50_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add47~25_cout ),
	.combout(),
	.cout(\Add47~27_cout ));
defparam \Add47~27 .lut_mask = 16'h004D;
defparam \Add47~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~28 (
	.dataa(\Add42|auto_generated|result_int[15]~30_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add47~27_cout ),
	.combout(\Add47~28_combout ),
	.cout());
defparam \Add47~28 .lut_mask = 16'h5A5A;
defparam \Add47~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add47~30 (
	.dataa(\Add46~28_combout ),
	.datab(\Add47~28_combout ),
	.datac(gnd),
	.datad(\Add42|auto_generated|result_int[16]~32_combout ),
	.cin(gnd),
	.combout(\Add47~30_combout ),
	.cout());
defparam \Add47~30 .lut_mask = 16'hAACC;
defparam \Add47~30 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add50~0 (
	.dataa(\Add49~8_combout ),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(\Add50~0_combout ),
	.cout(\Add50~1 ));
defparam \Add50~0 .lut_mask = 16'h55AA;
defparam \Add50~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add50~2 (
	.dataa(\Add49~10_combout ),
	.datab(\Add47~30_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~1 ),
	.combout(\Add50~2_combout ),
	.cout(\Add50~3 ));
defparam \Add50~2 .lut_mask = 16'h694D;
defparam \Add50~2 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~4 (
	.dataa(\Add49~12_combout ),
	.datab(\Add42|auto_generated|result_int[16]~32_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~3 ),
	.combout(\Add50~4_combout ),
	.cout(\Add50~5 ));
defparam \Add50~4 .lut_mask = 16'h962B;
defparam \Add50~4 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux58~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Mux34~4_combout ),
	.datad(\Add50~4_combout ),
	.cin(gnd),
	.combout(\Mux58~2_combout ),
	.cout());
defparam \Mux58~2 .lut_mask = 16'hFAF2;
defparam \Mux58~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux44~2 (
	.dataa(\Mux34~4_combout ),
	.datab(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~4_combout ),
	.datad(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux44~2_combout ),
	.cout());
defparam \Mux44~2 .lut_mask = 16'h8088;
defparam \Mux44~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux44~3 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux44~2_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux44~3_combout ),
	.cout());
defparam \Mux44~3 .lut_mask = 16'hF8F8;
defparam \Mux44~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux45~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Mux34~4_combout ),
	.datad(\Add50~2_combout ),
	.cin(gnd),
	.combout(\Mux45~2_combout ),
	.cout());
defparam \Mux45~2 .lut_mask = 16'hD050;
defparam \Mux45~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux59~2 (
	.dataa(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\Add50~2_combout ),
	.datac(gnd),
	.datad(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux59~2_combout ),
	.cout());
defparam \Mux59~2 .lut_mask = 16'h88FF;
defparam \Mux59~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux59~3 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux59~2_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux59~3_combout ),
	.cout());
defparam \Mux59~3 .lut_mask = 16'hB2B2;
defparam \Mux59~3 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux19~0 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux19~0_combout ),
	.cout());
defparam \Mux19~0 .lut_mask = 16'h8888;
defparam \Mux19~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux46~4 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~0_combout ),
	.cin(gnd),
	.combout(\Mux46~4_combout ),
	.cout());
defparam \Mux46~4 .lut_mask = 16'h6000;
defparam \Mux46~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux60~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\Mux19~0_combout ),
	.datac(\Add50~0_combout ),
	.datad(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux60~0_combout ),
	.cout());
defparam \Mux60~0 .lut_mask = 16'h80EA;
defparam \Mux60~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add51~1 (
	.dataa(\Mux46~4_combout ),
	.datab(\Mux60~0_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\Add51~1_cout ));
defparam \Add51~1 .lut_mask = 16'h00DD;
defparam \Add51~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add51~3 (
	.dataa(\Mux45~2_combout ),
	.datab(\Mux59~3_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add51~1_cout ),
	.combout(),
	.cout(\Add51~3_cout ));
defparam \Add51~3 .lut_mask = 16'h002B;
defparam \Add51~3 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux11~0 (
	.dataa(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux11~0_combout ),
	.cout());
defparam \Mux11~0 .lut_mask = 16'h9898;
defparam \Mux11~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~14 (
	.dataa(\Mux11~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~13 ),
	.combout(\Add49~14_combout ),
	.cout(\Add49~15 ));
defparam \Add49~14 .lut_mask = 16'h694D;
defparam \Add49~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~6 (
	.dataa(\Add49~14_combout ),
	.datab(\Add38|auto_generated|result_int[17]~34_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~5 ),
	.combout(\Add50~6_combout ),
	.cout(\Add50~7 ));
defparam \Add50~6 .lut_mask = 16'h694D;
defparam \Add50~6 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux57~4 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~6_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux57~4_combout ),
	.cout());
defparam \Mux57~4 .lut_mask = 16'h0080;
defparam \Mux57~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux43~4 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~6_combout ),
	.cin(gnd),
	.combout(\Mux43~4_combout ),
	.cout());
defparam \Mux43~4 .lut_mask = 16'h6000;
defparam \Mux43~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux11~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux11~1_combout ),
	.cout());
defparam \Mux11~1 .lut_mask = 16'h000F;
defparam \Mux11~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~16 (
	.dataa(\Mux11~1_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~15 ),
	.combout(\Add49~16_combout ),
	.cout(\Add49~17 ));
defparam \Add49~16 .lut_mask = 16'h6917;
defparam \Add49~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~8 (
	.dataa(\Add49~16_combout ),
	.datab(\Add34|auto_generated|result_int[18]~36_combout ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~7 ),
	.combout(\Add50~8_combout ),
	.cout(\Add50~9 ));
defparam \Add50~8 .lut_mask = 16'h962B;
defparam \Add50~8 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux56~4 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~8_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux56~4_combout ),
	.cout());
defparam \Mux56~4 .lut_mask = 16'h0080;
defparam \Mux56~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux42~4 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~8_combout ),
	.cin(gnd),
	.combout(\Mux42~4_combout ),
	.cout());
defparam \Mux42~4 .lut_mask = 16'h6000;
defparam \Mux42~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux9~0 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux9~0_combout ),
	.cout());
defparam \Mux9~0 .lut_mask = 16'h0FF0;
defparam \Mux9~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~18 (
	.dataa(\Mux9~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~17 ),
	.combout(\Add49~18_combout ),
	.cout(\Add49~19 ));
defparam \Add49~18 .lut_mask = 16'h692B;
defparam \Add49~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~10 (
	.dataa(\Add49~18_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~9 ),
	.combout(\Add50~10_combout ),
	.cout(\Add50~11 ));
defparam \Add50~10 .lut_mask = 16'h9617;
defparam \Add50~10 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux55~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~10_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux55~2_combout ),
	.cout());
defparam \Mux55~2 .lut_mask = 16'h00A2;
defparam \Mux55~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux41~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Mux34~4_combout ),
	.datad(\Add50~10_combout ),
	.cin(gnd),
	.combout(\Mux41~2_combout ),
	.cout());
defparam \Mux41~2 .lut_mask = 16'hA020;
defparam \Mux41~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~20 (
	.dataa(\Mux11~1_combout ),
	.datab(\redist2_xMSB_uid146_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~19 ),
	.combout(\Add49~20_combout ),
	.cout(\Add49~21 ));
defparam \Add49~20 .lut_mask = 16'h962B;
defparam \Add49~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~12 (
	.dataa(\Add49~20_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~11 ),
	.combout(\Add50~12_combout ),
	.cout(\Add50~13 ));
defparam \Add50~12 .lut_mask = 16'h698E;
defparam \Add50~12 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux54~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\Mux19~0_combout ),
	.datac(\Add50~12_combout ),
	.datad(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux54~0_combout ),
	.cout());
defparam \Mux54~0 .lut_mask = 16'h80EA;
defparam \Mux54~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux40~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~12_combout ),
	.cin(gnd),
	.combout(\Mux40~0_combout ),
	.cout());
defparam \Mux40~0 .lut_mask = 16'hE888;
defparam \Mux40~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~22 (
	.dataa(\Mux11~1_combout ),
	.datab(\redist3_xMSB_uid129_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~21 ),
	.combout(\Add49~22_combout ),
	.cout(\Add49~23 ));
defparam \Add49~22 .lut_mask = 16'h694D;
defparam \Add49~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~14 (
	.dataa(\Add49~22_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~13 ),
	.combout(\Add50~14_combout ),
	.cout(\Add50~15 ));
defparam \Add50~14 .lut_mask = 16'h9617;
defparam \Add50~14 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux53~4 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~14_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux53~4_combout ),
	.cout());
defparam \Mux53~4 .lut_mask = 16'h0080;
defparam \Mux53~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux39~4 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~14_combout ),
	.cin(gnd),
	.combout(\Mux39~4_combout ),
	.cout());
defparam \Mux39~4 .lut_mask = 16'h6000;
defparam \Mux39~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux6~0 (
	.dataa(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux6~0_combout ),
	.cout());
defparam \Mux6~0 .lut_mask = 16'hAAFF;
defparam \Mux6~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~24 (
	.dataa(\Mux6~0_combout ),
	.datab(\redist4_xMSB_uid108_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~23 ),
	.combout(\Add49~24_combout ),
	.cout(\Add49~25 ));
defparam \Add49~24 .lut_mask = 16'h962B;
defparam \Add49~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~16 (
	.dataa(\Add49~24_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~15 ),
	.combout(\Add50~16_combout ),
	.cout(\Add50~17 ));
defparam \Add50~16 .lut_mask = 16'h698E;
defparam \Add50~16 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux52~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~16_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux52~2_combout ),
	.cout());
defparam \Mux52~2 .lut_mask = 16'h00A2;
defparam \Mux52~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux38~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Mux34~4_combout ),
	.datad(\Add50~16_combout ),
	.cin(gnd),
	.combout(\Mux38~2_combout ),
	.cout());
defparam \Mux38~2 .lut_mask = 16'hA020;
defparam \Mux38~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~26 (
	.dataa(\Mux11~1_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~25 ),
	.combout(\Add49~26_combout ),
	.cout(\Add49~27 ));
defparam \Add49~26 .lut_mask = 16'h692B;
defparam \Add49~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~18 (
	.dataa(\Add49~26_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~17 ),
	.combout(\Add50~18_combout ),
	.cout(\Add50~19 ));
defparam \Add50~18 .lut_mask = 16'h9617;
defparam \Add50~18 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux51~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\Mux19~0_combout ),
	.datac(\Add50~18_combout ),
	.datad(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux51~0_combout ),
	.cout());
defparam \Mux51~0 .lut_mask = 16'h80EA;
defparam \Mux51~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux37~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~18_combout ),
	.cin(gnd),
	.combout(\Mux37~0_combout ),
	.cout());
defparam \Mux37~0 .lut_mask = 16'hE888;
defparam \Mux37~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~28 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~27 ),
	.combout(\Add49~28_combout ),
	.cout(\Add49~29 ));
defparam \Add49~28 .lut_mask = 16'h698E;
defparam \Add49~28 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~20 (
	.dataa(\Add49~28_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~19 ),
	.combout(\Add50~20_combout ),
	.cout(\Add50~21 ));
defparam \Add50~20 .lut_mask = 16'h698E;
defparam \Add50~20 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux50~4 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~20_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux50~4_combout ),
	.cout());
defparam \Mux50~4 .lut_mask = 16'h0080;
defparam \Mux50~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux36~4 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~20_combout ),
	.cin(gnd),
	.combout(\Mux36~4_combout ),
	.cout());
defparam \Mux36~4 .lut_mask = 16'h6000;
defparam \Mux36~4 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux16~1 (
	.dataa(gnd),
	.datab(gnd),
	.datac(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux16~1_combout ),
	.cout());
defparam \Mux16~1 .lut_mask = 16'h0FF0;
defparam \Mux16~1 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~30 (
	.dataa(\Mux16~1_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~29 ),
	.combout(\Add49~30_combout ),
	.cout(\Add49~31 ));
defparam \Add49~30 .lut_mask = 16'h692B;
defparam \Add49~30 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~22 (
	.dataa(\Add49~30_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~21 ),
	.combout(\Add50~22_combout ),
	.cout(\Add50~23 ));
defparam \Add50~22 .lut_mask = 16'h9617;
defparam \Add50~22 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux49~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~22_combout ),
	.datad(\Mux34~4_combout ),
	.cin(gnd),
	.combout(\Mux49~2_combout ),
	.cout());
defparam \Mux49~2 .lut_mask = 16'h00A2;
defparam \Mux49~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux35~2 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Mux34~4_combout ),
	.datad(\Add50~22_combout ),
	.cin(gnd),
	.combout(\Mux35~2_combout ),
	.cout());
defparam \Mux35~2 .lut_mask = 16'hA020;
defparam \Mux35~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux3~0 (
	.dataa(gnd),
	.datab(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux3~0_combout ),
	.cout());
defparam \Mux3~0 .lut_mask = 16'h3CCC;
defparam \Mux3~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~32 (
	.dataa(\Mux3~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add49~31 ),
	.combout(\Add49~32_combout ),
	.cout(\Add49~33 ));
defparam \Add49~32 .lut_mask = 16'h964D;
defparam \Add49~32 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~24 (
	.dataa(\Add49~32_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(vcc),
	.cin(\Add50~23 ),
	.combout(\Add50~24_combout ),
	.cout(\Add50~25 ));
defparam \Add50~24 .lut_mask = 16'h698E;
defparam \Add50~24 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux34~5 (
	.dataa(\yNotZero_uid15_atan2Test_delay|delay_signals[0][0]~q ),
	.datab(\xNotZero_uid17_atan2Test_delay|delay_signals[0][0]~q ),
	.datac(\Add50~24_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux34~5_combout ),
	.cout());
defparam \Mux34~5 .lut_mask = 16'hA2A2;
defparam \Mux34~5 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux48~2 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux34~5_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux48~2_combout ),
	.cout());
defparam \Mux48~2 .lut_mask = 16'hB2B2;
defparam \Mux48~2 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux34~6 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux34~5_combout ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux34~6_combout ),
	.cout());
defparam \Mux34~6 .lut_mask = 16'hE8E8;
defparam \Mux34~6 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux2~0 (
	.dataa(\redist6_xMSB_uid70_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist8_xMSB_uid32_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\redist7_xMSB_uid51_atan2Test_b_1|delay_signals[0][0]~q ),
	.datad(gnd),
	.cin(gnd),
	.combout(\Mux2~0_combout ),
	.cout());
defparam \Mux2~0 .lut_mask = 16'h8080;
defparam \Mux2~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Add49~34 (
	.dataa(\Mux2~0_combout ),
	.datab(\redist5_xMSB_uid89_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add49~33 ),
	.combout(\Add49~34_combout ),
	.cout());
defparam \Add49~34 .lut_mask = 16'h9696;
defparam \Add49~34 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Add50~26 (
	.dataa(\Add49~34_combout ),
	.datab(\redist0_yip1_8_uid161_atan2Test_b_1|delay_signals[0][18]~q ),
	.datac(gnd),
	.datad(gnd),
	.cin(\Add50~25 ),
	.combout(\Add50~26_combout ),
	.cout());
defparam \Add50~26 .lut_mask = 16'h9696;
defparam \Add50~26 .sum_lutc_input = "cin";

cycloneive_lcell_comb \Mux47~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\Mux19~0_combout ),
	.datac(\Add50~26_combout ),
	.datad(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.cin(gnd),
	.combout(\Mux47~0_combout ),
	.cout());
defparam \Mux47~0 .lut_mask = 16'h80EA;
defparam \Mux47~0 .sum_lutc_input = "datac";

cycloneive_lcell_comb \Mux33~0 (
	.dataa(\redist10_signX_uid7_atan2Test_b_1|delay_signals[0][0]~q ),
	.datab(\redist9_signY_uid8_atan2Test_b_1|delay_signals[0][0]~q ),
	.datac(\Mux19~0_combout ),
	.datad(\Add50~26_combout ),
	.cin(gnd),
	.combout(\Mux33~0_combout ),
	.cout());
defparam \Mux33~0 .lut_mask = 16'hE888;
defparam \Mux33~0 .sum_lutc_input = "datac";

endmodule

module cordic_dspba_delay (
	delay_signals_18_0,
	delay_signals_15_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	delay_signals_0_0,
	delay_signals_17_0,
	delay_signals_16_0,
	result_int_1,
	result_int_2,
	result_int_3,
	result_int_4,
	result_int_5,
	result_int_6,
	result_int_7,
	result_int_8,
	result_int_9,
	result_int_10,
	result_int_11,
	result_int_12,
	result_int_13,
	result_int_14,
	result_int_15,
	result_int_16,
	result_int_17,
	result_int_18,
	result_int_19,
	result_int_20,
	Add30,
	Add301,
	Add302,
	Add303,
	Add304,
	Add305,
	Add306,
	Add307,
	Add308,
	Add309,
	Add3010,
	Add3011,
	Add3012,
	Add3013,
	Add3014,
	Add3015,
	Add3016,
	Add3017,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_18_0;
output 	delay_signals_15_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
output 	delay_signals_0_0;
output 	delay_signals_17_0;
output 	delay_signals_16_0;
input 	result_int_1;
input 	result_int_2;
input 	result_int_3;
input 	result_int_4;
input 	result_int_5;
input 	result_int_6;
input 	result_int_7;
input 	result_int_8;
input 	result_int_9;
input 	result_int_10;
input 	result_int_11;
input 	result_int_12;
input 	result_int_13;
input 	result_int_14;
input 	result_int_15;
input 	result_int_16;
input 	result_int_17;
input 	result_int_18;
input 	result_int_19;
input 	result_int_20;
input 	Add30;
input 	Add301;
input 	Add302;
input 	Add303;
input 	Add304;
input 	Add305;
input 	Add306;
input 	Add307;
input 	Add308;
input 	Add309;
input 	Add3010;
input 	Add3011;
input 	Add3012;
input 	Add3013;
input 	Add3014;
input 	Add3015;
input 	Add3016;
input 	Add3017;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[0][0]~20_cout ;
wire \delay_signals[0][0]~22 ;
wire \delay_signals[0][1]~24 ;
wire \delay_signals[0][2]~26 ;
wire \delay_signals[0][3]~28 ;
wire \delay_signals[0][4]~30 ;
wire \delay_signals[0][5]~32 ;
wire \delay_signals[0][6]~34 ;
wire \delay_signals[0][7]~36 ;
wire \delay_signals[0][8]~38 ;
wire \delay_signals[0][9]~40 ;
wire \delay_signals[0][10]~42 ;
wire \delay_signals[0][11]~44 ;
wire \delay_signals[0][12]~46 ;
wire \delay_signals[0][13]~48 ;
wire \delay_signals[0][14]~50 ;
wire \delay_signals[0][15]~52 ;
wire \delay_signals[0][16]~54 ;
wire \delay_signals[0][17]~56 ;
wire \delay_signals[0][18]~57_combout ;
wire \delay_signals[0][15]~51_combout ;
wire \delay_signals[0][14]~49_combout ;
wire \delay_signals[0][13]~47_combout ;
wire \delay_signals[0][12]~45_combout ;
wire \delay_signals[0][11]~43_combout ;
wire \delay_signals[0][10]~41_combout ;
wire \delay_signals[0][9]~39_combout ;
wire \delay_signals[0][8]~37_combout ;
wire \delay_signals[0][7]~35_combout ;
wire \delay_signals[0][6]~33_combout ;
wire \delay_signals[0][5]~31_combout ;
wire \delay_signals[0][4]~29_combout ;
wire \delay_signals[0][3]~27_combout ;
wire \delay_signals[0][2]~25_combout ;
wire \delay_signals[0][1]~23_combout ;
wire \delay_signals[0][0]~21_combout ;
wire \delay_signals[0][17]~55_combout ;
wire \delay_signals[0][16]~53_combout ;


dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(\delay_signals[0][18]~57_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(\delay_signals[0][15]~51_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(\delay_signals[0][14]~49_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(\delay_signals[0][13]~47_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(\delay_signals[0][12]~45_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(\delay_signals[0][11]~43_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(\delay_signals[0][10]~41_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(\delay_signals[0][9]~39_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(\delay_signals[0][8]~37_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(\delay_signals[0][7]~35_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(\delay_signals[0][6]~33_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(\delay_signals[0][5]~31_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(\delay_signals[0][4]~29_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(\delay_signals[0][3]~27_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(\delay_signals[0][2]~25_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(\delay_signals[0][1]~23_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[0][0]~21_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(\delay_signals[0][17]~55_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(\delay_signals[0][16]~53_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

cycloneive_lcell_comb \delay_signals[0][0]~20 (
	.dataa(result_int_20),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\delay_signals[0][0]~20_cout ));
defparam \delay_signals[0][0]~20 .lut_mask = 16'h0055;
defparam \delay_signals[0][0]~20 .sum_lutc_input = "datac";

cycloneive_lcell_comb \delay_signals[0][0]~21 (
	.dataa(result_int_1),
	.datab(Add3017),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][0]~20_cout ),
	.combout(\delay_signals[0][0]~21_combout ),
	.cout(\delay_signals[0][0]~22 ));
defparam \delay_signals[0][0]~21 .lut_mask = 16'h694D;
defparam \delay_signals[0][0]~21 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][1]~23 (
	.dataa(result_int_2),
	.datab(Add3016),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][0]~22 ),
	.combout(\delay_signals[0][1]~23_combout ),
	.cout(\delay_signals[0][1]~24 ));
defparam \delay_signals[0][1]~23 .lut_mask = 16'h962B;
defparam \delay_signals[0][1]~23 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][2]~25 (
	.dataa(result_int_3),
	.datab(Add3015),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][1]~24 ),
	.combout(\delay_signals[0][2]~25_combout ),
	.cout(\delay_signals[0][2]~26 ));
defparam \delay_signals[0][2]~25 .lut_mask = 16'h694D;
defparam \delay_signals[0][2]~25 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][3]~27 (
	.dataa(result_int_4),
	.datab(Add3014),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][2]~26 ),
	.combout(\delay_signals[0][3]~27_combout ),
	.cout(\delay_signals[0][3]~28 ));
defparam \delay_signals[0][3]~27 .lut_mask = 16'h962B;
defparam \delay_signals[0][3]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][4]~29 (
	.dataa(result_int_5),
	.datab(Add3013),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][3]~28 ),
	.combout(\delay_signals[0][4]~29_combout ),
	.cout(\delay_signals[0][4]~30 ));
defparam \delay_signals[0][4]~29 .lut_mask = 16'h694D;
defparam \delay_signals[0][4]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][5]~31 (
	.dataa(result_int_6),
	.datab(Add3012),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][4]~30 ),
	.combout(\delay_signals[0][5]~31_combout ),
	.cout(\delay_signals[0][5]~32 ));
defparam \delay_signals[0][5]~31 .lut_mask = 16'h962B;
defparam \delay_signals[0][5]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][6]~33 (
	.dataa(result_int_7),
	.datab(Add3011),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][5]~32 ),
	.combout(\delay_signals[0][6]~33_combout ),
	.cout(\delay_signals[0][6]~34 ));
defparam \delay_signals[0][6]~33 .lut_mask = 16'h694D;
defparam \delay_signals[0][6]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][7]~35 (
	.dataa(result_int_8),
	.datab(Add3010),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][6]~34 ),
	.combout(\delay_signals[0][7]~35_combout ),
	.cout(\delay_signals[0][7]~36 ));
defparam \delay_signals[0][7]~35 .lut_mask = 16'h962B;
defparam \delay_signals[0][7]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][8]~37 (
	.dataa(result_int_9),
	.datab(Add309),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][7]~36 ),
	.combout(\delay_signals[0][8]~37_combout ),
	.cout(\delay_signals[0][8]~38 ));
defparam \delay_signals[0][8]~37 .lut_mask = 16'h694D;
defparam \delay_signals[0][8]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][9]~39 (
	.dataa(result_int_10),
	.datab(Add308),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][8]~38 ),
	.combout(\delay_signals[0][9]~39_combout ),
	.cout(\delay_signals[0][9]~40 ));
defparam \delay_signals[0][9]~39 .lut_mask = 16'h962B;
defparam \delay_signals[0][9]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][10]~41 (
	.dataa(result_int_11),
	.datab(Add307),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][9]~40 ),
	.combout(\delay_signals[0][10]~41_combout ),
	.cout(\delay_signals[0][10]~42 ));
defparam \delay_signals[0][10]~41 .lut_mask = 16'h694D;
defparam \delay_signals[0][10]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][11]~43 (
	.dataa(result_int_12),
	.datab(Add306),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][10]~42 ),
	.combout(\delay_signals[0][11]~43_combout ),
	.cout(\delay_signals[0][11]~44 ));
defparam \delay_signals[0][11]~43 .lut_mask = 16'h962B;
defparam \delay_signals[0][11]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][12]~45 (
	.dataa(result_int_13),
	.datab(Add305),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][11]~44 ),
	.combout(\delay_signals[0][12]~45_combout ),
	.cout(\delay_signals[0][12]~46 ));
defparam \delay_signals[0][12]~45 .lut_mask = 16'h694D;
defparam \delay_signals[0][12]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][13]~47 (
	.dataa(result_int_14),
	.datab(Add304),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][12]~46 ),
	.combout(\delay_signals[0][13]~47_combout ),
	.cout(\delay_signals[0][13]~48 ));
defparam \delay_signals[0][13]~47 .lut_mask = 16'h962B;
defparam \delay_signals[0][13]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][14]~49 (
	.dataa(result_int_15),
	.datab(Add303),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][13]~48 ),
	.combout(\delay_signals[0][14]~49_combout ),
	.cout(\delay_signals[0][14]~50 ));
defparam \delay_signals[0][14]~49 .lut_mask = 16'h694D;
defparam \delay_signals[0][14]~49 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][15]~51 (
	.dataa(result_int_16),
	.datab(Add302),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][14]~50 ),
	.combout(\delay_signals[0][15]~51_combout ),
	.cout(\delay_signals[0][15]~52 ));
defparam \delay_signals[0][15]~51 .lut_mask = 16'h962B;
defparam \delay_signals[0][15]~51 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][16]~53 (
	.dataa(result_int_17),
	.datab(Add301),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][15]~52 ),
	.combout(\delay_signals[0][16]~53_combout ),
	.cout(\delay_signals[0][16]~54 ));
defparam \delay_signals[0][16]~53 .lut_mask = 16'h694D;
defparam \delay_signals[0][16]~53 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][17]~55 (
	.dataa(result_int_18),
	.datab(Add30),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][16]~54 ),
	.combout(\delay_signals[0][17]~55_combout ),
	.cout(\delay_signals[0][17]~56 ));
defparam \delay_signals[0][17]~55 .lut_mask = 16'h962B;
defparam \delay_signals[0][17]~55 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][18]~57 (
	.dataa(result_int_19),
	.datab(result_int_20),
	.datac(gnd),
	.datad(gnd),
	.cin(\delay_signals[0][17]~56 ),
	.combout(\delay_signals[0][18]~57_combout ),
	.cout());
defparam \delay_signals[0][18]~57 .lut_mask = 16'h6969;
defparam \delay_signals[0][18]~57 .sum_lutc_input = "cin";

endmodule

module cordic_dspba_delay_1 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_2 (
	delay_signals_23_0,
	delay_signals_22_0,
	delay_signals_21_0,
	delay_signals_20_0,
	delay_signals_19_0,
	delay_signals_18_0,
	delay_signals_17_0,
	delay_signals_16_0,
	delay_signals_15_0,
	delay_signals_14_0,
	delay_signals_13_0,
	delay_signals_12_0,
	delay_signals_11_0,
	delay_signals_10_0,
	delay_signals_9_0,
	delay_signals_8_0,
	delay_signals_24_0,
	delay_signals_7_0,
	delay_signals_6_0,
	delay_signals_5_0,
	delay_signals_4_0,
	delay_signals_3_0,
	delay_signals_2_0,
	delay_signals_1_0,
	delay_signals_0_0,
	result_int_1,
	result_int_2,
	result_int_3,
	result_int_4,
	result_int_5,
	result_int_6,
	result_int_7,
	result_int_8,
	result_int_9,
	result_int_10,
	result_int_11,
	result_int_12,
	result_int_13,
	result_int_14,
	result_int_15,
	result_int_16,
	result_int_17,
	result_int_18,
	result_int_19,
	result_int_20,
	result_int_21,
	result_int_22,
	result_int_23,
	result_int_24,
	result_int_201,
	result_int_25,
	Add32,
	Add321,
	Add322,
	Add323,
	Add324,
	Add325,
	Add326,
	Add327,
	Add328,
	Add329,
	Add3210,
	Add3211,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_23_0;
output 	delay_signals_22_0;
output 	delay_signals_21_0;
output 	delay_signals_20_0;
output 	delay_signals_19_0;
output 	delay_signals_18_0;
output 	delay_signals_17_0;
output 	delay_signals_16_0;
output 	delay_signals_15_0;
output 	delay_signals_14_0;
output 	delay_signals_13_0;
output 	delay_signals_12_0;
output 	delay_signals_11_0;
output 	delay_signals_10_0;
output 	delay_signals_9_0;
output 	delay_signals_8_0;
output 	delay_signals_24_0;
output 	delay_signals_7_0;
output 	delay_signals_6_0;
output 	delay_signals_5_0;
output 	delay_signals_4_0;
output 	delay_signals_3_0;
output 	delay_signals_2_0;
output 	delay_signals_1_0;
output 	delay_signals_0_0;
input 	result_int_1;
input 	result_int_2;
input 	result_int_3;
input 	result_int_4;
input 	result_int_5;
input 	result_int_6;
input 	result_int_7;
input 	result_int_8;
input 	result_int_9;
input 	result_int_10;
input 	result_int_11;
input 	result_int_12;
input 	result_int_13;
input 	result_int_14;
input 	result_int_15;
input 	result_int_16;
input 	result_int_17;
input 	result_int_18;
input 	result_int_19;
input 	result_int_20;
input 	result_int_21;
input 	result_int_22;
input 	result_int_23;
input 	result_int_24;
input 	result_int_201;
input 	result_int_25;
input 	Add32;
input 	Add321;
input 	Add322;
input 	Add323;
input 	Add324;
input 	Add325;
input 	Add326;
input 	Add327;
input 	Add328;
input 	Add329;
input 	Add3210;
input 	Add3211;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \delay_signals[0][0]~26_cout ;
wire \delay_signals[0][0]~28 ;
wire \delay_signals[0][1]~30 ;
wire \delay_signals[0][2]~32 ;
wire \delay_signals[0][3]~34 ;
wire \delay_signals[0][4]~36 ;
wire \delay_signals[0][5]~38 ;
wire \delay_signals[0][6]~40 ;
wire \delay_signals[0][7]~42 ;
wire \delay_signals[0][8]~44 ;
wire \delay_signals[0][9]~46 ;
wire \delay_signals[0][10]~48 ;
wire \delay_signals[0][11]~50 ;
wire \delay_signals[0][12]~52 ;
wire \delay_signals[0][13]~54 ;
wire \delay_signals[0][14]~56 ;
wire \delay_signals[0][15]~58 ;
wire \delay_signals[0][16]~60 ;
wire \delay_signals[0][17]~62 ;
wire \delay_signals[0][18]~64 ;
wire \delay_signals[0][19]~66 ;
wire \delay_signals[0][20]~68 ;
wire \delay_signals[0][21]~70 ;
wire \delay_signals[0][22]~72 ;
wire \delay_signals[0][23]~73_combout ;
wire \delay_signals[0][22]~71_combout ;
wire \delay_signals[0][21]~69_combout ;
wire \delay_signals[0][20]~67_combout ;
wire \delay_signals[0][19]~65_combout ;
wire \delay_signals[0][18]~63_combout ;
wire \delay_signals[0][17]~61_combout ;
wire \delay_signals[0][16]~59_combout ;
wire \delay_signals[0][15]~57_combout ;
wire \delay_signals[0][14]~55_combout ;
wire \delay_signals[0][13]~53_combout ;
wire \delay_signals[0][12]~51_combout ;
wire \delay_signals[0][11]~49_combout ;
wire \delay_signals[0][10]~47_combout ;
wire \delay_signals[0][9]~45_combout ;
wire \delay_signals[0][8]~43_combout ;
wire \delay_signals[0][23]~74 ;
wire \delay_signals[0][24]~75_combout ;
wire \delay_signals[0][7]~41_combout ;
wire \delay_signals[0][6]~39_combout ;
wire \delay_signals[0][5]~37_combout ;
wire \delay_signals[0][4]~35_combout ;
wire \delay_signals[0][3]~33_combout ;
wire \delay_signals[0][2]~31_combout ;
wire \delay_signals[0][1]~29_combout ;
wire \delay_signals[0][0]~27_combout ;


dffeas \delay_signals[0][23] (
	.clk(clk),
	.d(\delay_signals[0][23]~73_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_23_0),
	.prn(vcc));
defparam \delay_signals[0][23] .is_wysiwyg = "true";
defparam \delay_signals[0][23] .power_up = "low";

dffeas \delay_signals[0][22] (
	.clk(clk),
	.d(\delay_signals[0][22]~71_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_22_0),
	.prn(vcc));
defparam \delay_signals[0][22] .is_wysiwyg = "true";
defparam \delay_signals[0][22] .power_up = "low";

dffeas \delay_signals[0][21] (
	.clk(clk),
	.d(\delay_signals[0][21]~69_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_21_0),
	.prn(vcc));
defparam \delay_signals[0][21] .is_wysiwyg = "true";
defparam \delay_signals[0][21] .power_up = "low";

dffeas \delay_signals[0][20] (
	.clk(clk),
	.d(\delay_signals[0][20]~67_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_20_0),
	.prn(vcc));
defparam \delay_signals[0][20] .is_wysiwyg = "true";
defparam \delay_signals[0][20] .power_up = "low";

dffeas \delay_signals[0][19] (
	.clk(clk),
	.d(\delay_signals[0][19]~65_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_19_0),
	.prn(vcc));
defparam \delay_signals[0][19] .is_wysiwyg = "true";
defparam \delay_signals[0][19] .power_up = "low";

dffeas \delay_signals[0][18] (
	.clk(clk),
	.d(\delay_signals[0][18]~63_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_18_0),
	.prn(vcc));
defparam \delay_signals[0][18] .is_wysiwyg = "true";
defparam \delay_signals[0][18] .power_up = "low";

dffeas \delay_signals[0][17] (
	.clk(clk),
	.d(\delay_signals[0][17]~61_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_17_0),
	.prn(vcc));
defparam \delay_signals[0][17] .is_wysiwyg = "true";
defparam \delay_signals[0][17] .power_up = "low";

dffeas \delay_signals[0][16] (
	.clk(clk),
	.d(\delay_signals[0][16]~59_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_16_0),
	.prn(vcc));
defparam \delay_signals[0][16] .is_wysiwyg = "true";
defparam \delay_signals[0][16] .power_up = "low";

dffeas \delay_signals[0][15] (
	.clk(clk),
	.d(\delay_signals[0][15]~57_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_15_0),
	.prn(vcc));
defparam \delay_signals[0][15] .is_wysiwyg = "true";
defparam \delay_signals[0][15] .power_up = "low";

dffeas \delay_signals[0][14] (
	.clk(clk),
	.d(\delay_signals[0][14]~55_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_14_0),
	.prn(vcc));
defparam \delay_signals[0][14] .is_wysiwyg = "true";
defparam \delay_signals[0][14] .power_up = "low";

dffeas \delay_signals[0][13] (
	.clk(clk),
	.d(\delay_signals[0][13]~53_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_13_0),
	.prn(vcc));
defparam \delay_signals[0][13] .is_wysiwyg = "true";
defparam \delay_signals[0][13] .power_up = "low";

dffeas \delay_signals[0][12] (
	.clk(clk),
	.d(\delay_signals[0][12]~51_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_12_0),
	.prn(vcc));
defparam \delay_signals[0][12] .is_wysiwyg = "true";
defparam \delay_signals[0][12] .power_up = "low";

dffeas \delay_signals[0][11] (
	.clk(clk),
	.d(\delay_signals[0][11]~49_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_11_0),
	.prn(vcc));
defparam \delay_signals[0][11] .is_wysiwyg = "true";
defparam \delay_signals[0][11] .power_up = "low";

dffeas \delay_signals[0][10] (
	.clk(clk),
	.d(\delay_signals[0][10]~47_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_10_0),
	.prn(vcc));
defparam \delay_signals[0][10] .is_wysiwyg = "true";
defparam \delay_signals[0][10] .power_up = "low";

dffeas \delay_signals[0][9] (
	.clk(clk),
	.d(\delay_signals[0][9]~45_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_9_0),
	.prn(vcc));
defparam \delay_signals[0][9] .is_wysiwyg = "true";
defparam \delay_signals[0][9] .power_up = "low";

dffeas \delay_signals[0][8] (
	.clk(clk),
	.d(\delay_signals[0][8]~43_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_8_0),
	.prn(vcc));
defparam \delay_signals[0][8] .is_wysiwyg = "true";
defparam \delay_signals[0][8] .power_up = "low";

dffeas \delay_signals[0][24] (
	.clk(clk),
	.d(\delay_signals[0][24]~75_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_24_0),
	.prn(vcc));
defparam \delay_signals[0][24] .is_wysiwyg = "true";
defparam \delay_signals[0][24] .power_up = "low";

dffeas \delay_signals[0][7] (
	.clk(clk),
	.d(\delay_signals[0][7]~41_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_7_0),
	.prn(vcc));
defparam \delay_signals[0][7] .is_wysiwyg = "true";
defparam \delay_signals[0][7] .power_up = "low";

dffeas \delay_signals[0][6] (
	.clk(clk),
	.d(\delay_signals[0][6]~39_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_6_0),
	.prn(vcc));
defparam \delay_signals[0][6] .is_wysiwyg = "true";
defparam \delay_signals[0][6] .power_up = "low";

dffeas \delay_signals[0][5] (
	.clk(clk),
	.d(\delay_signals[0][5]~37_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_5_0),
	.prn(vcc));
defparam \delay_signals[0][5] .is_wysiwyg = "true";
defparam \delay_signals[0][5] .power_up = "low";

dffeas \delay_signals[0][4] (
	.clk(clk),
	.d(\delay_signals[0][4]~35_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_4_0),
	.prn(vcc));
defparam \delay_signals[0][4] .is_wysiwyg = "true";
defparam \delay_signals[0][4] .power_up = "low";

dffeas \delay_signals[0][3] (
	.clk(clk),
	.d(\delay_signals[0][3]~33_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_3_0),
	.prn(vcc));
defparam \delay_signals[0][3] .is_wysiwyg = "true";
defparam \delay_signals[0][3] .power_up = "low";

dffeas \delay_signals[0][2] (
	.clk(clk),
	.d(\delay_signals[0][2]~31_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_2_0),
	.prn(vcc));
defparam \delay_signals[0][2] .is_wysiwyg = "true";
defparam \delay_signals[0][2] .power_up = "low";

dffeas \delay_signals[0][1] (
	.clk(clk),
	.d(\delay_signals[0][1]~29_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_1_0),
	.prn(vcc));
defparam \delay_signals[0][1] .is_wysiwyg = "true";
defparam \delay_signals[0][1] .power_up = "low";

dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(\delay_signals[0][0]~27_combout ),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

cycloneive_lcell_comb \delay_signals[0][0]~26 (
	.dataa(result_int_201),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\delay_signals[0][0]~26_cout ));
defparam \delay_signals[0][0]~26 .lut_mask = 16'h00AA;
defparam \delay_signals[0][0]~26 .sum_lutc_input = "datac";

cycloneive_lcell_comb \delay_signals[0][0]~27 (
	.dataa(result_int_1),
	.datab(Add3211),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][0]~26_cout ),
	.combout(\delay_signals[0][0]~27_combout ),
	.cout(\delay_signals[0][0]~28 ));
defparam \delay_signals[0][0]~27 .lut_mask = 16'h9617;
defparam \delay_signals[0][0]~27 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][1]~29 (
	.dataa(result_int_2),
	.datab(Add3210),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][0]~28 ),
	.combout(\delay_signals[0][1]~29_combout ),
	.cout(\delay_signals[0][1]~30 ));
defparam \delay_signals[0][1]~29 .lut_mask = 16'h698E;
defparam \delay_signals[0][1]~29 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][2]~31 (
	.dataa(result_int_3),
	.datab(Add329),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][1]~30 ),
	.combout(\delay_signals[0][2]~31_combout ),
	.cout(\delay_signals[0][2]~32 ));
defparam \delay_signals[0][2]~31 .lut_mask = 16'h9617;
defparam \delay_signals[0][2]~31 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][3]~33 (
	.dataa(result_int_4),
	.datab(Add328),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][2]~32 ),
	.combout(\delay_signals[0][3]~33_combout ),
	.cout(\delay_signals[0][3]~34 ));
defparam \delay_signals[0][3]~33 .lut_mask = 16'h698E;
defparam \delay_signals[0][3]~33 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][4]~35 (
	.dataa(result_int_5),
	.datab(Add327),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][3]~34 ),
	.combout(\delay_signals[0][4]~35_combout ),
	.cout(\delay_signals[0][4]~36 ));
defparam \delay_signals[0][4]~35 .lut_mask = 16'h9617;
defparam \delay_signals[0][4]~35 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][5]~37 (
	.dataa(result_int_6),
	.datab(Add326),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][4]~36 ),
	.combout(\delay_signals[0][5]~37_combout ),
	.cout(\delay_signals[0][5]~38 ));
defparam \delay_signals[0][5]~37 .lut_mask = 16'h698E;
defparam \delay_signals[0][5]~37 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][6]~39 (
	.dataa(result_int_7),
	.datab(Add325),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][5]~38 ),
	.combout(\delay_signals[0][6]~39_combout ),
	.cout(\delay_signals[0][6]~40 ));
defparam \delay_signals[0][6]~39 .lut_mask = 16'h9617;
defparam \delay_signals[0][6]~39 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][7]~41 (
	.dataa(result_int_8),
	.datab(Add324),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][6]~40 ),
	.combout(\delay_signals[0][7]~41_combout ),
	.cout(\delay_signals[0][7]~42 ));
defparam \delay_signals[0][7]~41 .lut_mask = 16'h698E;
defparam \delay_signals[0][7]~41 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][8]~43 (
	.dataa(result_int_9),
	.datab(Add323),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][7]~42 ),
	.combout(\delay_signals[0][8]~43_combout ),
	.cout(\delay_signals[0][8]~44 ));
defparam \delay_signals[0][8]~43 .lut_mask = 16'h9617;
defparam \delay_signals[0][8]~43 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][9]~45 (
	.dataa(result_int_10),
	.datab(Add322),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][8]~44 ),
	.combout(\delay_signals[0][9]~45_combout ),
	.cout(\delay_signals[0][9]~46 ));
defparam \delay_signals[0][9]~45 .lut_mask = 16'h698E;
defparam \delay_signals[0][9]~45 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][10]~47 (
	.dataa(result_int_11),
	.datab(Add321),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][9]~46 ),
	.combout(\delay_signals[0][10]~47_combout ),
	.cout(\delay_signals[0][10]~48 ));
defparam \delay_signals[0][10]~47 .lut_mask = 16'h9617;
defparam \delay_signals[0][10]~47 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][11]~49 (
	.dataa(result_int_12),
	.datab(Add32),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][10]~48 ),
	.combout(\delay_signals[0][11]~49_combout ),
	.cout(\delay_signals[0][11]~50 ));
defparam \delay_signals[0][11]~49 .lut_mask = 16'h698E;
defparam \delay_signals[0][11]~49 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][12]~51 (
	.dataa(result_int_13),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][11]~50 ),
	.combout(\delay_signals[0][12]~51_combout ),
	.cout(\delay_signals[0][12]~52 ));
defparam \delay_signals[0][12]~51 .lut_mask = 16'h5A5F;
defparam \delay_signals[0][12]~51 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][13]~53 (
	.dataa(result_int_14),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][12]~52 ),
	.combout(\delay_signals[0][13]~53_combout ),
	.cout(\delay_signals[0][13]~54 ));
defparam \delay_signals[0][13]~53 .lut_mask = 16'hA50A;
defparam \delay_signals[0][13]~53 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][14]~55 (
	.dataa(result_int_15),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][13]~54 ),
	.combout(\delay_signals[0][14]~55_combout ),
	.cout(\delay_signals[0][14]~56 ));
defparam \delay_signals[0][14]~55 .lut_mask = 16'h5A5F;
defparam \delay_signals[0][14]~55 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][15]~57 (
	.dataa(result_int_16),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][14]~56 ),
	.combout(\delay_signals[0][15]~57_combout ),
	.cout(\delay_signals[0][15]~58 ));
defparam \delay_signals[0][15]~57 .lut_mask = 16'hA50A;
defparam \delay_signals[0][15]~57 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][16]~59 (
	.dataa(result_int_17),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][15]~58 ),
	.combout(\delay_signals[0][16]~59_combout ),
	.cout(\delay_signals[0][16]~60 ));
defparam \delay_signals[0][16]~59 .lut_mask = 16'h5A5F;
defparam \delay_signals[0][16]~59 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][17]~61 (
	.dataa(result_int_18),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][16]~60 ),
	.combout(\delay_signals[0][17]~61_combout ),
	.cout(\delay_signals[0][17]~62 ));
defparam \delay_signals[0][17]~61 .lut_mask = 16'hA50A;
defparam \delay_signals[0][17]~61 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][18]~63 (
	.dataa(result_int_19),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][17]~62 ),
	.combout(\delay_signals[0][18]~63_combout ),
	.cout(\delay_signals[0][18]~64 ));
defparam \delay_signals[0][18]~63 .lut_mask = 16'h5A5F;
defparam \delay_signals[0][18]~63 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][19]~65 (
	.dataa(result_int_20),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][18]~64 ),
	.combout(\delay_signals[0][19]~65_combout ),
	.cout(\delay_signals[0][19]~66 ));
defparam \delay_signals[0][19]~65 .lut_mask = 16'hA50A;
defparam \delay_signals[0][19]~65 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][20]~67 (
	.dataa(result_int_21),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][19]~66 ),
	.combout(\delay_signals[0][20]~67_combout ),
	.cout(\delay_signals[0][20]~68 ));
defparam \delay_signals[0][20]~67 .lut_mask = 16'h5A5F;
defparam \delay_signals[0][20]~67 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][21]~69 (
	.dataa(result_int_22),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][20]~68 ),
	.combout(\delay_signals[0][21]~69_combout ),
	.cout(\delay_signals[0][21]~70 ));
defparam \delay_signals[0][21]~69 .lut_mask = 16'hA50A;
defparam \delay_signals[0][21]~69 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][22]~71 (
	.dataa(result_int_23),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][21]~70 ),
	.combout(\delay_signals[0][22]~71_combout ),
	.cout(\delay_signals[0][22]~72 ));
defparam \delay_signals[0][22]~71 .lut_mask = 16'h5A5F;
defparam \delay_signals[0][22]~71 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][23]~73 (
	.dataa(result_int_24),
	.datab(gnd),
	.datac(gnd),
	.datad(vcc),
	.cin(\delay_signals[0][22]~72 ),
	.combout(\delay_signals[0][23]~73_combout ),
	.cout(\delay_signals[0][23]~74 ));
defparam \delay_signals[0][23]~73 .lut_mask = 16'hA50A;
defparam \delay_signals[0][23]~73 .sum_lutc_input = "cin";

cycloneive_lcell_comb \delay_signals[0][24]~75 (
	.dataa(result_int_25),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.cin(\delay_signals[0][23]~74 ),
	.combout(\delay_signals[0][24]~75_combout ),
	.cout());
defparam \delay_signals[0][24]~75 .lut_mask = 16'h5A5A;
defparam \delay_signals[0][24]~75 .sum_lutc_input = "cin";

endmodule

module cordic_dspba_delay_3 (
	xin,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[24:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_4 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_5 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_6 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_7 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_8 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_9 (
	xin,
	delay_signals_0_0,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
input 	[24:0] xin;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_10 (
	delay_signals_0_0,
	clk,
	aclr,
	ena,
	xin)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	clk;
input 	aclr;
input 	ena;
input 	[24:0] xin;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_11 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule

module cordic_dspba_delay_12 (
	delay_signals_0_0,
	xin,
	clk,
	aclr,
	ena)/* synthesis synthesis_greybox=0 */;
output 	delay_signals_0_0;
input 	[24:0] xin;
input 	clk;
input 	aclr;
input 	ena;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \delay_signals[0][0] (
	.clk(clk),
	.d(xin[0]),
	.asdata(vcc),
	.clrn(!aclr),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(ena),
	.q(delay_signals_0_0),
	.prn(vcc));
defparam \delay_signals[0][0] .is_wysiwyg = "true";
defparam \delay_signals[0][0] .power_up = "low";

endmodule
