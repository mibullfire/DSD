`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.07.2017 11:50:23
// Design Name: 
// Module Name: Calculo
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: dadas 4 entradas A, B, C y D, devuelve el resultadp de la operacion ((A * B) + C) * D
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Calculo(input [1:0] A, B, C, D, output [5:0]Sal);
    assign Sal = ((A * B) + C) *D; // Asignamos el valor de la cuenta a la salida.
    
endmodule
