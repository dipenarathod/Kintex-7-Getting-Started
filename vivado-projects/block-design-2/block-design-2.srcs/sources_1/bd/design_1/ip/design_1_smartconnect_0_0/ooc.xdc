# aclk {FREQ_HZ 250000000 CLK_DOMAIN design_1_xdma_0_2_axi_aclk PHASE 0.000} aclk1 {FREQ_HZ 133333333 CLK_DOMAIN design_1_mig_7series_0_3_c0_ui_clk PHASE 0} aclk2 {FREQ_HZ 133333333 CLK_DOMAIN design_1_mig_7series_0_3_c1_ui_clk PHASE 0}
# Clock Domain: design_1_xdma_0_2_axi_aclk
create_clock -name aclk -period 4.000 [get_ports aclk]
# Clock Domain: design_1_mig_7series_0_3_c0_ui_clk
create_clock -name aclk1 -period 7.500 [get_ports aclk1]
# Clock Domain: design_1_mig_7series_0_3_c1_ui_clk
create_clock -name aclk2 -period 7.500 [get_ports aclk2]
# Generated clocks
