`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.03.2025 15:24:52
// Design Name: 
// Module Name: decfunc
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

module decorder3x8(
    input [2:0]a,
    output [7:0]d
    );
    assign d[7]=a[2]&&a[1]&&a[0];
    assign d[6]=a[2]&&a[1]&&!a[0];
    assign d[5]=a[2]&&!a[1]&&a[0];
    assign d[4]=a[2]&&!a[1]&&!a[0];
    assign d[3]=!a[2]&&a[1]&&a[0];
    assign d[2]=!a[2]&&a[1]&&!a[0];
    assign d[1]=!a[2]&&!a[1]&&a[0];
    assign d[0]=!a[2]&&!a[1]&&!a[0];
endmodule

module funcdecorder(
    input [2:0]a,
    output F1,F2,F3
    );
    wire [7:0]d;
    decorder3x8 f (.a(a), .d(d));
    assign F1=!(!(d[2]&d[2])&!(d[4]&d[4])&!(d[7]&d[7]));
    assign F2=!(!(d[0]&d[0])&!(d[3]&d[3]));
    assign F3=!(!(d[0]&d[0])&!(d[3]&d[3])&!(d[2]&d[2])&!(d[4]&d[4])&!(d[7]&d[7]));
endmodule

