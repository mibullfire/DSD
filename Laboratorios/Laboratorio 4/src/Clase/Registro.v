`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2017 11:42:09
// Design Name: 
// Module Name: Registro
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: registro de 2 bits con carga en paralelo síncrona
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Registro(input clk, input [1:0] DATAIN, output [1:0] DATAOUT);
    reg [1:0] R;
    always @ (posedge clk)
    R <= DATAIN;
    assign DATAOUT = R;
endmodule
