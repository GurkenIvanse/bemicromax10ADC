	nios_setup u0 (
		.clk_clk                             (<connected-to-clk_clk>),                             //                          clk.clk
		.led_io_external_connection_export   (<connected-to-led_io_external_connection_export>),   //   led_io_external_connection.export
		.reset_reset_n                       (<connected-to-reset_reset_n>),                       //                        reset.reset_n
		.sw_io_external_connection_export    (<connected-to-sw_io_external_connection_export>),    //    sw_io_external_connection.export
		.modular_adc_0_adc_pll_clock_clk     (<connected-to-modular_adc_0_adc_pll_clock_clk>),     //  modular_adc_0_adc_pll_clock.clk
		.modular_adc_0_adc_pll_locked_export (<connected-to-modular_adc_0_adc_pll_locked_export>)  // modular_adc_0_adc_pll_locked.export
	);

