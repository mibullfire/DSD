`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2017 21:37:31
// Design Name: 
// Module Name: design_1_tb
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


module top_tb(

    );
reg [1:0] A_tb, B_tb, C_tb, D_tb;
reg clk;
wire [5:0] DATAOUT_tb;

top_wrapper C1 (A_tb, B_tb, C_tb, D_tb, DATAOUT_tb, clk);

always #10 clk = ! clk;

initial
begin
clk=0;
A_tb = 0;
B_tb=0;
C_tb=0;
D_tb= 0;
end

always @ (negedge clk) 
begin
A_tb = $random;
B_tb=$random;
C_tb=$random;
D_tb= $random;
end

endmodule
