module regFile_tb();

	reg clk, rst, writeEn;
	reg [31:0] Din;
	reg [4:0] read1Add, read2Add, writeAdd;
	
	wire [31:0] Dout1, Dout2;
	
	regFile_32x32 dut (clk, rst, Din, writeEn, read1Add, read2Add, writeAdd, Dout1, Dout2);
	
	initial begin
		clk <= 1'b0;
		rst <= 1'b1;
		writeEn <= 1'b0;
		Din <= 32'b0;
		read1Add <= 5'b0;
		read2Add <= 5'b0;
		writeAdd <= 5'b0;
	end
	
	always
		#5 clk <= ~clk;
		
	always begin
		#5 writeEn <= 1;
		#45 writeEn <= 0;
	end
		
		
	always begin
		#20 rst <= 1'b0;
		#570 rst <= 1'b1;
	end
	
	always begin
		#25 Din <= {$random, $random};
		writeAdd <= writeAdd + 5'b1;
		read1Add <= read1Add + 5'b1;
		read2Add <= read2Add + 5'b1;
		#20;
	end
	
	initial
		#2000 $stop;
	
endmodule