`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:50:27
// Design Name: 
// Module Name: btox3_tb
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


module btox3_tb();
reg[3:0]inp;
wire [4:0]out;
btox3 uut(.inp(inp),.out(out));
initial begin
for (integer i=0;i<=16;i=i+1)
begin
inp=i;
#25;
end
end
endmodule
