`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2017 12:08:39
// Design Name: 
// Module Name: Registro6
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: registro de 6 bits con carga en paralelo síncrona 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Registro6(input clk, input [5:0] DATAIN, output [5:0] DATAOUT);
    reg [5:0] R;
    always @ (posedge clk)
    R <= DATAIN;
    assign DATAOUT = R;
endmodule

