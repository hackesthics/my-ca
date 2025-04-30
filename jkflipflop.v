`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:10:02
// Design Name: 
// Module Name: jkflipflop
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


module JK_flipflop(
    input J,
    input K,
    input CLK,
    input PR,
    input CLR,
    output Q,
    output P
);

    reg qm = 0;

    always @(posedge CLK) begin
        if (PR == 1)
            qm = 1;
        else if (CLR == 0)
            qm = 0;
        else if (J == 0 && K == 1)
            qm = 0;
        else if (J == 1 && K == 0)
            qm = 1;
        else if (J == 0 && K == 0)
            qm = P;
        else if (J == 1 && K == 1)
            qm = ~P;
    end

    assign P = qm;
    assign Q = ~P;

endmodule

