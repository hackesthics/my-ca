`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:00:54
// Design Name: 
// Module Name: funcdecoder_tb
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


module funcdecorder_tb();
    reg [2:0]a;
    wire F1,F2,F3;
    funcdecorder uut(.a(a),.F1(F1), .F2(F2), .F3(F3));
    initial begin 
    for(integer i=0; i<8; i=i+1)
        begin 
            a=i;
            #100;
        end
    end
endmodule

