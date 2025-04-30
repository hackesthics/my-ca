`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:15:25
// Design Name: 
// Module Name: D_flipflop_test
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


module D_flipflop_test;

    reg D;
    reg CLK;
    reg CLR;
    reg PR;

    wire Q;

    D_flipflop uut (.D(D), .CLK(CLK), .CLR(CLR), .PR(PR), .Q(Q));

    initial begin
        CLK = 0;
        D = 0; CLR = 1; PR = 0; #100;
        D = 1;                 #100;
        D = 0;                 #100;
        PR = 1;                #100;
        PR = 0; CLR = 0;       #100;
    end

    always #50 CLK = ~CLK;

endmodule

