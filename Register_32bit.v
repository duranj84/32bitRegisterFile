module Register_32bit (Din, ld, clk, rst, Dout);	
	
	input [31:0] Din;
	input ld, clk, rst;
	output reg [31:0] Dout;	
	
	always @ (posedge clk or posedge rst) begin
		if (rst==1) Dout <= 0;
		else if (ld==1) Dout <= Din;
	end
	
endmodule
