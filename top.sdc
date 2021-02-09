##############################################################
#Creating clock
##############################################################
create_clock -name clk -period 20.000 [get_ports {clk}]

##############################################################
#Deriving clock unvertainty
##############################################################
derive_clock_uncertainty

##############################################################
#Deriving PLL clocks
##############################################################
derive_pll_clocks

##############################################################
#Setting Input Delay to reset
##############################################################
set_input_delay -clock { clk } 2 [get_ports {reset_n}]

##############################################################
#Setting False Path to LED and Switches
##############################################################
set_false_path -from [get_ports {SW[0] SW[1] SW[2]}]
set_false_path -to [get_ports {LED[2] LED[1] LED[0]}]

#JTAG Signal Constraints - Needed to contrain JTAG pins
#cut all paths to and from altera_reserved_tck
set_clock_groups -exclusive -group [get_clocks altera_reserved_tck]
#constrain the TDI port
set_input_delay -clock altera_reserved_tck 20 [get_ports altera_reserved_tdi]
#constrain the TMS port
set_input_delay -clock altera_reserved_tck 20 [get_ports altera_reserved_tms]
#constrain the TDO port
set_output_delay -clock altera_reserved_tck 20 [get_ports altera_reserved_tdo]
