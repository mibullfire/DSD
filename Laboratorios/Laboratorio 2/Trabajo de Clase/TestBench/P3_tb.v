`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 18:57:00
// Design Name: 
// Module Name: P3_tb
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


module P3_tb();
reg reset, load, ce, dir, clk;
reg [3:0] datain;
wire [3:0] cuenta;
parameter semiperiodo = 10;

P3 dut(clk, reset, load, ce, dir, datain, cuenta);

always #semiperiodo clk = !clk;

initial
begin
clk = 0; reset = 0; load = 0; ce = 0; dir = 0; datain = 13;
#(6*semiperiodo) reset = 1;
#(4*semiperiodo) reset = 0;
#(4*semiperiodo) load = 1;
#(6*semiperiodo) load = 0; ce = 1;
#(40*semiperiodo) dir = 1;
#(40*semiperiodo) ce = 0;
end
endmodule
