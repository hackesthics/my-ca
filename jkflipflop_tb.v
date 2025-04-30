`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:11:27
// Design Name: 
// Module Name: jkflipflop_tb
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


module JK_flipflop_test;

    reg J;
    reg K;
    reg CLK;
    reg CLR;
    reg PR;

    wire Q;
    wire P;

    JK_flipflop uut (
        .J(J), .K(K), .CLK(CLK), .CLR(CLR), .PR(PR), .Q(Q), .P(P)
    );

    initial begin
        CLK = 0;
        J = 0; K = 0; CLR = 1; PR = 0; #100;
        J = 0; K = 1; CLR = 1; PR = 0; #100;
        J = 1; K = 0; CLR = 1; PR = 0; #100;
        J = 1; K = 1; CLR = 1; PR = 0; #100;
        J = 0; K = 0;                #100;
        J = 0; K = 0; CLR = 1; PR = 1; #100;
        J = 0; K = 0; CLR = 0; PR = 0; #100;
    end

    always #50 CLK = ~CLK;

endmodule
