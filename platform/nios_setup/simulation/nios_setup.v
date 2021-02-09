// nios_setup.v

// Generated using ACDS version 14.1 186 at 2015.09.03.15:25:14

`timescale 1 ps / 1 ps
module nios_setup (
		input  wire       clk_clk,                             //                          clk.clk
		output wire [2:0] led_io_external_connection_export,   //   led_io_external_connection.export
		input  wire       modular_adc_0_adc_pll_clock_clk,     //  modular_adc_0_adc_pll_clock.clk
		input  wire       modular_adc_0_adc_pll_locked_export, // modular_adc_0_adc_pll_locked.export
		input  wire       reset_reset_n,                       //                        reset.reset_n
		input  wire [2:0] sw_io_external_connection_export     //    sw_io_external_connection.export
	);

	wire  [31:0] nios2_gen2_0_data_master_readdata;                           // mm_interconnect_0:nios2_gen2_0_data_master_readdata -> nios2_gen2_0:d_readdata
	wire         nios2_gen2_0_data_master_waitrequest;                        // mm_interconnect_0:nios2_gen2_0_data_master_waitrequest -> nios2_gen2_0:d_waitrequest
	wire         nios2_gen2_0_data_master_debugaccess;                        // nios2_gen2_0:debug_mem_slave_debugaccess_to_roms -> mm_interconnect_0:nios2_gen2_0_data_master_debugaccess
	wire  [16:0] nios2_gen2_0_data_master_address;                            // nios2_gen2_0:d_address -> mm_interconnect_0:nios2_gen2_0_data_master_address
	wire   [3:0] nios2_gen2_0_data_master_byteenable;                         // nios2_gen2_0:d_byteenable -> mm_interconnect_0:nios2_gen2_0_data_master_byteenable
	wire         nios2_gen2_0_data_master_read;                               // nios2_gen2_0:d_read -> mm_interconnect_0:nios2_gen2_0_data_master_read
	wire         nios2_gen2_0_data_master_write;                              // nios2_gen2_0:d_write -> mm_interconnect_0:nios2_gen2_0_data_master_write
	wire  [31:0] nios2_gen2_0_data_master_writedata;                          // nios2_gen2_0:d_writedata -> mm_interconnect_0:nios2_gen2_0_data_master_writedata
	wire  [31:0] nios2_gen2_0_instruction_master_readdata;                    // mm_interconnect_0:nios2_gen2_0_instruction_master_readdata -> nios2_gen2_0:i_readdata
	wire         nios2_gen2_0_instruction_master_waitrequest;                 // mm_interconnect_0:nios2_gen2_0_instruction_master_waitrequest -> nios2_gen2_0:i_waitrequest
	wire  [16:0] nios2_gen2_0_instruction_master_address;                     // nios2_gen2_0:i_address -> mm_interconnect_0:nios2_gen2_0_instruction_master_address
	wire         nios2_gen2_0_instruction_master_read;                        // nios2_gen2_0:i_read -> mm_interconnect_0:nios2_gen2_0_instruction_master_read
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect;  // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_chipselect -> jtag_uart_0:av_chipselect
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata;    // jtag_uart_0:av_readdata -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_readdata
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest; // jtag_uart_0:av_waitrequest -> mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_waitrequest
	wire   [0:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address;     // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_address -> jtag_uart_0:av_address
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read;        // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_read -> jtag_uart_0:av_read_n
	wire         mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write;       // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_write -> jtag_uart_0:av_write_n
	wire  [31:0] mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata;   // mm_interconnect_0:jtag_uart_0_avalon_jtag_slave_writedata -> jtag_uart_0:av_writedata
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata;     // nios2_gen2_0:debug_mem_slave_readdata -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_readdata
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest;  // nios2_gen2_0:debug_mem_slave_waitrequest -> mm_interconnect_0:nios2_gen2_0_debug_mem_slave_waitrequest
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess;  // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_debugaccess -> nios2_gen2_0:debug_mem_slave_debugaccess
	wire   [8:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address;      // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_address -> nios2_gen2_0:debug_mem_slave_address
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read;         // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_read -> nios2_gen2_0:debug_mem_slave_read
	wire   [3:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable;   // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_byteenable -> nios2_gen2_0:debug_mem_slave_byteenable
	wire         mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write;        // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_write -> nios2_gen2_0:debug_mem_slave_write
	wire  [31:0] mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata;    // mm_interconnect_0:nios2_gen2_0_debug_mem_slave_writedata -> nios2_gen2_0:debug_mem_slave_writedata
	wire         mm_interconnect_0_onchip_memory2_0_s1_chipselect;            // mm_interconnect_0:onchip_memory2_0_s1_chipselect -> onchip_memory2_0:chipselect
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s1_readdata;              // onchip_memory2_0:readdata -> mm_interconnect_0:onchip_memory2_0_s1_readdata
	wire  [12:0] mm_interconnect_0_onchip_memory2_0_s1_address;               // mm_interconnect_0:onchip_memory2_0_s1_address -> onchip_memory2_0:address
	wire   [3:0] mm_interconnect_0_onchip_memory2_0_s1_byteenable;            // mm_interconnect_0:onchip_memory2_0_s1_byteenable -> onchip_memory2_0:byteenable
	wire         mm_interconnect_0_onchip_memory2_0_s1_write;                 // mm_interconnect_0:onchip_memory2_0_s1_write -> onchip_memory2_0:write
	wire  [31:0] mm_interconnect_0_onchip_memory2_0_s1_writedata;             // mm_interconnect_0:onchip_memory2_0_s1_writedata -> onchip_memory2_0:writedata
	wire         mm_interconnect_0_onchip_memory2_0_s1_clken;                 // mm_interconnect_0:onchip_memory2_0_s1_clken -> onchip_memory2_0:clken
	wire         mm_interconnect_0_sw_io_s1_chipselect;                       // mm_interconnect_0:sw_io_s1_chipselect -> sw_io:chipselect
	wire  [31:0] mm_interconnect_0_sw_io_s1_readdata;                         // sw_io:readdata -> mm_interconnect_0:sw_io_s1_readdata
	wire   [1:0] mm_interconnect_0_sw_io_s1_address;                          // mm_interconnect_0:sw_io_s1_address -> sw_io:address
	wire         mm_interconnect_0_sw_io_s1_write;                            // mm_interconnect_0:sw_io_s1_write -> sw_io:write_n
	wire  [31:0] mm_interconnect_0_sw_io_s1_writedata;                        // mm_interconnect_0:sw_io_s1_writedata -> sw_io:writedata
	wire         mm_interconnect_0_led_io_s1_chipselect;                      // mm_interconnect_0:led_io_s1_chipselect -> led_io:chipselect
	wire  [31:0] mm_interconnect_0_led_io_s1_readdata;                        // led_io:readdata -> mm_interconnect_0:led_io_s1_readdata
	wire   [2:0] mm_interconnect_0_led_io_s1_address;                         // mm_interconnect_0:led_io_s1_address -> led_io:address
	wire         mm_interconnect_0_led_io_s1_write;                           // mm_interconnect_0:led_io_s1_write -> led_io:write_n
	wire  [31:0] mm_interconnect_0_led_io_s1_writedata;                       // mm_interconnect_0:led_io_s1_writedata -> led_io:writedata
	wire         mm_interconnect_0_one_sec_timer_s1_chipselect;               // mm_interconnect_0:one_sec_timer_s1_chipselect -> one_sec_timer:chipselect
	wire  [15:0] mm_interconnect_0_one_sec_timer_s1_readdata;                 // one_sec_timer:readdata -> mm_interconnect_0:one_sec_timer_s1_readdata
	wire   [2:0] mm_interconnect_0_one_sec_timer_s1_address;                  // mm_interconnect_0:one_sec_timer_s1_address -> one_sec_timer:address
	wire         mm_interconnect_0_one_sec_timer_s1_write;                    // mm_interconnect_0:one_sec_timer_s1_write -> one_sec_timer:write_n
	wire  [15:0] mm_interconnect_0_one_sec_timer_s1_writedata;                // mm_interconnect_0:one_sec_timer_s1_writedata -> one_sec_timer:writedata
	wire  [31:0] mm_interconnect_0_modular_adc_0_sample_store_csr_readdata;   // modular_adc_0:sample_store_csr_readdata -> mm_interconnect_0:modular_adc_0_sample_store_csr_readdata
	wire   [6:0] mm_interconnect_0_modular_adc_0_sample_store_csr_address;    // mm_interconnect_0:modular_adc_0_sample_store_csr_address -> modular_adc_0:sample_store_csr_address
	wire         mm_interconnect_0_modular_adc_0_sample_store_csr_read;       // mm_interconnect_0:modular_adc_0_sample_store_csr_read -> modular_adc_0:sample_store_csr_read
	wire         mm_interconnect_0_modular_adc_0_sample_store_csr_write;      // mm_interconnect_0:modular_adc_0_sample_store_csr_write -> modular_adc_0:sample_store_csr_write
	wire  [31:0] mm_interconnect_0_modular_adc_0_sample_store_csr_writedata;  // mm_interconnect_0:modular_adc_0_sample_store_csr_writedata -> modular_adc_0:sample_store_csr_writedata
	wire  [31:0] mm_interconnect_0_modular_adc_0_sequencer_csr_readdata;      // modular_adc_0:sequencer_csr_readdata -> mm_interconnect_0:modular_adc_0_sequencer_csr_readdata
	wire   [0:0] mm_interconnect_0_modular_adc_0_sequencer_csr_address;       // mm_interconnect_0:modular_adc_0_sequencer_csr_address -> modular_adc_0:sequencer_csr_address
	wire         mm_interconnect_0_modular_adc_0_sequencer_csr_read;          // mm_interconnect_0:modular_adc_0_sequencer_csr_read -> modular_adc_0:sequencer_csr_read
	wire         mm_interconnect_0_modular_adc_0_sequencer_csr_write;         // mm_interconnect_0:modular_adc_0_sequencer_csr_write -> modular_adc_0:sequencer_csr_write
	wire  [31:0] mm_interconnect_0_modular_adc_0_sequencer_csr_writedata;     // mm_interconnect_0:modular_adc_0_sequencer_csr_writedata -> modular_adc_0:sequencer_csr_writedata
	wire         irq_mapper_receiver0_irq;                                    // jtag_uart_0:av_irq -> irq_mapper:receiver0_irq
	wire         irq_mapper_receiver1_irq;                                    // one_sec_timer:irq -> irq_mapper:receiver1_irq
	wire         irq_mapper_receiver2_irq;                                    // modular_adc_0:sample_store_irq_irq -> irq_mapper:receiver2_irq
	wire  [31:0] nios2_gen2_0_irq_irq;                                        // irq_mapper:sender_irq -> nios2_gen2_0:irq
	wire         rst_controller_reset_out_reset;                              // rst_controller:reset_out -> [irq_mapper:reset, jtag_uart_0:rst_n, led_io:reset_n, mm_interconnect_0:nios2_gen2_0_reset_reset_bridge_in_reset_reset, modular_adc_0:reset_sink_reset_n, nios2_gen2_0:reset_n, onchip_memory2_0:reset, one_sec_timer:reset_n, rst_translator:in_reset, sw_io:reset_n]
	wire         rst_controller_reset_out_reset_req;                          // rst_controller:reset_req -> [nios2_gen2_0:reset_req, onchip_memory2_0:reset_req, rst_translator:reset_req_in]

	nios_setup_jtag_uart_0 jtag_uart_0 (
		.clk            (clk_clk),                                                     //               clk.clk
		.rst_n          (~rst_controller_reset_out_reset),                             //             reset.reset_n
		.av_chipselect  (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  // avalon_jtag_slave.chipselect
		.av_address     (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //                  .address
		.av_read_n      (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),       //                  .read_n
		.av_readdata    (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                  .readdata
		.av_write_n     (~mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),      //                  .write_n
		.av_writedata   (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                  .writedata
		.av_waitrequest (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                  .waitrequest
		.av_irq         (irq_mapper_receiver0_irq)                                     //               irq.irq
	);

	nios_setup_led_io led_io (
		.clk        (clk_clk),                                //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),        //               reset.reset_n
		.address    (mm_interconnect_0_led_io_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_led_io_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_led_io_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_led_io_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_led_io_s1_readdata),   //                    .readdata
		.out_port   (led_io_external_connection_export)       // external_connection.export
	);

	nios_setup_modular_adc_0 modular_adc_0 (
		.clock_clk                  (clk_clk),                                                    //            clock.clk
		.reset_sink_reset_n         (~rst_controller_reset_out_reset),                            //       reset_sink.reset_n
		.adc_pll_clock_clk          (modular_adc_0_adc_pll_clock_clk),                            //    adc_pll_clock.clk
		.adc_pll_locked_export      (modular_adc_0_adc_pll_locked_export),                        //   adc_pll_locked.export
		.sequencer_csr_address      (mm_interconnect_0_modular_adc_0_sequencer_csr_address),      //    sequencer_csr.address
		.sequencer_csr_read         (mm_interconnect_0_modular_adc_0_sequencer_csr_read),         //                 .read
		.sequencer_csr_write        (mm_interconnect_0_modular_adc_0_sequencer_csr_write),        //                 .write
		.sequencer_csr_writedata    (mm_interconnect_0_modular_adc_0_sequencer_csr_writedata),    //                 .writedata
		.sequencer_csr_readdata     (mm_interconnect_0_modular_adc_0_sequencer_csr_readdata),     //                 .readdata
		.sample_store_csr_address   (mm_interconnect_0_modular_adc_0_sample_store_csr_address),   // sample_store_csr.address
		.sample_store_csr_read      (mm_interconnect_0_modular_adc_0_sample_store_csr_read),      //                 .read
		.sample_store_csr_write     (mm_interconnect_0_modular_adc_0_sample_store_csr_write),     //                 .write
		.sample_store_csr_writedata (mm_interconnect_0_modular_adc_0_sample_store_csr_writedata), //                 .writedata
		.sample_store_csr_readdata  (mm_interconnect_0_modular_adc_0_sample_store_csr_readdata),  //                 .readdata
		.sample_store_irq_irq       (irq_mapper_receiver2_irq)                                    // sample_store_irq.irq
	);

	nios_setup_nios2_gen2_0 nios2_gen2_0 (
		.clk                                 (clk_clk),                                                    //                       clk.clk
		.reset_n                             (~rst_controller_reset_out_reset),                            //                     reset.reset_n
		.reset_req                           (rst_controller_reset_out_reset_req),                         //                          .reset_req
		.d_address                           (nios2_gen2_0_data_master_address),                           //               data_master.address
		.d_byteenable                        (nios2_gen2_0_data_master_byteenable),                        //                          .byteenable
		.d_read                              (nios2_gen2_0_data_master_read),                              //                          .read
		.d_readdata                          (nios2_gen2_0_data_master_readdata),                          //                          .readdata
		.d_waitrequest                       (nios2_gen2_0_data_master_waitrequest),                       //                          .waitrequest
		.d_write                             (nios2_gen2_0_data_master_write),                             //                          .write
		.d_writedata                         (nios2_gen2_0_data_master_writedata),                         //                          .writedata
		.debug_mem_slave_debugaccess_to_roms (nios2_gen2_0_data_master_debugaccess),                       //                          .debugaccess
		.i_address                           (nios2_gen2_0_instruction_master_address),                    //        instruction_master.address
		.i_read                              (nios2_gen2_0_instruction_master_read),                       //                          .read
		.i_readdata                          (nios2_gen2_0_instruction_master_readdata),                   //                          .readdata
		.i_waitrequest                       (nios2_gen2_0_instruction_master_waitrequest),                //                          .waitrequest
		.irq                                 (nios2_gen2_0_irq_irq),                                       //                       irq.irq
		.debug_reset_request                 (),                                                           //       debug_reset_request.reset
		.debug_mem_slave_address             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),     //           debug_mem_slave.address
		.debug_mem_slave_byteenable          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),  //                          .byteenable
		.debug_mem_slave_debugaccess         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess), //                          .debugaccess
		.debug_mem_slave_read                (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),        //                          .read
		.debug_mem_slave_readdata            (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),    //                          .readdata
		.debug_mem_slave_waitrequest         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest), //                          .waitrequest
		.debug_mem_slave_write               (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),       //                          .write
		.debug_mem_slave_writedata           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),   //                          .writedata
		.dummy_ci_port                       ()                                                            // custom_instruction_master.readra
	);

	nios_setup_onchip_memory2_0 onchip_memory2_0 (
		.clk        (clk_clk),                                          //   clk1.clk
		.address    (mm_interconnect_0_onchip_memory2_0_s1_address),    //     s1.address
		.clken      (mm_interconnect_0_onchip_memory2_0_s1_clken),      //       .clken
		.chipselect (mm_interconnect_0_onchip_memory2_0_s1_chipselect), //       .chipselect
		.write      (mm_interconnect_0_onchip_memory2_0_s1_write),      //       .write
		.readdata   (mm_interconnect_0_onchip_memory2_0_s1_readdata),   //       .readdata
		.writedata  (mm_interconnect_0_onchip_memory2_0_s1_writedata),  //       .writedata
		.byteenable (mm_interconnect_0_onchip_memory2_0_s1_byteenable), //       .byteenable
		.reset      (rst_controller_reset_out_reset),                   // reset1.reset
		.reset_req  (rst_controller_reset_out_reset_req)                //       .reset_req
	);

	nios_setup_one_sec_timer one_sec_timer (
		.clk        (clk_clk),                                       //   clk.clk
		.reset_n    (~rst_controller_reset_out_reset),               // reset.reset_n
		.address    (mm_interconnect_0_one_sec_timer_s1_address),    //    s1.address
		.writedata  (mm_interconnect_0_one_sec_timer_s1_writedata),  //      .writedata
		.readdata   (mm_interconnect_0_one_sec_timer_s1_readdata),   //      .readdata
		.chipselect (mm_interconnect_0_one_sec_timer_s1_chipselect), //      .chipselect
		.write_n    (~mm_interconnect_0_one_sec_timer_s1_write),     //      .write_n
		.irq        (irq_mapper_receiver1_irq)                       //   irq.irq
	);

	nios_setup_sw_io sw_io (
		.clk        (clk_clk),                               //                 clk.clk
		.reset_n    (~rst_controller_reset_out_reset),       //               reset.reset_n
		.address    (mm_interconnect_0_sw_io_s1_address),    //                  s1.address
		.write_n    (~mm_interconnect_0_sw_io_s1_write),     //                    .write_n
		.writedata  (mm_interconnect_0_sw_io_s1_writedata),  //                    .writedata
		.chipselect (mm_interconnect_0_sw_io_s1_chipselect), //                    .chipselect
		.readdata   (mm_interconnect_0_sw_io_s1_readdata),   //                    .readdata
		.in_port    (sw_io_external_connection_export)       // external_connection.export
	);

	nios_setup_mm_interconnect_0 mm_interconnect_0 (
		.clk_0_clk_clk                                  (clk_clk),                                                     //                                clk_0_clk.clk
		.nios2_gen2_0_reset_reset_bridge_in_reset_reset (rst_controller_reset_out_reset),                              // nios2_gen2_0_reset_reset_bridge_in_reset.reset
		.nios2_gen2_0_data_master_address               (nios2_gen2_0_data_master_address),                            //                 nios2_gen2_0_data_master.address
		.nios2_gen2_0_data_master_waitrequest           (nios2_gen2_0_data_master_waitrequest),                        //                                         .waitrequest
		.nios2_gen2_0_data_master_byteenable            (nios2_gen2_0_data_master_byteenable),                         //                                         .byteenable
		.nios2_gen2_0_data_master_read                  (nios2_gen2_0_data_master_read),                               //                                         .read
		.nios2_gen2_0_data_master_readdata              (nios2_gen2_0_data_master_readdata),                           //                                         .readdata
		.nios2_gen2_0_data_master_write                 (nios2_gen2_0_data_master_write),                              //                                         .write
		.nios2_gen2_0_data_master_writedata             (nios2_gen2_0_data_master_writedata),                          //                                         .writedata
		.nios2_gen2_0_data_master_debugaccess           (nios2_gen2_0_data_master_debugaccess),                        //                                         .debugaccess
		.nios2_gen2_0_instruction_master_address        (nios2_gen2_0_instruction_master_address),                     //          nios2_gen2_0_instruction_master.address
		.nios2_gen2_0_instruction_master_waitrequest    (nios2_gen2_0_instruction_master_waitrequest),                 //                                         .waitrequest
		.nios2_gen2_0_instruction_master_read           (nios2_gen2_0_instruction_master_read),                        //                                         .read
		.nios2_gen2_0_instruction_master_readdata       (nios2_gen2_0_instruction_master_readdata),                    //                                         .readdata
		.jtag_uart_0_avalon_jtag_slave_address          (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_address),     //            jtag_uart_0_avalon_jtag_slave.address
		.jtag_uart_0_avalon_jtag_slave_write            (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_write),       //                                         .write
		.jtag_uart_0_avalon_jtag_slave_read             (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_read),        //                                         .read
		.jtag_uart_0_avalon_jtag_slave_readdata         (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_readdata),    //                                         .readdata
		.jtag_uart_0_avalon_jtag_slave_writedata        (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_writedata),   //                                         .writedata
		.jtag_uart_0_avalon_jtag_slave_waitrequest      (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_waitrequest), //                                         .waitrequest
		.jtag_uart_0_avalon_jtag_slave_chipselect       (mm_interconnect_0_jtag_uart_0_avalon_jtag_slave_chipselect),  //                                         .chipselect
		.led_io_s1_address                              (mm_interconnect_0_led_io_s1_address),                         //                                led_io_s1.address
		.led_io_s1_write                                (mm_interconnect_0_led_io_s1_write),                           //                                         .write
		.led_io_s1_readdata                             (mm_interconnect_0_led_io_s1_readdata),                        //                                         .readdata
		.led_io_s1_writedata                            (mm_interconnect_0_led_io_s1_writedata),                       //                                         .writedata
		.led_io_s1_chipselect                           (mm_interconnect_0_led_io_s1_chipselect),                      //                                         .chipselect
		.modular_adc_0_sample_store_csr_address         (mm_interconnect_0_modular_adc_0_sample_store_csr_address),    //           modular_adc_0_sample_store_csr.address
		.modular_adc_0_sample_store_csr_write           (mm_interconnect_0_modular_adc_0_sample_store_csr_write),      //                                         .write
		.modular_adc_0_sample_store_csr_read            (mm_interconnect_0_modular_adc_0_sample_store_csr_read),       //                                         .read
		.modular_adc_0_sample_store_csr_readdata        (mm_interconnect_0_modular_adc_0_sample_store_csr_readdata),   //                                         .readdata
		.modular_adc_0_sample_store_csr_writedata       (mm_interconnect_0_modular_adc_0_sample_store_csr_writedata),  //                                         .writedata
		.modular_adc_0_sequencer_csr_address            (mm_interconnect_0_modular_adc_0_sequencer_csr_address),       //              modular_adc_0_sequencer_csr.address
		.modular_adc_0_sequencer_csr_write              (mm_interconnect_0_modular_adc_0_sequencer_csr_write),         //                                         .write
		.modular_adc_0_sequencer_csr_read               (mm_interconnect_0_modular_adc_0_sequencer_csr_read),          //                                         .read
		.modular_adc_0_sequencer_csr_readdata           (mm_interconnect_0_modular_adc_0_sequencer_csr_readdata),      //                                         .readdata
		.modular_adc_0_sequencer_csr_writedata          (mm_interconnect_0_modular_adc_0_sequencer_csr_writedata),     //                                         .writedata
		.nios2_gen2_0_debug_mem_slave_address           (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_address),      //             nios2_gen2_0_debug_mem_slave.address
		.nios2_gen2_0_debug_mem_slave_write             (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_write),        //                                         .write
		.nios2_gen2_0_debug_mem_slave_read              (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_read),         //                                         .read
		.nios2_gen2_0_debug_mem_slave_readdata          (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_readdata),     //                                         .readdata
		.nios2_gen2_0_debug_mem_slave_writedata         (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_writedata),    //                                         .writedata
		.nios2_gen2_0_debug_mem_slave_byteenable        (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_byteenable),   //                                         .byteenable
		.nios2_gen2_0_debug_mem_slave_waitrequest       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_waitrequest),  //                                         .waitrequest
		.nios2_gen2_0_debug_mem_slave_debugaccess       (mm_interconnect_0_nios2_gen2_0_debug_mem_slave_debugaccess),  //                                         .debugaccess
		.onchip_memory2_0_s1_address                    (mm_interconnect_0_onchip_memory2_0_s1_address),               //                      onchip_memory2_0_s1.address
		.onchip_memory2_0_s1_write                      (mm_interconnect_0_onchip_memory2_0_s1_write),                 //                                         .write
		.onchip_memory2_0_s1_readdata                   (mm_interconnect_0_onchip_memory2_0_s1_readdata),              //                                         .readdata
		.onchip_memory2_0_s1_writedata                  (mm_interconnect_0_onchip_memory2_0_s1_writedata),             //                                         .writedata
		.onchip_memory2_0_s1_byteenable                 (mm_interconnect_0_onchip_memory2_0_s1_byteenable),            //                                         .byteenable
		.onchip_memory2_0_s1_chipselect                 (mm_interconnect_0_onchip_memory2_0_s1_chipselect),            //                                         .chipselect
		.onchip_memory2_0_s1_clken                      (mm_interconnect_0_onchip_memory2_0_s1_clken),                 //                                         .clken
		.one_sec_timer_s1_address                       (mm_interconnect_0_one_sec_timer_s1_address),                  //                         one_sec_timer_s1.address
		.one_sec_timer_s1_write                         (mm_interconnect_0_one_sec_timer_s1_write),                    //                                         .write
		.one_sec_timer_s1_readdata                      (mm_interconnect_0_one_sec_timer_s1_readdata),                 //                                         .readdata
		.one_sec_timer_s1_writedata                     (mm_interconnect_0_one_sec_timer_s1_writedata),                //                                         .writedata
		.one_sec_timer_s1_chipselect                    (mm_interconnect_0_one_sec_timer_s1_chipselect),               //                                         .chipselect
		.sw_io_s1_address                               (mm_interconnect_0_sw_io_s1_address),                          //                                 sw_io_s1.address
		.sw_io_s1_write                                 (mm_interconnect_0_sw_io_s1_write),                            //                                         .write
		.sw_io_s1_readdata                              (mm_interconnect_0_sw_io_s1_readdata),                         //                                         .readdata
		.sw_io_s1_writedata                             (mm_interconnect_0_sw_io_s1_writedata),                        //                                         .writedata
		.sw_io_s1_chipselect                            (mm_interconnect_0_sw_io_s1_chipselect)                        //                                         .chipselect
	);

	nios_setup_irq_mapper irq_mapper (
		.clk           (clk_clk),                        //       clk.clk
		.reset         (rst_controller_reset_out_reset), // clk_reset.reset
		.receiver0_irq (irq_mapper_receiver0_irq),       // receiver0.irq
		.receiver1_irq (irq_mapper_receiver1_irq),       // receiver1.irq
		.receiver2_irq (irq_mapper_receiver2_irq),       // receiver2.irq
		.sender_irq    (nios2_gen2_0_irq_irq)            //    sender.irq
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (1),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                     // reset_in0.reset
		.clk            (clk_clk),                            //       clk.clk
		.reset_out      (rst_controller_reset_out_reset),     // reset_out.reset
		.reset_req      (rst_controller_reset_out_reset_req), //          .reset_req
		.reset_req_in0  (1'b0),                               // (terminated)
		.reset_in1      (1'b0),                               // (terminated)
		.reset_req_in1  (1'b0),                               // (terminated)
		.reset_in2      (1'b0),                               // (terminated)
		.reset_req_in2  (1'b0),                               // (terminated)
		.reset_in3      (1'b0),                               // (terminated)
		.reset_req_in3  (1'b0),                               // (terminated)
		.reset_in4      (1'b0),                               // (terminated)
		.reset_req_in4  (1'b0),                               // (terminated)
		.reset_in5      (1'b0),                               // (terminated)
		.reset_req_in5  (1'b0),                               // (terminated)
		.reset_in6      (1'b0),                               // (terminated)
		.reset_req_in6  (1'b0),                               // (terminated)
		.reset_in7      (1'b0),                               // (terminated)
		.reset_req_in7  (1'b0),                               // (terminated)
		.reset_in8      (1'b0),                               // (terminated)
		.reset_req_in8  (1'b0),                               // (terminated)
		.reset_in9      (1'b0),                               // (terminated)
		.reset_req_in9  (1'b0),                               // (terminated)
		.reset_in10     (1'b0),                               // (terminated)
		.reset_req_in10 (1'b0),                               // (terminated)
		.reset_in11     (1'b0),                               // (terminated)
		.reset_req_in11 (1'b0),                               // (terminated)
		.reset_in12     (1'b0),                               // (terminated)
		.reset_req_in12 (1'b0),                               // (terminated)
		.reset_in13     (1'b0),                               // (terminated)
		.reset_req_in13 (1'b0),                               // (terminated)
		.reset_in14     (1'b0),                               // (terminated)
		.reset_req_in14 (1'b0),                               // (terminated)
		.reset_in15     (1'b0),                               // (terminated)
		.reset_req_in15 (1'b0)                                // (terminated)
	);

endmodule