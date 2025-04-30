`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:26:41
// Design Name: 
// Module Name: bitobcd
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


module bitobcd(
    input [3:0] inp,
    output [4:0] out
    );
    assign out=(inp>9)?inp+6:inp;
endmodule
