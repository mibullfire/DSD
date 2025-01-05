# Práctica 3
En esta práctica se realiza un juego de luces con cuatro leds (led1, led2, led3, led4). Que se encienden y apagan según la siguiente tabla de estados:

(imagen)

## Código SRC

```v
module leds(input clk, dir, output reg led1, led2, led3, led4);

    reg [2:0] state, next_state;
    parameter s1 = 0, s2 = 1, s3 = 2, s4 = 3, s5 = 4, s6 = 5, s7 = 6, s8 = 7;
    reg clk_late;
    reg [5:0] contador = 0; // Para subirlo a la placa hay que usar un contado de [24:0].
    
    always @(posedge clk)
        begin
            contador = contador + 1;
            clk_late = contador[5]; // Al subirlo a la placa usar: contador[24], para el TestBench usar el 5.
        end
    
    always @(posedge clk_late) 
        state = next_state; // Damos al estado el valor que había antes-
    
    always @*
        begin
            case(state) // Iniciamos un case y completamos la asignación usando la tabla.
            s1:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s3;
                            led1 <= 1;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 0;
                        end
                    else
                        begin
                            next_state <= s2;
                            led1 <= 1;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 0;
                        end
                end
            s2:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s3;
                            led1 <= 1;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 0;
                        end
                    else
                        begin
                            next_state <= s3;
                            led1 <= 1;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 0;
                        end
                end
            s3:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s5;
                            led1 <= 0;
                            led2 <= 1;
                            led3 <= 0;
                            led4 <= 0;
                        end
                    else
                        begin
                            next_state <= s4;
                            led1 <= 0;
                            led2 <= 2;
                            led3 <= 0;
                            led4 <= 0;
                        end
                end                
            s4:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s5;
                            led1 <= 0;
                            led2 <= 1;
                            led3 <= 0;
                            led4 <= 0;
                        end
                    else
                        begin
                            next_state <= s5;
                            led1 <= 0;
                            led2 <= 2;
                            led3 <= 0;
                            led4 <= 0;
                        end
                end  
            s5:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s7;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 1;
                            led4 <= 0;
                        end
                    else
                        begin
                            next_state <= s6;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 1;
                            led4 <= 0;
                        end
                end
            s6:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s7;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 1;
                            led4 <= 0;
                        end
                    else
                        begin
                            next_state <= s7;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 1;
                            led4 <= 0;
                        end
                end
            s7:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s1;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 1;
                        end
                    else
                        begin
                            next_state <= s8;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 1;
                        end
                end
            s8:
                begin
                    if(dir == 0)
                        begin
                            next_state <= s1;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 1;
                        end
                    else
                        begin
                            next_state <= s1;
                            led1 <= 0;
                            led2 <= 0;
                            led3 <= 0;
                            led4 <= 1;
                        end
                end 
             default:
                begin
                    next_state <= s1;
                    led1 <= 0;
                    led2 <= 0;
                    led3 <= 0;
                    led4 <= 1;
                end
            endcase
        end

endmodule
```

## TestBench

```v
module leds_test();
    reg clk_tb, dir_tb;
    wire led1_tb, led2_tb, led3_tb, led4_tb;
    
    leds C1(clk_tb, dir_tb, led1_tb, led2_tb, led3_tb, led4_tb);
    
    always #10 clk_tb = !clk_tb;
    
    initial
        begin
            clk_tb = 0;
            dir_tb = 0;
            #1000;
            dir_tb = 1;
        end
endmodule
```