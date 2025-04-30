`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:18:33
// Design Name: 
// Module Name: SR_flipflop_test
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


module SR_flipflop_test;

    reg S;
    reg R;
    reg CLK;
    reg CLR;
    reg PR;

    wire Q;

    SR_flipflop uut (.S(S), .R(R), .CLK(CLK), .CLR(CLR), .PR(PR), .Q(Q));

    initial begin
        CLK = 0;
        S = 0; R = 0; CLR = 1; PR = 0; #100;
        S = 1; R = 0;                  #100;
        S = 0; R = 1;                  #100;
        S = 1; R = 1;                  #100;
        PR = 1;                        #100;
        CLR = 0;                       #100;
    end

    always #50 CLK = ~CLK;

endmodule

