`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.03.2025 14:43:41
// Design Name: 
// Module Name: major
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


module major(
    input [2:0]a,
    output out
    );
    assign out=(a[2]&a[0])|(a[1]&a[0])|(a[2]&a[1]);
endmodule
