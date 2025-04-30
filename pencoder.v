`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2025 10:03:43
// Design Name: 
// Module Name: pencoder
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


module pencoder(
input [3:0]i,
output [1:0]z,
output v
    );
    assign z=(i[3])?2'b11:
    (i[2])?2'b10:
    (i[1])?2'b01:
    (i[0])?2'b00:2'b00;
    assign v=|i;
endmodule
