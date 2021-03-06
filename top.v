module top (
        input SYS_CLK,
        input RESET_EXPn,
        input [3:1] PB,
        output [3:1] USER_LED
);


wire adc_10M_clk;
wire nios_50M_clk;
wire pll_locked;
wire reset;
wire adc_10M_clk_n;

assign reset = !RESET_EXPn;

       all_pll alt_pll_inst (
        .areset ( reset ),
        .inclk0 ( SYS_CLK ) ,
        .c0 ( adc_10M_clk ),
        .c1 ( nios_50M_clk),
        .locked ( pll_locked )
        );


        nios_setup u0 (
                .clk_clk                               (nios_50M_clk),                               //                            clk.clk
                .reset_reset_n                         (RESET_EXPn),                   //                          reset.reset_n
                .led_io_external_connection_export    (USER_LED),    //    led_pio_external_connection.export
                .sw_io_external_connection_export (PB), // switch_pio_external_connection.export
                .modular_adc_0_adc_pll_clock_clk       (adc_10M_clk),       //    modular_adc_0_adc_pll_clock.clk
                .modular_adc_0_adc_pll_locked_export   (pll_locked)    //   modular_adc_0_adc_pll_locked.export
        );
		  
		  /* nios_setup u0 (
        .clk_clk                           (clk),                           //                        clk.clk
        .led_io_external_connection_export (USER_LED), // led_io_external_connection.export
        .reset_reset_n                     (RESET_EXPn),                     //                      reset.reset_n
        .sw_io_external_connection_export  (PB)   //  sw_io_external_connection.export );*/
   


endmodule
