`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.01.2025 13:27:08
// Design Name: 
// Module Name: p1
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

// Puerta OR de tres entradas:

module p1(input a, b, c, output sala, sald, output reg salc, salb); // Cada salida hace referencia a los apartados del ejercicio.

wire [2:0] entradas;
integer i; // Lo necesitamos para el bucle for:

// A: Usando un asignamiento continuo
assign sala = a | b | c;

// B: Usando un comportamiento cíclico continuo y un bucle for
always @*
begin
    salb = 0;
    for (i = 0; i < 3; i = i + 1)
        if (entradas[i] == 1) salb = 1; // Si una de las entradas es 1, el resultado es 1        
end

// C: Usando un comportamiento cíclico y un operador de reducción
always @*
salc = |{a, b, c};

// D: Usando primitivas del lenguaje
or C1(sald, a, b, c);

endmodule