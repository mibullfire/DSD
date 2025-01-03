`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 18:07:04
// Design Name: 
// Module Name: P1_tb
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


module P1_tb();
// declaramos las señales que conectan la entrada como reg
reg a_tb, b_tb, c_tb;
// declaramos las señales que van a ser las salidas con wire
wire sala, salb, salc, sald;
//declaramos la variable entera del for
integer i;

// instanciamos el diseño que queremos sumular

P1 C1(a_tb, b_tb, c_tb, sala, sald, salc, salb);

// definir los estimulos
initial
begin
a_tb = 0; b_tb = 0; c_tb = 0;
for (i=1; i<8; i = i + 1)
#10 {a_tb, b_tb, c_tb} = i;
end

endmodule
