`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/27/2024 01:54:35 PM
// Design Name: 
// Module Name: Multiplexer
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


module Mux8_by_1(
    input a,
    input b,
    input c,
    input d,
    input e,
    input f,
    input g,
    input h,
    input s0,
    input s1,
    input s2,
    output y
    );
    
    wire n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
    
    not N1(n1, s2);
    not N2(n2, s1);
    not N3(n3, s0);
    and A1(n4, a, n1, n2, n3);
    and A2(n5, b, n1, n2, s0);
    and A3(n6, c, n1, s1, n3);
    and A4(n7, d, n1, s1, s0);
    and A5(n8, e, s2, n2, n3);
    and A6(n9, f, s2, n2, s0);
    and A7(n10, g, s2, sl, n3);
    and A8(n11, h, s2, sl, s0);
    or O1(y, n4, n5, n6, n7, n8, n9, n10, n11);
    
endmodule
