`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2025 15:08:19
// Design Name: 
// Module Name: gtob
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


module gtob(
    input [3:0] inp,
    output [3:0] out
    );
    
    assign out[3]= inp[3];
    assign out[2]= out[3]^inp[2];
    assign out[1]= out[2]^inp[1];
    assign out[0]= out[1]^inp[0];
    
endmodule
