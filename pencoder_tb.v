`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 10:10:19
// Design Name: 
// Module Name: pencoder_tb
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


module pencoder_tb;
reg [3:0]a;
wire [1:0]z;
wire v;
pencoder uut (.a(a), .z(z), .v(v));
initial begin
for(integer i=0;i<16;i=i+1)begin
a=i;#50;
end
end
endmodule
