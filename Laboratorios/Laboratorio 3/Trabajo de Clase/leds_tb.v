`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 18:18:58
// Design Name: 
// Module Name: leds_tb
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


module leds_tb();
    reg clk_tb,dir_tb;
    wire led1_tb,led2_tb,led3_tb,led4_tb;

    leds dut(clk_tb, dir_tb, led1_tb, led2_tb, led3_tb, led4_tb); 

    always#10 clk_tb=!clk_tb;

    initial begin
        clk_tb = 0;
        dir_tb = 0;
        #10000;
        dir_tb = 1;
    end
endmodule
