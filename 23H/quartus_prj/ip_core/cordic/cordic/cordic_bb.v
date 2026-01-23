
module cordic (
	clk,
	areset,
	x,
	y,
	q,
	en);	

	input		clk;
	input		areset;
	input	[9:0]	x;
	input	[9:0]	y;
	output	[12:0]	q;
	input	[0:0]	en;
endmodule
