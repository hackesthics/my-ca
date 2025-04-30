`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 16:44:15
// Design Name: 
// Module Name: compara_tb
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


module compara_tb();
reg [3:0]a;
reg [3:0]b;
wire eq,lt,gt;
compara uut(.a(a),.b(b),.eq(eq),.gt(gt),.lt(lt));
initial  
for(integer i=0; i<16; i=i+1)
    begin 
    for(integer j=0; j<16; j=j+1)
    begin
    a=i;b=j;
    
    #50;
    end
    end
    
endmodule
