`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:20:16
// Design Name: 
// Module Name: T_flipflop_test
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


module T_flipflop_test;

    reg T;
    reg CLK;
    reg CLR;
    reg PR;

    wire Q;

    T_flipflop uut (.T(T), .CLK(CLK), .CLR(CLR), .PR(PR), .Q(Q));

    initial begin
        CLK = 0;
        T = 0; CLR = 1; PR = 0; #100;
        T = 1;                 #100;
        T = 1;                 #100;
        T = 0;                 #100;
        PR = 1;                #100;
        CLR = 0;               #100;
    end

    always #50 CLK = ~CLK;

endmodule
