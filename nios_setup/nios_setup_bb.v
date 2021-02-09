
module nios_setup (
	clk_clk,
	led_io_external_connection_export,
	reset_reset_n,
	sw_io_external_connection_export,
	modular_adc_0_adc_pll_clock_clk,
	modular_adc_0_adc_pll_locked_export);	

	input		clk_clk;
	output	[2:0]	led_io_external_connection_export;
	input		reset_reset_n;
	input	[2:0]	sw_io_external_connection_export;
	input		modular_adc_0_adc_pll_clock_clk;
	input		modular_adc_0_adc_pll_locked_export;
endmodule
