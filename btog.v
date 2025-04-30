`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 14:47:46
// Design Name: 
// Module Name: btog
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


module btog(
    input [3:0] inp,
    output [3:0] out
    );
    assign out[3]= inp[3];
    assign out[2]= inp[3]^inp[2];
    assign out[1]= inp[2]^inp[1];
    assign out[0]= inp[1]^inp[0];
endmodule
