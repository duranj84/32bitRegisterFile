module COA_Lab3Mux(f, d0,d1, d2, d3, d4, d5,d6,d7,d8,d9,
d10, d11,d12,d13,d14,d15,d16,d17, d18, d19, d20, d21,d22
,d23,d24,d25,d26,d27,d28,d29,d30,d31, s);

input [31:0]d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, 
d13, d14, d15, d16, d17, d18, d19, d20, d21, d22, d23, d24, d25, d26, d27, d28, d29, d30, d31;
input [4:0] s;
output reg [31:0]f;


always @(s or d0 or d1 or d2 or d3 or d4 or d5 or d6 or d7 or d8 or d9 or
d10 or d11 or d12 or d13 or d14 or d15 or d16 or d17 or d18 or d19 or d20 or d21 or d22
 or d23 or d24 or d25 or d26 or d27 or d28 or d29 or d30 or d31)
 
 begin 
	case(s)
		5'b00000: f <= d0;
		5'b00001: f <= d1;
		5'b00010: f <= d2;
		5'b00011: f <= d3;
		5'b00100: f <= d4;
		5'b00101: f <= d5;
		5'b00110: f <= d6;
		5'b00111: f <= d7;
		5'b01000: f <= d8;
		5'b01001: f <= d9;
		5'b01010: f <= d10;
		5'b01011: f <= d11;
		5'b01100: f <= d12;
		5'b01101: f <= d13;
		5'b01110: f <= d14;
		5'b01111: f <= d15;
		5'b10000: f <= d16;
		5'b10001: f <= d17;
		5'b10010: f <= d18;
		5'b10011: f <= d19;
		5'b10100: f <= d20;
		5'b10101: f <= d21;
		5'b10110: f <= d22;
		5'b10111: f <= d23;
		5'b11000: f <= d24;
		5'b11001: f <= d25;
		5'b11010: f <= d26;
		5'b11011: f <= d27;
		5'b11100: f <= d28;
		5'b11101: f <= d29;
		5'b11110: f <= d30;
		5'b11111: f <= d31;
		default : f <= 32'd32;
		endcase
	end
	endmodule

