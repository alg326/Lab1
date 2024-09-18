`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 03:14:42 PM
// Design Name: 
// Module Name: lab_1_q3
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


module Mux4_to_1(y,a,b,c,d,s);
    input [1:0] a, b, c, d, s;
    output reg [1:0]y;
    
    always @(s,a,b,c,d)
    begin
        case(s)
            2'b00 : y = a;
            2'b01 : y = b;
            2'b10 : y = c;
            2'b11 : y = d;
            default : y = 2'bxx;
        endcase
    end
 endmodule
