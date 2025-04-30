`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:19:21
// Design Name: 
// Module Name: T_flipflop
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


module T_flipflop(
    input T,
    input CLK,
    input CLR,
    input PR,
    output reg Q
);

    always @(posedge CLK or negedge CLR or posedge PR) begin
        if (!CLR)
            Q <= 0;
        else if (PR)
            Q <= 1;
        else if (T)
            Q <= ~Q;
        else
            Q <= Q;
    end

endmodule
