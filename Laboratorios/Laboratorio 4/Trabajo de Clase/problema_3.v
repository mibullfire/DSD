`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: Problema 3 sin jerarquía
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

module P3_noJerarquica(
    input [1:0] A, B, C, D,  // Entradas de 2 bits A, B, C y D
    input clk,               // Entrada de reloj
    output reg [5:0] DATAOut // Registro de salida de 6 bits DATAOut
    );

    reg [1:0] rA, rB, rC, rD; // Registros de 2 bits para almacenar las entradas

    // Bloque always activado en el flanco de subida del reloj
    always @ (posedge clk)
    begin
        rA <= A; // Almacenar la entrada A en el registro rA
        rB <= B; // Almacenar la entrada B en el registro rB
        rC <= C; // Almacenar la entrada C en el registro rC
        rD <= D; // Almacenar la entrada D en el registro rD
        // Calcular la salida como ((rA * rB) + rC) * rD y almacenar en DATAOut
        DATAOut <= ((rA * rB) + rC) * rD;
    end

endmodule

// Este módulo implementa un sistema sin jerarquía que toma cuatro entradas de 2 bits (A, B, C, D) y una señal de reloj (clk).
// Las entradas se almacenan en registros de 2 bits (rA, rB, rC, rD) en el flanco de subida del reloj.
// La salida se calcula como ((rA * rB) + rC) * rD y se almacena en un registro de 6 bits (DATAOut).
// El cálculo y el almacenamiento de la salida se realizan en el mismo bloque always.