`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:55:45
// Design Name: 
// Module Name: priorityencoder_tb
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


module priorityencoder_tb();
reg [3:0]a;
wire [2:0]op;
priorityencoder uut(.a(a), .op(op));
initial begin 
for(integer i=0; i<16; i=i+1)
    begin 
    a=i;
    #50;
    end
end
endmodule


