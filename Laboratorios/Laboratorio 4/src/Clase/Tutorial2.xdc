create_clock -name clk -period 10.000 [get_ports clk]
set_input_delay -clock clk  0 [get_ports A[0]]
set_input_delay -clock clk  0 [get_ports A[1]]
set_input_delay -clock clk  0 [get_ports B[0]]
set_input_delay -clock clk  0 [get_ports B[1]]
set_input_delay -clock clk  0 [get_ports C[0]]
set_input_delay -clock clk  0 [get_ports C[1]]
set_input_delay -clock clk  0 [get_ports D[0]]
set_input_delay -clock clk  0 [get_ports D[1]]
set_output_delay -clock clk  0 [get_ports DATAOUT[0]]
set_output_delay -clock clk  0 [get_ports DATAOUT[1]]
set_output_delay -clock clk  0 [get_ports DATAOUT[2]]
set_output_delay -clock clk  0 [get_ports DATAOUT[3]]
set_output_delay -clock clk  0 [get_ports DATAOUT[4]]
set_output_delay -clock clk  0 [get_ports DATAOUT[5]]