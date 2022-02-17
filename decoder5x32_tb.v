module decoder5x32_tb();

	reg [4:0] inp;
	reg en;                                        

	wire [31:0] outp; 

	//decoder5x32 dut (inp, en, outp);
	Decoder_5x32 dut(inp, en, outp);
	
	initial begin
		en <= 0;
		inp <= 5'b00000;
	end
	
	always
		#50 en <= ~en;
		
	always begin
		#15 inp <= inp + 1'b1;
	end
	
	initial
		#500 $stop;

endmodule
