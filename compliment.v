`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 15:13:01
// Design Name: 
// Module Name: compliment
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


module compliment(
    input [3:0]a,
    output [3:0]out
    );
    assign out[3]=(!a[3]&a[0])|(!a[3]&a[1])|(!a[3]&a[2]&!a[0])|(a[3]&!a[2]&!a[1]&!a[0]);
    assign out[2]=(!a[2]&a[0])|(!a[2]&a[1]&!a[0])|(a[2]&!a[1]&!a[0]);
    assign out[1]=(a[1]^a[0]);
    assign out[0]=(a[0]);
endmodule
