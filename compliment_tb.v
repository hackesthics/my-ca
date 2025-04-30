`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:28:51
// Design Name: 
// Module Name: compliment_tb
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


module compliment_tb();
reg [3:0]a;
wire [3:0]out;
compliment uut(.a(a),.out(out));
initial begin
for(integer i=0;i<=16;i=i+1)
begin
a=i;
#25;
end
end
endmodule


