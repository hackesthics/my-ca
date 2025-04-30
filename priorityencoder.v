`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:51:46
// Design Name: 
// Module Name: priorityencoder
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


module priorityencoder(
input [3:0]a,
    output reg [2:0]op
    );
    always @(*) begin
        casex(a)
        4'b1xxx : op=3'b011;
        4'b01xx : op=3'b010;
        4'b001x : op=3'b001;
        4'b0001 : op=3'b000;
        default op=3'b000;
        endcase
        end
endmodule
