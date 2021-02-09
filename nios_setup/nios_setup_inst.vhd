	component nios_setup is
		port (
			clk_clk                             : in  std_logic                    := 'X';             -- clk
			led_io_external_connection_export   : out std_logic_vector(2 downto 0);                    -- export
			reset_reset_n                       : in  std_logic                    := 'X';             -- reset_n
			sw_io_external_connection_export    : in  std_logic_vector(2 downto 0) := (others => 'X'); -- export
			modular_adc_0_adc_pll_clock_clk     : in  std_logic                    := 'X';             -- clk
			modular_adc_0_adc_pll_locked_export : in  std_logic                    := 'X'              -- export
		);
	end component nios_setup;

	u0 : component nios_setup
		port map (
			clk_clk                             => CONNECTED_TO_clk_clk,                             --                          clk.clk
			led_io_external_connection_export   => CONNECTED_TO_led_io_external_connection_export,   --   led_io_external_connection.export
			reset_reset_n                       => CONNECTED_TO_reset_reset_n,                       --                        reset.reset_n
			sw_io_external_connection_export    => CONNECTED_TO_sw_io_external_connection_export,    --    sw_io_external_connection.export
			modular_adc_0_adc_pll_clock_clk     => CONNECTED_TO_modular_adc_0_adc_pll_clock_clk,     --  modular_adc_0_adc_pll_clock.clk
			modular_adc_0_adc_pll_locked_export => CONNECTED_TO_modular_adc_0_adc_pll_locked_export  -- modular_adc_0_adc_pll_locked.export
		);

