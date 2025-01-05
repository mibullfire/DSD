`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: La Peña del Moco
// Engineer: Paco
// 
// Create Date: 30.09.2024 17:58:27
// Design Name: Guayaba
// Module Name: leds
// Project Name: Patata
// Target Devices: Adultos
// Tool Versions: 
// Description: Me gustan mucho las patatas fritas, jejegod
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module leds(input clk, dir, output reg led1, led2, led3, led4);

    reg [2:0] state, next_state;
    parameter s1 = 0, s2 = 1, s3 = 2, s4 = 3, s5 = 4, s6 = 5, s7 = 6, s8 = 7;
    reg clk_late;
    reg [24:0] contador = 0; 
    
    always@(posedge clk)
        begin 
            contador = contador + 1;
            clk_late = contador[24];
        end
        
    always@(posedge clk_late)
        state = next_state;
        
    always@*
        begin
            case(state)
            s1:
                begin
                    if(dir==0)
                        begin
                            next_state <= s3;
                            led1<=1;
                            led2<=0;
                            led3<=0;
                            led4<=0;
                        end
                    else
                        begin
                            next_state<=s2;
                            led1<=1;
                            led2<=0;
                            led3<=0;
                            led4<=0;
                        end
                end
            
            s2:
                begin
                    if(dir==0)
                        begin
                            next_state<=s3;
                            led1<=1;
                            led2<=0;
                            led3<=0;
                            led4<=0;
                        end
                    else
                        begin
                            next_state<=s3;
                            led1<=1;
                            led2<=0;
                            led3<=0;
                            led4<=0;
                        end
                end
            
            s3:
                begin
                    if(dir==0)
                        begin
                            next_state<=s5;
                            led1<=0;
                            led2<=1;
                            led3<=0;
                            led4<=0;
                        end
                    else
                        begin
                            next_state<=s4;
                            led1<=0;
                            led2<=1;
                            led3<=0;
                            led4<=0;
                        end
                end
           
            s4:
                begin
                    if(dir==0)
                        begin
                            next_state<=s5;
                            led1<=0;
                            led2<=1;
                            led3<=0;
                            led4<=0;
                        end
                    else
                        begin
                            next_state<=s5;
                            led2<=1;
                            led1<=0;
                            led3<=0;
                            led4<=0;
                        end
                end
           
            s5:
                begin
                    if(dir==0)
                        begin
                            next_state<=s7;
                            led3<=1;
                            led1<=0;
                            led2<=0;
                            led4<=0;
                        end
                    else
                        begin
                            next_state<=s6;
                            led3<=1;
                            led1<=0;
                            led2<=0;
                            led4<=0;
                        end
                end
            
            s6:
                begin
                    if(dir==0)
                        begin
                            next_state<=s7;
                            led3<=1;
                            led1<=0;
                            led2<=0;
                            led4<=0;
                        end
                    else
                        begin
                            next_state<=s7;
                            led3<=1;
                            led1<=0;
                            led2<=0;
                            led4<=0;
                        end
                end
           
            s7:
                begin
                    if(dir==0)
                        begin
                            next_state<=s1;
                            led4<=1;
                            led1<=0;
                            led2<=0;
                            led3<=0;
                        end
                    else
                        begin
                            next_state<=s8;
                            led1<=0;
                            led2<=0;
                            led3<=0;
                            led4<=1;
                        end
                    end
            
            s8:
                begin
                    if(dir==0)
                        begin
                            next_state<=s1;
                            led4<=1;
                            led1<=0;
                            led2<=0;
                            led3<=0;
                        end
                else
                        begin
                            next_state<=s1;
                            led4<=1;
                            led1<=0;
                            led2<=0;
                            led3<=0;
                        end
                end
           
            default:
                begin
                    next_state<=s1;
                    led1<=0;
                    led2<=0;
                    led3<=0;
                    led4<=1;
                end
            endcase
        end                 
endmodule
