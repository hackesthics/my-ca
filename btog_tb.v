`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:54:28
// Design Name: 
// Module Name: btog_tb
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


module btog_tb();
reg[3:0]inp;
wire [3:0]out;
btog uut(.inp(inp),.out(out));
initial begin
for (integer i=0;i<=16;i=i+1)
begin
inp=i;
#100;
end
end

endmodule

