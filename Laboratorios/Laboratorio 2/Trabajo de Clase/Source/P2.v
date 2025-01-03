`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 18:25:43
// Design Name: 
// Module Name: P2
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


module P2(input [7:0] entradas, output reg [2:0] salida);

always @*
case(entradas)
1: salida = 0;
2: salida = 1;
4: salida = 2;
8: salida = 3;
8'b00010000: salida = 3'b100; //salida = 4
8'b00100000: salida = 5;
8'b01000000: salida = 6;
8'b10000000: salida = 7;

default: salida = 3'bx;
endcase

endmodule
