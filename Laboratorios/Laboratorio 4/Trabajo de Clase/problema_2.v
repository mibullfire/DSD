`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 
// Design Name: 
// Module Name: Problema 2 con jerarquía
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

module P2_jerarquica(
    input [1:0] A, B, C, D, // Entradas de 2 bits
    input clk,              // Señal de reloj
    output [5:0] DATAOut    // Salida de 6 bits
    );

// Declaramos conexiones entre módulos como Wire
    wire [1:0] cable_A, cable_B, cable_C, cable_D; // Cables para las salidas de los registros de 2 bits
    wire [5:0] cable_SAL;                          // Cable para la salida del módulo de cálculo

// Instanciamos los distintos módulos que necesitaremos
    Registro RA(clk, A, cable_A);  // Registro para la entrada A
    Registro RB(clk, B, cable_B);  // Registro para la entrada B
    Registro RC(clk, C, cable_C);  // Registro para la entrada C
    Registro RD(clk, D, cable_D);  // Registro para la entrada D

    Calculo Cal(cable_A, cable_B, cable_C, cable_D, cable_SAL); // Módulo de cálculo que toma las salidas de los registros

    Registro6 Rout(clk, cable_SAL, DATAOut); // Registro de 6 bits para la salida final

endmodule

// Este módulo implementa un sistema jerárquico que toma cuatro entradas de 2 bits (A, B, C, D) y una señal de reloj (clk).
// Las entradas se registran mediante módulos de registro individuales (RA, RB, RC, RD).
// Las salidas de estos registros se pasan a un módulo de cálculo (Cal) que realiza una operación y produce una salida de 6 bits (cable_SAL).
// Finalmente, la salida del módulo de cálculo se registra en un registro de 6 bits (Rout) para producir la salida final (DATAOut).