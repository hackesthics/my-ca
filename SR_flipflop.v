`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.04.2025 15:17:08
// Design Name: 
// Module Name: SR_flipflop
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


module SR_flipflop(
    input S,
    input R,
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
        else begin
            case ({S, R})
                2'b00: Q <= Q;
                2'b01: Q <= 0;
                2'b10: Q <= 1;
                2'b11: Q <= 1'bx;  // Undefined
            endcase
        end
    end

endmodule

