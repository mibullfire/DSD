# Laboratorio 2
## Ejercicio 1

Escriba descripciones de una puerta or de tres entradas:
```v
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
```

Para hacer el TestBench:

```v
module p1_test();
    
    reg a_tb, b_tb, c_tb; // Las señales de entrada con reg
    wire sala, salb, salc, sald; // Las señales de salida con wire
    integer i; // Variable int para el bucle for
    
    // Instancia del diseño
    p1 C1(a_tb, b_tb, c_tb, sala, sald, salc, salb);
    
    // definir los estimulos
    initial
    begin
        a_tb = 0; b_tb = 0; c_tb = 0;
        for (i=1; i<8; i = i + 1)
            #10 {a_tb, b_tb, c_tb} = i;
    end
endmodule
```

## Ejercicio 2

Escriba una descicipción usando Verilog de un circuito codificador de 3 bits (8 entradas en forma onehot y 3 salidas en codificacion binaria). Valide su comportamiento.

```v
module p2(input [7:0] entradas, output reg [2:0] salida);

    always @*
    case(entradas)
        1: salida = 0;
        2: salida = 1;
        3: salida = 2;
        4: salida = 3;
        5: salida = 4;
        6: salida = 5;
        7: salida = 6;
        8: salida = 7;
        
        default: salida = 3'bx;
    endcase
endmodule
```

Para el TestBench:

```v
module p2_test();
    
    reg [7:0] entradas;
    wire [2:0] salida;
    
    p2 C2(entradas, salida);
    
    initial
        begin
            entradas = 1;
            #10 entradas = 2;
            #10 entradas = 3;
            #10 entradas = 4;
            #10 entradas = 5;
            #10 entradas = 6;
            #10 entradas = 7;
            #10 entradas = 8;
        end
endmodule
```

## Ejercicio 3

Escriba una descripción usando Verilog de un contador de 4 bits con las siguientes operaciones: Reset asíncrono (con Reset = 1), Carga síncrona en paralelo (con Reset = 0 y Load = 1), Cuenta ascendente (con Reset = 0, Load = 0, CE = 1 y DIR = 1), Cuenta descendente (con Reset = 0, Load = 0, CE = 1 y DIR = 0) e Inhibición (con Reset = 0, Load = 0, CE = 0). Valide su comportamiento.

```v
module p3(input clk, reset, load, ce, dir, input [3:0] datain, output [3:0] dataout);
    reg [3:0] contador;
    assign dataout = contador;
    
    always @(posedge clk, posedge reset)
        if (reset == 1) contador <= 0;
        else if (load == 1) contador <= datain;
        else if (ce == 1)
            if (dir == 1) contador <= contador + 1;
            else contador <= contador - 1;
            
        else contador <= contador; //Inhibición
endmodule
```

Para el TestBench:

```v
module p3_test();
    reg clk, reset, load, ce, dir;
    reg [3:0] datain;
    wire [3:0] dataout;
    parameter semiperiodo = 10;

    p3 C3(clk, reset, load, ce, dir, datain, dataout);
    
    always #semiperiodo clk = !clk;
    
    initial
    begin
        clk = 0; reset = 0; load = 0; ce = 0; dir = 0; datain = 13;
        #(6*semiperiodo) reset = 1;
        #(4*semiperiodo) reset = 0;
        #(4*semiperiodo) load = 1;
        #(6*semiperiodo) load = 0; ce = 1;
        #(40*semiperiodo) dir = 1;
        #(40*semiperiodo) ce = 0;
    end

endmodule
```

## Ejercicio 4

