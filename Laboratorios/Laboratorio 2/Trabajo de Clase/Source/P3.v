`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 18:46:54
// Design Name: 
// Module Name: P3
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


module P3(input clk, Reset, Load, CE, DIR, input [3:0] DATAIN, output [3:0] Cuenta);
reg [3:0] contador;
assign Cuenta = contador;

always @(posedge clk, posedge Reset)
if (Reset == 1) contador <= 0; // contador <= 4'b0000
else if (Load == 1) contador <= DATAIN;
else if (CE == 1)
    if (DIR == 1) contador <= contador +1;
    else contador <= contador -1;
else
contador <= contador; //Inhibicion. Puede quitarse este ultimo else

endmodule
