`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:40:21
// Design Name: 
// Module Name: compara
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


module compara(
    input [3:0] a,
    input [3:0] b,
    output reg gt,eq,lt

    );
    always @ * begin
    if(a>b)
    begin
    eq=0;
    gt=1;
    lt=0;
    end
    if(a==b)
    begin
    eq=1;
    gt=0;
    lt=0;
    end
    if(a<b)
    begin
    eq=0;
    gt=0;
    lt=1;
    end
    end
endmodule
