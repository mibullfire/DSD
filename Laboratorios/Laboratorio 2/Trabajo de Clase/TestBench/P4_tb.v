`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 19:22:11
// Design Name: 
// Module Name: P4_tb
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


module P4_tb();
reg clk, rst, set;
reg [7:0] data_in;
wire [7:0] q;
parameter semiperiodo = 20;

P4 dut (rst, set, clk, data_in, q);

always #semiperiodo clk = !clk;

initial
begin
rst = 0; set = 0; clk = 0; data_in = 167;
#(4*semiperiodo) rst = 1; set = 1;
#(4*semiperiodo) rst = 0;
#(4*semiperiodo) set = 0;

end
endmodule
