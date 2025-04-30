`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 14:46:20
// Design Name: 
// Module Name: mux8
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


module mux8(
    input [7:0] d,
    input [2:0] s,
    output y
    );
    wire y0,y1;
    mux4 muxa(.d(d[3:0]),.s(s[1:0]),.y(y0));
    mux4 muxb(.d(d[7:4]),.s(s[1:0]),.y(y1));
    assign y=s[2]?y1:y0;
endmodule
