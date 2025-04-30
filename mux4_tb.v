`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 13:10:41
// Design Name: 
// Module Name: mux4_tb
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


module mux4_tb();
reg[3:0]d;
reg[1:0]s;
wire y;
mux4 uut(.d(d),.s(s),.y(y));
initial begin
d=10;
for (integer i=0;i<=3;i=i+1)
begin
s=i;
#100;
end
end
endmodule
