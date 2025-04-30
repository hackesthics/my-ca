`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:09:41
// Design Name: 
// Module Name: decoder_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder_tb();
reg e;
reg[2:0]s;
wire [7:0]d;
decoder uut(.e(e),.d(d),.s(s));
initial begin
for (integer i=0;i<=8;i=i+1)
begin
s=i;
e=0;
#25;
e=1;
#25;
end
end

endmodule
