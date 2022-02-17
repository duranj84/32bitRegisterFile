module decoder5x32(

input [4:0] inp,                                  

input en,                                         

output [31:0] outp );                             

wire [3:0] twotofour;                             

decoder2x4 x1(twotofour,inp[4:3],en);             
decoder3x8 x2(outp[7:0], inp[2:0],twotofour[0]);  
decoder3x8 x3(outp[15:8], inp[2:0],twotofour[1]);
decoder3x8 x4(outp[23:16], inp[2:0],twotofour[2]);
decoder3x8 x5(outp[31:24], inp[2:0],twotofour[3]);

endmodule



//2:4 decoder

module decoder2x4(

output reg [3:0] outp,

input [1:0] inp,

input en);

always @(inp,en)

if(en)

case(inp)
2'b00: outp=4'b0001;
2'b01: outp=4'b0010;
2'b10: outp=4'b0100;
2'b11: outp=4'b1000;
default: outp=0;

endcase

else outp=0;

endmodule



// 3:8 decoder

module decoder3x8(

output reg [7:0] outp,

input [2:0] inp,

input en);

always @(inp,en)

if(en)

case(inp)                                  
0: outp =8'b00000001;
1: outp =8'b00000010;
2: outp =8'b00000100;
3: outp =8'b00001000;
4: outp =8'b00010000;
5: outp =8'b00100000;
6: outp =8'b01000000;
7: outp =8'b10000000;
default: outp=0;

endcase

else outp=0;

endmodule