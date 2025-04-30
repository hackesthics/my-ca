`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2025 13:25:35
// Design Name: 
// Module Name: incrementer_tb
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


module incrementer_tb();
reg [3:0]inp;
wire [3:0]o;

incrementer uut(.inp(inp),.o(o));

initial begin

for(inp=0;inp<16;inp=inp+1)
begin
#25;
end
end
endmodule
