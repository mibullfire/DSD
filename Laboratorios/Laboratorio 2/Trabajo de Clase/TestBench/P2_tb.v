`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 18:34:10
// Design Name: 
// Module Name: P2_tb
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


module P2_tb();
reg [7:0] entradas;
wire [2:0] codigo;

P2 dut(entradas, codigo);

initial
begin
entradas = 1;
#10 entradas = 8'b00000010;
#10 entradas = 8'b00000100;
#10 entradas = 8'b00001000;
#10 entradas = 8'b00010000;
#10 entradas = 8'b00100000;
#10 entradas = 8'b01000000;
#10 entradas = 8'b10000000;
#10 entradas = $random;
#10 entradas = $random;
#10 entradas = $random;
#10 entradas = $random;
end
endmodule
