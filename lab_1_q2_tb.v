`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:25:56 PM
// Design Name: 
// Module Name: Mux4_by_1_tb
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
 

module lab_1_q2_tb;
wire [1:0] y; //output 
reg [1:0] a,b,c,d;
reg s0,s1; //input

lab_1_q2 uut (a,b,c,d,s0,s1,y);

initial begin
        a=2'b01;b=2'b00;c=2'b00;d=2'b00;s0=1'b0;s1=1'b0;
    #10 a=2'b00;b=2'b01;c=2'b00;d=2'b00;s0=1'b1;s1=1'b0;
    #10 a=2'b00;b=2'b00;c=2'b01;d=2'b00;s0=1'b0;s1=1'b1;
    #10 a=2'b00;b=2'b00;c=2'b00;d=2'b01;s0=1'b1;s1=1'b1;
    
    #10 $stop;
    
    end
endmodule
