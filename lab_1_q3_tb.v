`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 03:23:52 PM
// Design Name: 
// Module Name: Mux4_to_1_tb
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


module Mux4_to_1_tb;
wire [1:0] y; //output 
reg [1:0] a,b,c,d,s; //input

Mux4_to_1 uut (y,a,b,c,d,s);

initial begin
        a=2'b01;b=2'b00;c=2'b00;d=2'b00;s=2'b00;
    #10 a=2'b00;b=2'b01;c=2'b00;d=2'b00;s=2'b01;
    #10 a=2'b00;b=2'b00;c=2'b01;d=2'b00;s=2'b10;
    #10 a=2'b00;b=2'b00;c=2'b00;d=2'b01;s=2'b11;
    
    #10 $stop;
    
    end
endmodule
