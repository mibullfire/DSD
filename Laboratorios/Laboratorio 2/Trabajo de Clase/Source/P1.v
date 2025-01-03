`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Tsubaki Inc.
// Engineer: Miguel Toro
// 
// Create Date: 23.09.2024 17:50:28
// Design Name: 
// Module Name: P1
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


module P1(input a, b, c, output sala, sald, output reg salc, salb); // Las salidas hacen referencia a los apartados del ejercicio

wire [2:0] entradas;
integer i;

// Estas dos descripciones son estrucuturales
or C1(sald, a, b, c);
assign sala = a | b | c;

// Estas otras son ejemplos de modelado de comportamiento
assign entradas = {a, b, c}; // Asignamiento de una entrada de trs bits donde el bit mas siginificativo es la a, y menos la c

always @*
begin
salb = 0;
for (i=0; i<3; i= i+1)
if (entradas[i] == 1) salb = 1;
end


always @*
salc = |entradas; // salc= |{a, b, c}; es lo mismo

endmodule


