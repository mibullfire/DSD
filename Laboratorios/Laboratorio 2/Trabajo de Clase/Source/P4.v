`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 19:14:36
// Design Name: 
// Module Name: P4
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


module P4(input rst, set, clk, input [7:0] data_in, output reg [7:0] q);
reg [7:0] R1, R2, R3;

always @(posedge clk)
if (rst) begin R1 <= 0; R2 <= 0; R3 <= 0; q <= 0; end
else if (set) begin R1 <= 8'b11111111; R2 <= 255; R3 <= 255; q <= 255; end
else begin R1 <= data_in; R2 <= R1; R3 <= R2; q <= R3; end 

endmodule
