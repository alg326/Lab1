`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:13:44 PM
// Design Name: 
// Module Name: lab_1_q2
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


module lab_1_q2(
    input [1:0]a,
    input [1:0]b,
    input [1:0]c,
    input [1:0]d,
    input s0,
    input s1,
    output [1:0]y
    );
    
    wire n1, n2;
    wire [1:0] n3, n4, n5, n6;
    
    not N1(n1, s1);
    not N2(n2, s0);
    and A1(n3[0], a[0], n1, n2);
    and A2(n4[0], b[0], n1, s0);
    and A3(n5[0], c[0], s1, n2);
    and A4(n6[0], d[0], s1, s0);
    and A5(n3[1], a[1], n1, n2);
    and A6(n4[1], b[1], n1, s0);
    and A7(n5[1], c[1], s1, n2);
    and A8(n6[1], d[1], s1, s0);
    or O1(y[0], n3[0], n4[0], n5[0], n6[0]);
    or O2(y[1], n3[1], n4[1], n5[1], n6[1]);
    
endmodule
