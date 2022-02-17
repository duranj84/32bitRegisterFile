module reg_tb();
	
	reg [31:0]Din;
	reg ld, clk, rst;
	
	wire [31:0]Dout;
	
	Register_32bit dut (Din, ld, clk, rst, Dout);
	
	initial begin
		clk <= 1'b0;
		rst <= 1'b1;
		ld <= 1'b1;
		Din <= 32'd0;
	end
	
	always
		#5 clk <= ~clk;
	
	always
		#350 ld <= ~ld;
		
	always begin
		#20 rst <= 1'b0;
		#500 rst <= 1'b1;		
	end
	
	always begin
		#15 Din [31:0] <= 32'd0;
		#15 Din [31:0] <= 32'd10;
		#15 Din [31:0] <= 32'd20;
		#15 Din [31:0] <= 32'd30;
		#15 Din [31:0] <= 32'd40;
		#15 Din [31:0] <= 32'd50;
		#15 Din [31:0] <= 32'd60;
		#15 Din [31:0] <= 32'd70;
		#15 Din [31:0] <= 32'd80;
		#15 Din [31:0] <= 32'd90;
		#15 Din [31:0] <= 32'd100;
		#15 Din [31:0] <= 32'd110;
		#15 Din [31:0] <= 32'd120;
		#15 Din [31:0] <= 32'd130;
		#15 Din [31:0] <= 32'd140;
		#15 Din [31:0] <= 32'd150;
		#15 Din [31:0] <= 32'd160;
		#15 Din [31:0] <= 32'd170;
		#15 Din [31:0] <= 32'd180;
		#15 Din [31:0] <= 32'd190;
		#15 Din [31:0] <= 32'd200;
		#15 Din [31:0] <= 32'd210;
		#15 Din [31:0] <= 32'd220;
		#15 Din [31:0] <= 32'd230;
		#15 Din [31:0] <= 32'd240;
		#15 Din [31:0] <= 32'd250;
		#15 Din [31:0] <= 32'd260;
		#15 Din [31:0] <= 32'd270;
		#15 Din [31:0] <= 32'd280;
		#15 Din [31:0] <= 32'd290;
		#15 Din [31:0] <= 32'd300;
		#15 Din [31:0] <= 32'd310;
	end
	
	initial
		#1500 $stop;
		
endmodule