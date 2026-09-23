--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Tue Sep 22 23:03:59 2026
--Host        : dipen-ubuntu-mate running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
  port (
    ddr3_sdram_ch01_0_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_sdram_ch01_0_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_ch01_0_cas_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    ddr3_sdram_ch01_0_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_0_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_ras_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_reset_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_we_n : out STD_LOGIC;
    ddr3_sdram_ch01_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_sdram_ch01_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_ch01_cas_n : out STD_LOGIC;
    ddr3_sdram_ch01_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    ddr3_sdram_ch01_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_ras_n : out STD_LOGIC;
    ddr3_sdram_ch01_reset_n : out STD_LOGIC;
    ddr3_sdram_ch01_we_n : out STD_LOGIC;
    iic_lm73_scl_i : in STD_LOGIC;
    iic_lm73_scl_o : out STD_LOGIC;
    iic_lm73_scl_t : out STD_LOGIC;
    iic_lm73_sda_i : in STD_LOGIC;
    iic_lm73_sda_o : out STD_LOGIC;
    iic_lm73_sda_t : out STD_LOGIC;
    led_3bits_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pci_express_x4_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_express_x4_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_express_x4_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_express_x4_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pcie_perstn : in STD_LOGIC;
    pcie_refclk_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_refclk_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    resetn : in STD_LOGIC;
    sys_diff_clock_0_clk_n : in STD_LOGIC;
    sys_diff_clock_0_clk_p : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=21,da_board_cnt=13,da_clkrst_cnt=3,da_xdma_cnt=2,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xdma_0_2 is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    user_lnk_up : out STD_LOGIC;
    pci_exp_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_exp_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aclk : out STD_LOGIC;
    axi_aresetn : out STD_LOGIC;
    usr_irq_req : in STD_LOGIC_VECTOR ( 0 to 0 );
    usr_irq_ack : out STD_LOGIC_VECTOR ( 0 to 0 );
    msi_enable : out STD_LOGIC;
    msi_vector_width : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC;
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arlock : out STD_LOGIC;
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rready : out STD_LOGIC;
    m_axil_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_awvalid : out STD_LOGIC;
    m_axil_awready : in STD_LOGIC;
    m_axil_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axil_wvalid : out STD_LOGIC;
    m_axil_wready : in STD_LOGIC;
    m_axil_bvalid : in STD_LOGIC;
    m_axil_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_bready : out STD_LOGIC;
    m_axil_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axil_arvalid : out STD_LOGIC;
    m_axil_arready : in STD_LOGIC;
    m_axil_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axil_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axil_rvalid : in STD_LOGIC;
    m_axil_rready : out STD_LOGIC
  );
  end component design_1_xdma_0_2;
  component design_1_axi_gpio_0_1 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component design_1_axi_gpio_0_1;
  component design_1_axi_iic_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    iic2intc_irpt : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sda_i : in STD_LOGIC;
    sda_o : out STD_LOGIC;
    sda_t : out STD_LOGIC;
    scl_i : in STD_LOGIC;
    scl_o : out STD_LOGIC;
    scl_t : out STD_LOGIC;
    gpo : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_axi_iic_0_0;
  component design_1_axis_data_fifo_0_0 is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  end component design_1_axis_data_fifo_0_0;
  component design_1_util_ds_buf_1 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_util_ds_buf_1;
  component design_1_smartconnect_0_0 is
  port (
    aclk : in STD_LOGIC;
    aclk1 : in STD_LOGIC;
    aclk2 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    S00_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_awvalid : in STD_LOGIC;
    S00_AXI_awready : out STD_LOGIC;
    S00_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S00_AXI_wvalid : in STD_LOGIC;
    S00_AXI_wready : out STD_LOGIC;
    S00_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_bvalid : out STD_LOGIC;
    S00_AXI_bready : in STD_LOGIC;
    S00_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S00_AXI_arvalid : in STD_LOGIC;
    S00_AXI_arready : out STD_LOGIC;
    S00_AXI_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S00_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S00_AXI_rvalid : out STD_LOGIC;
    S00_AXI_rready : in STD_LOGIC;
    S01_AXI_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awaddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_awvalid : in STD_LOGIC;
    S01_AXI_awready : out STD_LOGIC;
    S01_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_wlast : in STD_LOGIC;
    S01_AXI_wvalid : in STD_LOGIC;
    S01_AXI_wready : out STD_LOGIC;
    S01_AXI_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_bvalid : out STD_LOGIC;
    S01_AXI_bready : in STD_LOGIC;
    S01_AXI_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_araddr : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S01_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S01_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S01_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_arvalid : in STD_LOGIC;
    S01_AXI_arready : out STD_LOGIC;
    S01_AXI_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S01_AXI_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S01_AXI_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S01_AXI_rlast : out STD_LOGIC;
    S01_AXI_rvalid : out STD_LOGIC;
    S01_AXI_rready : in STD_LOGIC;
    M00_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_awvalid : out STD_LOGIC;
    M00_AXI_awready : in STD_LOGIC;
    M00_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_wvalid : out STD_LOGIC;
    M00_AXI_wready : in STD_LOGIC;
    M00_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_bvalid : in STD_LOGIC;
    M00_AXI_bready : out STD_LOGIC;
    M00_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M00_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_arvalid : out STD_LOGIC;
    M00_AXI_arready : in STD_LOGIC;
    M00_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_rvalid : in STD_LOGIC;
    M00_AXI_rready : out STD_LOGIC;
    M01_AXI_awaddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_awvalid : out STD_LOGIC;
    M01_AXI_awready : in STD_LOGIC;
    M01_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M01_AXI_wvalid : out STD_LOGIC;
    M01_AXI_wready : in STD_LOGIC;
    M01_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_bvalid : in STD_LOGIC;
    M01_AXI_bready : out STD_LOGIC;
    M01_AXI_araddr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M01_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M01_AXI_arvalid : out STD_LOGIC;
    M01_AXI_arready : in STD_LOGIC;
    M01_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M01_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M01_AXI_rvalid : in STD_LOGIC;
    M01_AXI_rready : out STD_LOGIC;
    M02_AXI_awaddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    M02_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_awvalid : out STD_LOGIC;
    M02_AXI_awready : in STD_LOGIC;
    M02_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M02_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M02_AXI_wlast : out STD_LOGIC;
    M02_AXI_wvalid : out STD_LOGIC;
    M02_AXI_wready : in STD_LOGIC;
    M02_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_bvalid : in STD_LOGIC;
    M02_AXI_bready : out STD_LOGIC;
    M02_AXI_araddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    M02_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M02_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M02_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M02_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M02_AXI_arvalid : out STD_LOGIC;
    M02_AXI_arready : in STD_LOGIC;
    M02_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M02_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M02_AXI_rlast : in STD_LOGIC;
    M02_AXI_rvalid : in STD_LOGIC;
    M02_AXI_rready : out STD_LOGIC;
    M03_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_awvalid : out STD_LOGIC;
    M03_AXI_awready : in STD_LOGIC;
    M03_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M03_AXI_wvalid : out STD_LOGIC;
    M03_AXI_wready : in STD_LOGIC;
    M03_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_bvalid : in STD_LOGIC;
    M03_AXI_bready : out STD_LOGIC;
    M03_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M03_AXI_arvalid : out STD_LOGIC;
    M03_AXI_arready : in STD_LOGIC;
    M03_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M03_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M03_AXI_rvalid : in STD_LOGIC;
    M03_AXI_rready : out STD_LOGIC;
    M04_AXI_awaddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    M04_AXI_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_awvalid : out STD_LOGIC;
    M04_AXI_awready : in STD_LOGIC;
    M04_AXI_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M04_AXI_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M04_AXI_wlast : out STD_LOGIC;
    M04_AXI_wvalid : out STD_LOGIC;
    M04_AXI_wready : in STD_LOGIC;
    M04_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_bvalid : in STD_LOGIC;
    M04_AXI_bready : out STD_LOGIC;
    M04_AXI_araddr : out STD_LOGIC_VECTOR ( 30 downto 0 );
    M04_AXI_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M04_AXI_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M04_AXI_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M04_AXI_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M04_AXI_arvalid : out STD_LOGIC;
    M04_AXI_arready : in STD_LOGIC;
    M04_AXI_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M04_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M04_AXI_rlast : in STD_LOGIC;
    M04_AXI_rvalid : in STD_LOGIC;
    M04_AXI_rready : out STD_LOGIC;
    M05_AXI_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_awvalid : out STD_LOGIC;
    M05_AXI_awready : in STD_LOGIC;
    M05_AXI_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M05_AXI_wvalid : out STD_LOGIC;
    M05_AXI_wready : in STD_LOGIC;
    M05_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_bvalid : in STD_LOGIC;
    M05_AXI_bready : out STD_LOGIC;
    M05_AXI_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M05_AXI_arvalid : out STD_LOGIC;
    M05_AXI_arready : in STD_LOGIC;
    M05_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M05_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M05_AXI_rvalid : in STD_LOGIC;
    M05_AXI_rready : out STD_LOGIC
  );
  end component design_1_smartconnect_0_0;
  component design_1_mig_7series_0_3 is
  port (
    sys_rst : in STD_LOGIC;
    c0_ddr3_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    c0_ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c0_ddr3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    c0_ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_ddr3_ras_n : out STD_LOGIC;
    c0_ddr3_cas_n : out STD_LOGIC;
    c0_ddr3_we_n : out STD_LOGIC;
    c0_ddr3_reset_n : out STD_LOGIC;
    c0_ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ui_clk_sync_rst : out STD_LOGIC;
    c0_ui_clk : out STD_LOGIC;
    c0_s_axi_ctrl_awvalid : in STD_LOGIC;
    c0_s_axi_ctrl_awready : out STD_LOGIC;
    c0_s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_s_axi_ctrl_wvalid : in STD_LOGIC;
    c0_s_axi_ctrl_wready : out STD_LOGIC;
    c0_s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_s_axi_ctrl_bvalid : out STD_LOGIC;
    c0_s_axi_ctrl_bready : in STD_LOGIC;
    c0_s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_s_axi_ctrl_arvalid : in STD_LOGIC;
    c0_s_axi_ctrl_arready : out STD_LOGIC;
    c0_s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_s_axi_ctrl_rvalid : out STD_LOGIC;
    c0_s_axi_ctrl_rready : in STD_LOGIC;
    c0_s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c0_s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_awaddr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    c0_s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_s_axi_awlock : in STD_LOGIC;
    c0_s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_awvalid : in STD_LOGIC;
    c0_s_axi_awready : out STD_LOGIC;
    c0_s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_s_axi_wlast : in STD_LOGIC;
    c0_s_axi_wvalid : in STD_LOGIC;
    c0_s_axi_wready : out STD_LOGIC;
    c0_s_axi_bready : in STD_LOGIC;
    c0_s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_s_axi_bvalid : out STD_LOGIC;
    c0_s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_araddr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    c0_s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_s_axi_arlock : in STD_LOGIC;
    c0_s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c0_s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_arvalid : in STD_LOGIC;
    c0_s_axi_arready : out STD_LOGIC;
    c0_s_axi_rready : in STD_LOGIC;
    c0_s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    c0_s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    c0_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_s_axi_rlast : out STD_LOGIC;
    c0_s_axi_rvalid : out STD_LOGIC;
    c0_interrupt : out STD_LOGIC;
    c0_mmcm_locked : out STD_LOGIC;
    c0_sys_clk_p : in STD_LOGIC;
    c0_sys_clk_n : in STD_LOGIC;
    c0_init_calib_complete : out STD_LOGIC;
    c0_aresetn : in STD_LOGIC;
    c1_ddr3_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    c1_ddr3_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c1_ddr3_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    c1_ddr3_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    c1_ddr3_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    c1_ddr3_ras_n : out STD_LOGIC;
    c1_ddr3_cas_n : out STD_LOGIC;
    c1_ddr3_we_n : out STD_LOGIC;
    c1_ddr3_reset_n : out STD_LOGIC;
    c1_ddr3_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    c1_ddr3_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c1_ddr3_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    c1_ddr3_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    c1_ddr3_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    c1_ui_clk_sync_rst : out STD_LOGIC;
    c1_ui_clk : out STD_LOGIC;
    c1_s_axi_ctrl_awvalid : in STD_LOGIC;
    c1_s_axi_ctrl_awready : out STD_LOGIC;
    c1_s_axi_ctrl_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c1_s_axi_ctrl_wvalid : in STD_LOGIC;
    c1_s_axi_ctrl_wready : out STD_LOGIC;
    c1_s_axi_ctrl_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c1_s_axi_ctrl_bvalid : out STD_LOGIC;
    c1_s_axi_ctrl_bready : in STD_LOGIC;
    c1_s_axi_ctrl_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c1_s_axi_ctrl_arvalid : in STD_LOGIC;
    c1_s_axi_ctrl_arready : out STD_LOGIC;
    c1_s_axi_ctrl_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    c1_s_axi_ctrl_rvalid : out STD_LOGIC;
    c1_s_axi_ctrl_rready : in STD_LOGIC;
    c1_s_axi_ctrl_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    c1_s_axi_ctrl_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c1_s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_awaddr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    c1_s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c1_s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c1_s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c1_s_axi_awlock : in STD_LOGIC;
    c1_s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c1_s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_awvalid : in STD_LOGIC;
    c1_s_axi_awready : out STD_LOGIC;
    c1_s_axi_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    c1_s_axi_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    c1_s_axi_wlast : in STD_LOGIC;
    c1_s_axi_wvalid : in STD_LOGIC;
    c1_s_axi_wready : out STD_LOGIC;
    c1_s_axi_bready : in STD_LOGIC;
    c1_s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c1_s_axi_bvalid : out STD_LOGIC;
    c1_s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_araddr : in STD_LOGIC_VECTOR ( 30 downto 0 );
    c1_s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    c1_s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c1_s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    c1_s_axi_arlock : in STD_LOGIC;
    c1_s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    c1_s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_arvalid : in STD_LOGIC;
    c1_s_axi_arready : out STD_LOGIC;
    c1_s_axi_rready : in STD_LOGIC;
    c1_s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    c1_s_axi_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    c1_s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c1_s_axi_rlast : out STD_LOGIC;
    c1_s_axi_rvalid : out STD_LOGIC;
    c1_interrupt : out STD_LOGIC;
    c1_mmcm_locked : out STD_LOGIC;
    c1_sys_clk_p : in STD_LOGIC;
    c1_sys_clk_n : in STD_LOGIC;
    c1_init_calib_complete : out STD_LOGIC;
    c1_aresetn : in STD_LOGIC
  );
  end component design_1_mig_7series_0_3;
  component design_1_rst_mig_7series_0_133M_3 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_mig_7series_0_133M_3;
  component design_1_rst_mig_7series_0_133M_1_2 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1_rst_mig_7series_0_133M_1_2;
  signal axi_gpio_0_GPIO_TRI_O : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal axi_iic_0_IIC_SCL_I : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_O : STD_LOGIC;
  signal axi_iic_0_IIC_SCL_T : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_I : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_O : STD_LOGIC;
  signal axi_iic_0_IIC_SDA_T : STD_LOGIC;
  signal mig_7series_0_C0_DDR3_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal mig_7series_0_C0_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_C0_DDR3_CAS_N : STD_LOGIC;
  signal mig_7series_0_C0_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C0_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C0_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C0_DDR3_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C0_DDR3_DQ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal mig_7series_0_C0_DDR3_DQS_N : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mig_7series_0_C0_DDR3_DQS_P : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mig_7series_0_C0_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C0_DDR3_RAS_N : STD_LOGIC;
  signal mig_7series_0_C0_DDR3_RESET_N : STD_LOGIC;
  signal mig_7series_0_C0_DDR3_WE_N : STD_LOGIC;
  signal mig_7series_0_C1_DDR3_ADDR : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal mig_7series_0_C1_DDR3_BA : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mig_7series_0_C1_DDR3_CAS_N : STD_LOGIC;
  signal mig_7series_0_C1_DDR3_CKE : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C1_DDR3_CK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C1_DDR3_CK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C1_DDR3_CS_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C1_DDR3_DQ : STD_LOGIC_VECTOR ( 71 downto 0 );
  signal mig_7series_0_C1_DDR3_DQS_N : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mig_7series_0_C1_DDR3_DQS_P : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal mig_7series_0_C1_DDR3_ODT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal mig_7series_0_C1_DDR3_RAS_N : STD_LOGIC;
  signal mig_7series_0_C1_DDR3_RESET_N : STD_LOGIC;
  signal mig_7series_0_C1_DDR3_WE_N : STD_LOGIC;
  signal mig_7series_0_c0_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_c0_ui_clk : STD_LOGIC;
  signal mig_7series_0_c0_ui_clk_sync_rst : STD_LOGIC;
  signal mig_7series_0_c1_mmcm_locked : STD_LOGIC;
  signal mig_7series_0_c1_ui_clk : STD_LOGIC;
  signal mig_7series_0_c1_ui_clk_sync_rst : STD_LOGIC;
  signal pcie_perstn_1 : STD_LOGIC;
  signal pcie_refclk_1_CLK_N : STD_LOGIC_VECTOR ( 0 to 0 );
  signal pcie_refclk_1_CLK_P : STD_LOGIC_VECTOR ( 0 to 0 );
  signal resetn_1 : STD_LOGIC;
  signal rst_mig_7series_0_133M_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_mig_7series_0_133M_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal rst_xdma_0_250M_peripheral_aresetn : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M00_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M00_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M00_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M00_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M00_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M00_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_ARADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M01_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_AWADDR : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal smartconnect_0_M01_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M01_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M01_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M01_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M01_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M01_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M01_AXI_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M01_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_ARADDR : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal smartconnect_0_M02_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M02_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M02_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M02_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M02_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M02_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M02_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_AWADDR : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal smartconnect_0_M02_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M02_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M02_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M02_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M02_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M02_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M02_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal smartconnect_0_M02_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M02_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal smartconnect_0_M02_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M02_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_0_M02_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M03_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M03_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M03_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M03_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M03_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_ARADDR : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal smartconnect_0_M04_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M04_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M04_AXI_ARLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M04_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M04_AXI_ARQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M04_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_AWADDR : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal smartconnect_0_M04_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M04_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal smartconnect_0_M04_AXI_AWLOCK : STD_LOGIC_VECTOR ( 0 to 0 );
  signal smartconnect_0_M04_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M04_AXI_AWQOS : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal smartconnect_0_M04_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal smartconnect_0_M04_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M04_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_RDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal smartconnect_0_M04_AXI_RLAST : STD_LOGIC;
  signal smartconnect_0_M04_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M04_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M04_AXI_WDATA : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal smartconnect_0_M04_AXI_WLAST : STD_LOGIC;
  signal smartconnect_0_M04_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M04_AXI_WSTRB : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal smartconnect_0_M04_AXI_WVALID : STD_LOGIC;
  signal smartconnect_0_M05_AXI_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M05_AXI_ARREADY : STD_LOGIC;
  signal smartconnect_0_M05_AXI_ARVALID : STD_LOGIC;
  signal smartconnect_0_M05_AXI_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M05_AXI_AWREADY : STD_LOGIC;
  signal smartconnect_0_M05_AXI_AWVALID : STD_LOGIC;
  signal smartconnect_0_M05_AXI_BREADY : STD_LOGIC;
  signal smartconnect_0_M05_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M05_AXI_BVALID : STD_LOGIC;
  signal smartconnect_0_M05_AXI_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M05_AXI_RREADY : STD_LOGIC;
  signal smartconnect_0_M05_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal smartconnect_0_M05_AXI_RVALID : STD_LOGIC;
  signal smartconnect_0_M05_AXI_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal smartconnect_0_M05_AXI_WREADY : STD_LOGIC;
  signal smartconnect_0_M05_AXI_WVALID : STD_LOGIC;
  signal sys_diff_clock_0_1_CLK_N : STD_LOGIC;
  signal sys_diff_clock_0_1_CLK_P : STD_LOGIC;
  signal sys_diff_clock_1_CLK_N : STD_LOGIC;
  signal sys_diff_clock_1_CLK_P : STD_LOGIC;
  signal util_ds_buf_IBUF_OUT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xdma_0_M_AXI_ARADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xdma_0_M_AXI_ARBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xdma_0_M_AXI_ARCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_ARID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_ARLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xdma_0_M_AXI_ARLOCK : STD_LOGIC;
  signal xdma_0_M_AXI_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xdma_0_M_AXI_ARREADY : STD_LOGIC;
  signal xdma_0_M_AXI_ARSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xdma_0_M_AXI_ARVALID : STD_LOGIC;
  signal xdma_0_M_AXI_AWADDR : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xdma_0_M_AXI_AWBURST : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xdma_0_M_AXI_AWCACHE : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_AWID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_AWLEN : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xdma_0_M_AXI_AWLOCK : STD_LOGIC;
  signal xdma_0_M_AXI_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xdma_0_M_AXI_AWREADY : STD_LOGIC;
  signal xdma_0_M_AXI_AWSIZE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xdma_0_M_AXI_AWVALID : STD_LOGIC;
  signal xdma_0_M_AXI_BID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_BREADY : STD_LOGIC;
  signal xdma_0_M_AXI_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xdma_0_M_AXI_BVALID : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_ARADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xdma_0_M_AXI_LITE_ARPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xdma_0_M_AXI_LITE_ARREADY : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_ARVALID : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_AWADDR : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xdma_0_M_AXI_LITE_AWPROT : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xdma_0_M_AXI_LITE_AWREADY : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_AWVALID : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_BREADY : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_BRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xdma_0_M_AXI_LITE_BVALID : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_RDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xdma_0_M_AXI_LITE_RREADY : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xdma_0_M_AXI_LITE_RVALID : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_WDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xdma_0_M_AXI_LITE_WREADY : STD_LOGIC;
  signal xdma_0_M_AXI_LITE_WSTRB : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_LITE_WVALID : STD_LOGIC;
  signal xdma_0_M_AXI_RDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xdma_0_M_AXI_RID : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_M_AXI_RLAST : STD_LOGIC;
  signal xdma_0_M_AXI_RREADY : STD_LOGIC;
  signal xdma_0_M_AXI_RRESP : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xdma_0_M_AXI_RVALID : STD_LOGIC;
  signal xdma_0_M_AXI_WDATA : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal xdma_0_M_AXI_WLAST : STD_LOGIC;
  signal xdma_0_M_AXI_WREADY : STD_LOGIC;
  signal xdma_0_M_AXI_WSTRB : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal xdma_0_M_AXI_WVALID : STD_LOGIC;
  signal xdma_0_axi_aclk : STD_LOGIC;
  signal xdma_0_pcie_mgt_rxn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_pcie_mgt_rxp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_pcie_mgt_txn : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xdma_0_pcie_mgt_txp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_axi_iic_0_iic2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_axi_iic_0_gpo_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_axis_data_fifo_0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_axis_data_fifo_0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_mig_7series_0_c0_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_c0_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_c1_init_calib_complete_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_c1_interrupt_UNCONNECTED : STD_LOGIC;
  signal NLW_mig_7series_0_c0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mig_7series_0_c0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mig_7series_0_c1_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_mig_7series_0_c1_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_rst_mig_7series_0_133M_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_133M_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_133M_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_133M_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_133M_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_rst_mig_7series_0_133M_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_133M_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_rst_mig_7series_0_133M_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M03_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_smartconnect_0_M05_AXI_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_util_ds_buf_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_xdma_0_msi_enable_UNCONNECTED : STD_LOGIC;
  signal NLW_xdma_0_user_lnk_up_UNCONNECTED : STD_LOGIC;
  signal NLW_xdma_0_msi_vector_width_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_xdma_0_usr_irq_ack_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_cas_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 CAS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_ras_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 RAS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_reset_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 RESET_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_we_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 WE_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_cas_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 CAS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_ras_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 RAS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_reset_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 RESET_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_we_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 WE_N";
  attribute X_INTERFACE_INFO of iic_lm73_scl_i : signal is "xilinx.com:interface:iic:1.0 iic_lm73 SCL_I";
  attribute X_INTERFACE_INFO of iic_lm73_scl_o : signal is "xilinx.com:interface:iic:1.0 iic_lm73 SCL_O";
  attribute X_INTERFACE_INFO of iic_lm73_scl_t : signal is "xilinx.com:interface:iic:1.0 iic_lm73 SCL_T";
  attribute X_INTERFACE_INFO of iic_lm73_sda_i : signal is "xilinx.com:interface:iic:1.0 iic_lm73 SDA_I";
  attribute X_INTERFACE_INFO of iic_lm73_sda_o : signal is "xilinx.com:interface:iic:1.0 iic_lm73 SDA_O";
  attribute X_INTERFACE_INFO of iic_lm73_sda_t : signal is "xilinx.com:interface:iic:1.0 iic_lm73 SDA_T";
  attribute X_INTERFACE_INFO of pcie_perstn : signal is "xilinx.com:signal:reset:1.0 RST.PCIE_PERSTN RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pcie_perstn : signal is "XIL_INTERFACENAME RST.PCIE_PERSTN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 RST.RESETN RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of sys_diff_clock_0_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 sys_diff_clock_0 CLK_N";
  attribute X_INTERFACE_PARAMETER of sys_diff_clock_0_clk_n : signal is "XIL_INTERFACENAME sys_diff_clock_0, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of sys_diff_clock_0_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 sys_diff_clock_0 CLK_P";
  attribute X_INTERFACE_INFO of sys_diff_clock_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_N";
  attribute X_INTERFACE_PARAMETER of sys_diff_clock_clk_n : signal is "XIL_INTERFACENAME sys_diff_clock, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of sys_diff_clock_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 sys_diff_clock CLK_P";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_addr : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 ADDR";
  attribute X_INTERFACE_PARAMETER of ddr3_sdram_ch01_0_addr : signal is "XIL_INTERFACENAME ddr3_sdram_ch01_0, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_ba : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 BA";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_ck_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 CK_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_ck_p : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 CK_P";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_cke : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 CKE";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_cs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 CS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_dq : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 DQ";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 DQS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 DQS_P";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_0_odt : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01_0 ODT";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_addr : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 ADDR";
  attribute X_INTERFACE_PARAMETER of ddr3_sdram_ch01_addr : signal is "XIL_INTERFACENAME ddr3_sdram_ch01, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_ba : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 BA";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_ck_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 CK_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_ck_p : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 CK_P";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_cke : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 CKE";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_cs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 CS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_dq : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 DQ";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_dqs_n : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 DQS_N";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_dqs_p : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 DQS_P";
  attribute X_INTERFACE_INFO of ddr3_sdram_ch01_odt : signal is "xilinx.com:interface:ddrx:1.0 ddr3_sdram_ch01 ODT";
  attribute X_INTERFACE_INFO of led_3bits_tri_o : signal is "xilinx.com:interface:gpio:1.0 led_3bits TRI_O";
  attribute X_INTERFACE_INFO of pci_express_x4_rxn : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 rxn";
  attribute X_INTERFACE_INFO of pci_express_x4_rxp : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 rxp";
  attribute X_INTERFACE_INFO of pci_express_x4_txn : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 txn";
  attribute X_INTERFACE_INFO of pci_express_x4_txp : signal is "xilinx.com:interface:pcie_7x_mgt:1.0 pci_express_x4 txp";
  attribute X_INTERFACE_INFO of pcie_refclk_clk_n : signal is "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_N";
  attribute X_INTERFACE_PARAMETER of pcie_refclk_clk_n : signal is "XIL_INTERFACENAME pcie_refclk, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute X_INTERFACE_INFO of pcie_refclk_clk_p : signal is "xilinx.com:interface:diff_clock:1.0 pcie_refclk CLK_P";
begin
  axi_iic_0_IIC_SCL_I <= iic_lm73_scl_i;
  axi_iic_0_IIC_SDA_I <= iic_lm73_sda_i;
  ddr3_sdram_ch01_0_addr(14 downto 0) <= mig_7series_0_C1_DDR3_ADDR(14 downto 0);
  ddr3_sdram_ch01_0_ba(2 downto 0) <= mig_7series_0_C1_DDR3_BA(2 downto 0);
  ddr3_sdram_ch01_0_cas_n <= mig_7series_0_C1_DDR3_CAS_N;
  ddr3_sdram_ch01_0_ck_n(0) <= mig_7series_0_C1_DDR3_CK_N(0);
  ddr3_sdram_ch01_0_ck_p(0) <= mig_7series_0_C1_DDR3_CK_P(0);
  ddr3_sdram_ch01_0_cke(0) <= mig_7series_0_C1_DDR3_CKE(0);
  ddr3_sdram_ch01_0_cs_n(0) <= mig_7series_0_C1_DDR3_CS_N(0);
  ddr3_sdram_ch01_0_odt(0) <= mig_7series_0_C1_DDR3_ODT(0);
  ddr3_sdram_ch01_0_ras_n <= mig_7series_0_C1_DDR3_RAS_N;
  ddr3_sdram_ch01_0_reset_n <= mig_7series_0_C1_DDR3_RESET_N;
  ddr3_sdram_ch01_0_we_n <= mig_7series_0_C1_DDR3_WE_N;
  ddr3_sdram_ch01_addr(14 downto 0) <= mig_7series_0_C0_DDR3_ADDR(14 downto 0);
  ddr3_sdram_ch01_ba(2 downto 0) <= mig_7series_0_C0_DDR3_BA(2 downto 0);
  ddr3_sdram_ch01_cas_n <= mig_7series_0_C0_DDR3_CAS_N;
  ddr3_sdram_ch01_ck_n(0) <= mig_7series_0_C0_DDR3_CK_N(0);
  ddr3_sdram_ch01_ck_p(0) <= mig_7series_0_C0_DDR3_CK_P(0);
  ddr3_sdram_ch01_cke(0) <= mig_7series_0_C0_DDR3_CKE(0);
  ddr3_sdram_ch01_cs_n(0) <= mig_7series_0_C0_DDR3_CS_N(0);
  ddr3_sdram_ch01_odt(0) <= mig_7series_0_C0_DDR3_ODT(0);
  ddr3_sdram_ch01_ras_n <= mig_7series_0_C0_DDR3_RAS_N;
  ddr3_sdram_ch01_reset_n <= mig_7series_0_C0_DDR3_RESET_N;
  ddr3_sdram_ch01_we_n <= mig_7series_0_C0_DDR3_WE_N;
  iic_lm73_scl_o <= axi_iic_0_IIC_SCL_O;
  iic_lm73_scl_t <= axi_iic_0_IIC_SCL_T;
  iic_lm73_sda_o <= axi_iic_0_IIC_SDA_O;
  iic_lm73_sda_t <= axi_iic_0_IIC_SDA_T;
  led_3bits_tri_o(2 downto 0) <= axi_gpio_0_GPIO_TRI_O(2 downto 0);
  pci_express_x4_txn(3 downto 0) <= xdma_0_pcie_mgt_txn(3 downto 0);
  pci_express_x4_txp(3 downto 0) <= xdma_0_pcie_mgt_txp(3 downto 0);
  pcie_perstn_1 <= pcie_perstn;
  pcie_refclk_1_CLK_N(0) <= pcie_refclk_clk_n(0);
  pcie_refclk_1_CLK_P(0) <= pcie_refclk_clk_p(0);
  resetn_1 <= resetn;
  sys_diff_clock_0_1_CLK_N <= sys_diff_clock_0_clk_n;
  sys_diff_clock_0_1_CLK_P <= sys_diff_clock_0_clk_p;
  sys_diff_clock_1_CLK_N <= sys_diff_clock_clk_n;
  sys_diff_clock_1_CLK_P <= sys_diff_clock_clk_p;
  xdma_0_pcie_mgt_rxn(3 downto 0) <= pci_express_x4_rxn(3 downto 0);
  xdma_0_pcie_mgt_rxp(3 downto 0) <= pci_express_x4_rxp(3 downto 0);
axi_gpio_0: component design_1_axi_gpio_0_1
     port map (
      gpio_io_o(2 downto 0) => axi_gpio_0_GPIO_TRI_O(2 downto 0),
      s_axi_aclk => xdma_0_axi_aclk,
      s_axi_araddr(8 downto 0) => smartconnect_0_M00_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_xdma_0_250M_peripheral_aresetn,
      s_axi_arready => smartconnect_0_M00_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M00_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_0_M00_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_0_M00_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M00_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M00_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M00_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M00_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M00_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M00_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M00_AXI_WVALID
    );
axi_iic_0: component design_1_axi_iic_0_0
     port map (
      gpo(0) => NLW_axi_iic_0_gpo_UNCONNECTED(0),
      iic2intc_irpt => NLW_axi_iic_0_iic2intc_irpt_UNCONNECTED,
      s_axi_aclk => xdma_0_axi_aclk,
      s_axi_araddr(8 downto 0) => smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      s_axi_aresetn => rst_xdma_0_250M_peripheral_aresetn,
      s_axi_arready => smartconnect_0_M01_AXI_ARREADY,
      s_axi_arvalid => smartconnect_0_M01_AXI_ARVALID,
      s_axi_awaddr(8 downto 0) => smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      s_axi_awready => smartconnect_0_M01_AXI_AWREADY,
      s_axi_awvalid => smartconnect_0_M01_AXI_AWVALID,
      s_axi_bready => smartconnect_0_M01_AXI_BREADY,
      s_axi_bresp(1 downto 0) => smartconnect_0_M01_AXI_BRESP(1 downto 0),
      s_axi_bvalid => smartconnect_0_M01_AXI_BVALID,
      s_axi_rdata(31 downto 0) => smartconnect_0_M01_AXI_RDATA(31 downto 0),
      s_axi_rready => smartconnect_0_M01_AXI_RREADY,
      s_axi_rresp(1 downto 0) => smartconnect_0_M01_AXI_RRESP(1 downto 0),
      s_axi_rvalid => smartconnect_0_M01_AXI_RVALID,
      s_axi_wdata(31 downto 0) => smartconnect_0_M01_AXI_WDATA(31 downto 0),
      s_axi_wready => smartconnect_0_M01_AXI_WREADY,
      s_axi_wstrb(3 downto 0) => smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      s_axi_wvalid => smartconnect_0_M01_AXI_WVALID,
      scl_i => axi_iic_0_IIC_SCL_I,
      scl_o => axi_iic_0_IIC_SCL_O,
      scl_t => axi_iic_0_IIC_SCL_T,
      sda_i => axi_iic_0_IIC_SDA_I,
      sda_o => axi_iic_0_IIC_SDA_O,
      sda_t => axi_iic_0_IIC_SDA_T
    );
axis_data_fifo_0: component design_1_axis_data_fifo_0_0
     port map (
      m_axis_tdata(127 downto 0) => NLW_axis_data_fifo_0_m_axis_tdata_UNCONNECTED(127 downto 0),
      m_axis_tkeep(15 downto 0) => NLW_axis_data_fifo_0_m_axis_tkeep_UNCONNECTED(15 downto 0),
      m_axis_tlast => NLW_axis_data_fifo_0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '1',
      m_axis_tvalid => NLW_axis_data_fifo_0_m_axis_tvalid_UNCONNECTED,
      s_axis_aclk => xdma_0_axi_aclk,
      s_axis_aresetn => rst_xdma_0_250M_peripheral_aresetn,
      s_axis_tdata(127 downto 0) => B"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tkeep(15 downto 0) => B"1111111111111111",
      s_axis_tlast => '0',
      s_axis_tready => NLW_axis_data_fifo_0_s_axis_tready_UNCONNECTED,
      s_axis_tvalid => '0'
    );
mig_7series_0: component design_1_mig_7series_0_3
     port map (
      c0_aresetn => rst_mig_7series_0_133M_peripheral_aresetn(0),
      c0_ddr3_addr(14 downto 0) => mig_7series_0_C0_DDR3_ADDR(14 downto 0),
      c0_ddr3_ba(2 downto 0) => mig_7series_0_C0_DDR3_BA(2 downto 0),
      c0_ddr3_cas_n => mig_7series_0_C0_DDR3_CAS_N,
      c0_ddr3_ck_n(0) => mig_7series_0_C0_DDR3_CK_N(0),
      c0_ddr3_ck_p(0) => mig_7series_0_C0_DDR3_CK_P(0),
      c0_ddr3_cke(0) => mig_7series_0_C0_DDR3_CKE(0),
      c0_ddr3_cs_n(0) => mig_7series_0_C0_DDR3_CS_N(0),
      c0_ddr3_dq(71 downto 0) => ddr3_sdram_ch01_dq(71 downto 0),
      c0_ddr3_dqs_n(8 downto 0) => ddr3_sdram_ch01_dqs_n(8 downto 0),
      c0_ddr3_dqs_p(8 downto 0) => ddr3_sdram_ch01_dqs_p(8 downto 0),
      c0_ddr3_odt(0) => mig_7series_0_C0_DDR3_ODT(0),
      c0_ddr3_ras_n => mig_7series_0_C0_DDR3_RAS_N,
      c0_ddr3_reset_n => mig_7series_0_C0_DDR3_RESET_N,
      c0_ddr3_we_n => mig_7series_0_C0_DDR3_WE_N,
      c0_init_calib_complete => NLW_mig_7series_0_c0_init_calib_complete_UNCONNECTED,
      c0_interrupt => NLW_mig_7series_0_c0_interrupt_UNCONNECTED,
      c0_mmcm_locked => mig_7series_0_c0_mmcm_locked,
      c0_s_axi_araddr(30 downto 0) => smartconnect_0_M02_AXI_ARADDR(30 downto 0),
      c0_s_axi_arburst(1 downto 0) => smartconnect_0_M02_AXI_ARBURST(1 downto 0),
      c0_s_axi_arcache(3 downto 0) => smartconnect_0_M02_AXI_ARCACHE(3 downto 0),
      c0_s_axi_arid(3 downto 0) => B"0000",
      c0_s_axi_arlen(7 downto 0) => smartconnect_0_M02_AXI_ARLEN(7 downto 0),
      c0_s_axi_arlock => smartconnect_0_M02_AXI_ARLOCK(0),
      c0_s_axi_arprot(2 downto 0) => smartconnect_0_M02_AXI_ARPROT(2 downto 0),
      c0_s_axi_arqos(3 downto 0) => smartconnect_0_M02_AXI_ARQOS(3 downto 0),
      c0_s_axi_arready => smartconnect_0_M02_AXI_ARREADY,
      c0_s_axi_arsize(2 downto 0) => smartconnect_0_M02_AXI_ARSIZE(2 downto 0),
      c0_s_axi_arvalid => smartconnect_0_M02_AXI_ARVALID,
      c0_s_axi_awaddr(30 downto 0) => smartconnect_0_M02_AXI_AWADDR(30 downto 0),
      c0_s_axi_awburst(1 downto 0) => smartconnect_0_M02_AXI_AWBURST(1 downto 0),
      c0_s_axi_awcache(3 downto 0) => smartconnect_0_M02_AXI_AWCACHE(3 downto 0),
      c0_s_axi_awid(3 downto 0) => B"0000",
      c0_s_axi_awlen(7 downto 0) => smartconnect_0_M02_AXI_AWLEN(7 downto 0),
      c0_s_axi_awlock => smartconnect_0_M02_AXI_AWLOCK(0),
      c0_s_axi_awprot(2 downto 0) => smartconnect_0_M02_AXI_AWPROT(2 downto 0),
      c0_s_axi_awqos(3 downto 0) => smartconnect_0_M02_AXI_AWQOS(3 downto 0),
      c0_s_axi_awready => smartconnect_0_M02_AXI_AWREADY,
      c0_s_axi_awsize(2 downto 0) => smartconnect_0_M02_AXI_AWSIZE(2 downto 0),
      c0_s_axi_awvalid => smartconnect_0_M02_AXI_AWVALID,
      c0_s_axi_bid(3 downto 0) => NLW_mig_7series_0_c0_s_axi_bid_UNCONNECTED(3 downto 0),
      c0_s_axi_bready => smartconnect_0_M02_AXI_BREADY,
      c0_s_axi_bresp(1 downto 0) => smartconnect_0_M02_AXI_BRESP(1 downto 0),
      c0_s_axi_bvalid => smartconnect_0_M02_AXI_BVALID,
      c0_s_axi_ctrl_araddr(31 downto 0) => smartconnect_0_M03_AXI_ARADDR(31 downto 0),
      c0_s_axi_ctrl_arready => smartconnect_0_M03_AXI_ARREADY,
      c0_s_axi_ctrl_arvalid => smartconnect_0_M03_AXI_ARVALID,
      c0_s_axi_ctrl_awaddr(31 downto 0) => smartconnect_0_M03_AXI_AWADDR(31 downto 0),
      c0_s_axi_ctrl_awready => smartconnect_0_M03_AXI_AWREADY,
      c0_s_axi_ctrl_awvalid => smartconnect_0_M03_AXI_AWVALID,
      c0_s_axi_ctrl_bready => smartconnect_0_M03_AXI_BREADY,
      c0_s_axi_ctrl_bresp(1 downto 0) => smartconnect_0_M03_AXI_BRESP(1 downto 0),
      c0_s_axi_ctrl_bvalid => smartconnect_0_M03_AXI_BVALID,
      c0_s_axi_ctrl_rdata(31 downto 0) => smartconnect_0_M03_AXI_RDATA(31 downto 0),
      c0_s_axi_ctrl_rready => smartconnect_0_M03_AXI_RREADY,
      c0_s_axi_ctrl_rresp(1 downto 0) => smartconnect_0_M03_AXI_RRESP(1 downto 0),
      c0_s_axi_ctrl_rvalid => smartconnect_0_M03_AXI_RVALID,
      c0_s_axi_ctrl_wdata(31 downto 0) => smartconnect_0_M03_AXI_WDATA(31 downto 0),
      c0_s_axi_ctrl_wready => smartconnect_0_M03_AXI_WREADY,
      c0_s_axi_ctrl_wvalid => smartconnect_0_M03_AXI_WVALID,
      c0_s_axi_rdata(511 downto 0) => smartconnect_0_M02_AXI_RDATA(511 downto 0),
      c0_s_axi_rid(3 downto 0) => NLW_mig_7series_0_c0_s_axi_rid_UNCONNECTED(3 downto 0),
      c0_s_axi_rlast => smartconnect_0_M02_AXI_RLAST,
      c0_s_axi_rready => smartconnect_0_M02_AXI_RREADY,
      c0_s_axi_rresp(1 downto 0) => smartconnect_0_M02_AXI_RRESP(1 downto 0),
      c0_s_axi_rvalid => smartconnect_0_M02_AXI_RVALID,
      c0_s_axi_wdata(511 downto 0) => smartconnect_0_M02_AXI_WDATA(511 downto 0),
      c0_s_axi_wlast => smartconnect_0_M02_AXI_WLAST,
      c0_s_axi_wready => smartconnect_0_M02_AXI_WREADY,
      c0_s_axi_wstrb(63 downto 0) => smartconnect_0_M02_AXI_WSTRB(63 downto 0),
      c0_s_axi_wvalid => smartconnect_0_M02_AXI_WVALID,
      c0_sys_clk_n => sys_diff_clock_1_CLK_N,
      c0_sys_clk_p => sys_diff_clock_1_CLK_P,
      c0_ui_clk => mig_7series_0_c0_ui_clk,
      c0_ui_clk_sync_rst => mig_7series_0_c0_ui_clk_sync_rst,
      c1_aresetn => rst_mig_7series_0_133M_1_peripheral_aresetn(0),
      c1_ddr3_addr(14 downto 0) => mig_7series_0_C1_DDR3_ADDR(14 downto 0),
      c1_ddr3_ba(2 downto 0) => mig_7series_0_C1_DDR3_BA(2 downto 0),
      c1_ddr3_cas_n => mig_7series_0_C1_DDR3_CAS_N,
      c1_ddr3_ck_n(0) => mig_7series_0_C1_DDR3_CK_N(0),
      c1_ddr3_ck_p(0) => mig_7series_0_C1_DDR3_CK_P(0),
      c1_ddr3_cke(0) => mig_7series_0_C1_DDR3_CKE(0),
      c1_ddr3_cs_n(0) => mig_7series_0_C1_DDR3_CS_N(0),
      c1_ddr3_dq(71 downto 0) => ddr3_sdram_ch01_0_dq(71 downto 0),
      c1_ddr3_dqs_n(8 downto 0) => ddr3_sdram_ch01_0_dqs_n(8 downto 0),
      c1_ddr3_dqs_p(8 downto 0) => ddr3_sdram_ch01_0_dqs_p(8 downto 0),
      c1_ddr3_odt(0) => mig_7series_0_C1_DDR3_ODT(0),
      c1_ddr3_ras_n => mig_7series_0_C1_DDR3_RAS_N,
      c1_ddr3_reset_n => mig_7series_0_C1_DDR3_RESET_N,
      c1_ddr3_we_n => mig_7series_0_C1_DDR3_WE_N,
      c1_init_calib_complete => NLW_mig_7series_0_c1_init_calib_complete_UNCONNECTED,
      c1_interrupt => NLW_mig_7series_0_c1_interrupt_UNCONNECTED,
      c1_mmcm_locked => mig_7series_0_c1_mmcm_locked,
      c1_s_axi_araddr(30 downto 0) => smartconnect_0_M04_AXI_ARADDR(30 downto 0),
      c1_s_axi_arburst(1 downto 0) => smartconnect_0_M04_AXI_ARBURST(1 downto 0),
      c1_s_axi_arcache(3 downto 0) => smartconnect_0_M04_AXI_ARCACHE(3 downto 0),
      c1_s_axi_arid(3 downto 0) => B"0000",
      c1_s_axi_arlen(7 downto 0) => smartconnect_0_M04_AXI_ARLEN(7 downto 0),
      c1_s_axi_arlock => smartconnect_0_M04_AXI_ARLOCK(0),
      c1_s_axi_arprot(2 downto 0) => smartconnect_0_M04_AXI_ARPROT(2 downto 0),
      c1_s_axi_arqos(3 downto 0) => smartconnect_0_M04_AXI_ARQOS(3 downto 0),
      c1_s_axi_arready => smartconnect_0_M04_AXI_ARREADY,
      c1_s_axi_arsize(2 downto 0) => smartconnect_0_M04_AXI_ARSIZE(2 downto 0),
      c1_s_axi_arvalid => smartconnect_0_M04_AXI_ARVALID,
      c1_s_axi_awaddr(30 downto 0) => smartconnect_0_M04_AXI_AWADDR(30 downto 0),
      c1_s_axi_awburst(1 downto 0) => smartconnect_0_M04_AXI_AWBURST(1 downto 0),
      c1_s_axi_awcache(3 downto 0) => smartconnect_0_M04_AXI_AWCACHE(3 downto 0),
      c1_s_axi_awid(3 downto 0) => B"0000",
      c1_s_axi_awlen(7 downto 0) => smartconnect_0_M04_AXI_AWLEN(7 downto 0),
      c1_s_axi_awlock => smartconnect_0_M04_AXI_AWLOCK(0),
      c1_s_axi_awprot(2 downto 0) => smartconnect_0_M04_AXI_AWPROT(2 downto 0),
      c1_s_axi_awqos(3 downto 0) => smartconnect_0_M04_AXI_AWQOS(3 downto 0),
      c1_s_axi_awready => smartconnect_0_M04_AXI_AWREADY,
      c1_s_axi_awsize(2 downto 0) => smartconnect_0_M04_AXI_AWSIZE(2 downto 0),
      c1_s_axi_awvalid => smartconnect_0_M04_AXI_AWVALID,
      c1_s_axi_bid(3 downto 0) => NLW_mig_7series_0_c1_s_axi_bid_UNCONNECTED(3 downto 0),
      c1_s_axi_bready => smartconnect_0_M04_AXI_BREADY,
      c1_s_axi_bresp(1 downto 0) => smartconnect_0_M04_AXI_BRESP(1 downto 0),
      c1_s_axi_bvalid => smartconnect_0_M04_AXI_BVALID,
      c1_s_axi_ctrl_araddr(31 downto 0) => smartconnect_0_M05_AXI_ARADDR(31 downto 0),
      c1_s_axi_ctrl_arready => smartconnect_0_M05_AXI_ARREADY,
      c1_s_axi_ctrl_arvalid => smartconnect_0_M05_AXI_ARVALID,
      c1_s_axi_ctrl_awaddr(31 downto 0) => smartconnect_0_M05_AXI_AWADDR(31 downto 0),
      c1_s_axi_ctrl_awready => smartconnect_0_M05_AXI_AWREADY,
      c1_s_axi_ctrl_awvalid => smartconnect_0_M05_AXI_AWVALID,
      c1_s_axi_ctrl_bready => smartconnect_0_M05_AXI_BREADY,
      c1_s_axi_ctrl_bresp(1 downto 0) => smartconnect_0_M05_AXI_BRESP(1 downto 0),
      c1_s_axi_ctrl_bvalid => smartconnect_0_M05_AXI_BVALID,
      c1_s_axi_ctrl_rdata(31 downto 0) => smartconnect_0_M05_AXI_RDATA(31 downto 0),
      c1_s_axi_ctrl_rready => smartconnect_0_M05_AXI_RREADY,
      c1_s_axi_ctrl_rresp(1 downto 0) => smartconnect_0_M05_AXI_RRESP(1 downto 0),
      c1_s_axi_ctrl_rvalid => smartconnect_0_M05_AXI_RVALID,
      c1_s_axi_ctrl_wdata(31 downto 0) => smartconnect_0_M05_AXI_WDATA(31 downto 0),
      c1_s_axi_ctrl_wready => smartconnect_0_M05_AXI_WREADY,
      c1_s_axi_ctrl_wvalid => smartconnect_0_M05_AXI_WVALID,
      c1_s_axi_rdata(511 downto 0) => smartconnect_0_M04_AXI_RDATA(511 downto 0),
      c1_s_axi_rid(3 downto 0) => NLW_mig_7series_0_c1_s_axi_rid_UNCONNECTED(3 downto 0),
      c1_s_axi_rlast => smartconnect_0_M04_AXI_RLAST,
      c1_s_axi_rready => smartconnect_0_M04_AXI_RREADY,
      c1_s_axi_rresp(1 downto 0) => smartconnect_0_M04_AXI_RRESP(1 downto 0),
      c1_s_axi_rvalid => smartconnect_0_M04_AXI_RVALID,
      c1_s_axi_wdata(511 downto 0) => smartconnect_0_M04_AXI_WDATA(511 downto 0),
      c1_s_axi_wlast => smartconnect_0_M04_AXI_WLAST,
      c1_s_axi_wready => smartconnect_0_M04_AXI_WREADY,
      c1_s_axi_wstrb(63 downto 0) => smartconnect_0_M04_AXI_WSTRB(63 downto 0),
      c1_s_axi_wvalid => smartconnect_0_M04_AXI_WVALID,
      c1_sys_clk_n => sys_diff_clock_0_1_CLK_N,
      c1_sys_clk_p => sys_diff_clock_0_1_CLK_P,
      c1_ui_clk => mig_7series_0_c1_ui_clk,
      c1_ui_clk_sync_rst => mig_7series_0_c1_ui_clk_sync_rst,
      sys_rst => resetn_1
    );
rst_mig_7series_0_133M: component design_1_rst_mig_7series_0_133M_3
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_133M_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_c0_mmcm_locked,
      ext_reset_in => mig_7series_0_c0_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_133M_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_133M_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_133M_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_133M_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => mig_7series_0_c0_ui_clk
    );
rst_mig_7series_0_133M_1: component design_1_rst_mig_7series_0_133M_1_2
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_rst_mig_7series_0_133M_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => mig_7series_0_c1_mmcm_locked,
      ext_reset_in => mig_7series_0_c1_ui_clk_sync_rst,
      interconnect_aresetn(0) => NLW_rst_mig_7series_0_133M_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_rst_mig_7series_0_133M_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => rst_mig_7series_0_133M_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_rst_mig_7series_0_133M_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => mig_7series_0_c1_ui_clk
    );
smartconnect_0: component design_1_smartconnect_0_0
     port map (
      M00_AXI_araddr(8 downto 0) => smartconnect_0_M00_AXI_ARADDR(8 downto 0),
      M00_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_arprot_UNCONNECTED(2 downto 0),
      M00_AXI_arready => smartconnect_0_M00_AXI_ARREADY,
      M00_AXI_arvalid => smartconnect_0_M00_AXI_ARVALID,
      M00_AXI_awaddr(8 downto 0) => smartconnect_0_M00_AXI_AWADDR(8 downto 0),
      M00_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M00_AXI_awprot_UNCONNECTED(2 downto 0),
      M00_AXI_awready => smartconnect_0_M00_AXI_AWREADY,
      M00_AXI_awvalid => smartconnect_0_M00_AXI_AWVALID,
      M00_AXI_bready => smartconnect_0_M00_AXI_BREADY,
      M00_AXI_bresp(1 downto 0) => smartconnect_0_M00_AXI_BRESP(1 downto 0),
      M00_AXI_bvalid => smartconnect_0_M00_AXI_BVALID,
      M00_AXI_rdata(31 downto 0) => smartconnect_0_M00_AXI_RDATA(31 downto 0),
      M00_AXI_rready => smartconnect_0_M00_AXI_RREADY,
      M00_AXI_rresp(1 downto 0) => smartconnect_0_M00_AXI_RRESP(1 downto 0),
      M00_AXI_rvalid => smartconnect_0_M00_AXI_RVALID,
      M00_AXI_wdata(31 downto 0) => smartconnect_0_M00_AXI_WDATA(31 downto 0),
      M00_AXI_wready => smartconnect_0_M00_AXI_WREADY,
      M00_AXI_wstrb(3 downto 0) => smartconnect_0_M00_AXI_WSTRB(3 downto 0),
      M00_AXI_wvalid => smartconnect_0_M00_AXI_WVALID,
      M01_AXI_araddr(8 downto 0) => smartconnect_0_M01_AXI_ARADDR(8 downto 0),
      M01_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_arprot_UNCONNECTED(2 downto 0),
      M01_AXI_arready => smartconnect_0_M01_AXI_ARREADY,
      M01_AXI_arvalid => smartconnect_0_M01_AXI_ARVALID,
      M01_AXI_awaddr(8 downto 0) => smartconnect_0_M01_AXI_AWADDR(8 downto 0),
      M01_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M01_AXI_awprot_UNCONNECTED(2 downto 0),
      M01_AXI_awready => smartconnect_0_M01_AXI_AWREADY,
      M01_AXI_awvalid => smartconnect_0_M01_AXI_AWVALID,
      M01_AXI_bready => smartconnect_0_M01_AXI_BREADY,
      M01_AXI_bresp(1 downto 0) => smartconnect_0_M01_AXI_BRESP(1 downto 0),
      M01_AXI_bvalid => smartconnect_0_M01_AXI_BVALID,
      M01_AXI_rdata(31 downto 0) => smartconnect_0_M01_AXI_RDATA(31 downto 0),
      M01_AXI_rready => smartconnect_0_M01_AXI_RREADY,
      M01_AXI_rresp(1 downto 0) => smartconnect_0_M01_AXI_RRESP(1 downto 0),
      M01_AXI_rvalid => smartconnect_0_M01_AXI_RVALID,
      M01_AXI_wdata(31 downto 0) => smartconnect_0_M01_AXI_WDATA(31 downto 0),
      M01_AXI_wready => smartconnect_0_M01_AXI_WREADY,
      M01_AXI_wstrb(3 downto 0) => smartconnect_0_M01_AXI_WSTRB(3 downto 0),
      M01_AXI_wvalid => smartconnect_0_M01_AXI_WVALID,
      M02_AXI_araddr(30 downto 0) => smartconnect_0_M02_AXI_ARADDR(30 downto 0),
      M02_AXI_arburst(1 downto 0) => smartconnect_0_M02_AXI_ARBURST(1 downto 0),
      M02_AXI_arcache(3 downto 0) => smartconnect_0_M02_AXI_ARCACHE(3 downto 0),
      M02_AXI_arlen(7 downto 0) => smartconnect_0_M02_AXI_ARLEN(7 downto 0),
      M02_AXI_arlock(0) => smartconnect_0_M02_AXI_ARLOCK(0),
      M02_AXI_arprot(2 downto 0) => smartconnect_0_M02_AXI_ARPROT(2 downto 0),
      M02_AXI_arqos(3 downto 0) => smartconnect_0_M02_AXI_ARQOS(3 downto 0),
      M02_AXI_arready => smartconnect_0_M02_AXI_ARREADY,
      M02_AXI_arsize(2 downto 0) => smartconnect_0_M02_AXI_ARSIZE(2 downto 0),
      M02_AXI_arvalid => smartconnect_0_M02_AXI_ARVALID,
      M02_AXI_awaddr(30 downto 0) => smartconnect_0_M02_AXI_AWADDR(30 downto 0),
      M02_AXI_awburst(1 downto 0) => smartconnect_0_M02_AXI_AWBURST(1 downto 0),
      M02_AXI_awcache(3 downto 0) => smartconnect_0_M02_AXI_AWCACHE(3 downto 0),
      M02_AXI_awlen(7 downto 0) => smartconnect_0_M02_AXI_AWLEN(7 downto 0),
      M02_AXI_awlock(0) => smartconnect_0_M02_AXI_AWLOCK(0),
      M02_AXI_awprot(2 downto 0) => smartconnect_0_M02_AXI_AWPROT(2 downto 0),
      M02_AXI_awqos(3 downto 0) => smartconnect_0_M02_AXI_AWQOS(3 downto 0),
      M02_AXI_awready => smartconnect_0_M02_AXI_AWREADY,
      M02_AXI_awsize(2 downto 0) => smartconnect_0_M02_AXI_AWSIZE(2 downto 0),
      M02_AXI_awvalid => smartconnect_0_M02_AXI_AWVALID,
      M02_AXI_bready => smartconnect_0_M02_AXI_BREADY,
      M02_AXI_bresp(1 downto 0) => smartconnect_0_M02_AXI_BRESP(1 downto 0),
      M02_AXI_bvalid => smartconnect_0_M02_AXI_BVALID,
      M02_AXI_rdata(511 downto 0) => smartconnect_0_M02_AXI_RDATA(511 downto 0),
      M02_AXI_rlast => smartconnect_0_M02_AXI_RLAST,
      M02_AXI_rready => smartconnect_0_M02_AXI_RREADY,
      M02_AXI_rresp(1 downto 0) => smartconnect_0_M02_AXI_RRESP(1 downto 0),
      M02_AXI_rvalid => smartconnect_0_M02_AXI_RVALID,
      M02_AXI_wdata(511 downto 0) => smartconnect_0_M02_AXI_WDATA(511 downto 0),
      M02_AXI_wlast => smartconnect_0_M02_AXI_WLAST,
      M02_AXI_wready => smartconnect_0_M02_AXI_WREADY,
      M02_AXI_wstrb(63 downto 0) => smartconnect_0_M02_AXI_WSTRB(63 downto 0),
      M02_AXI_wvalid => smartconnect_0_M02_AXI_WVALID,
      M03_AXI_araddr(31 downto 0) => smartconnect_0_M03_AXI_ARADDR(31 downto 0),
      M03_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M03_AXI_arprot_UNCONNECTED(2 downto 0),
      M03_AXI_arready => smartconnect_0_M03_AXI_ARREADY,
      M03_AXI_arvalid => smartconnect_0_M03_AXI_ARVALID,
      M03_AXI_awaddr(31 downto 0) => smartconnect_0_M03_AXI_AWADDR(31 downto 0),
      M03_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M03_AXI_awprot_UNCONNECTED(2 downto 0),
      M03_AXI_awready => smartconnect_0_M03_AXI_AWREADY,
      M03_AXI_awvalid => smartconnect_0_M03_AXI_AWVALID,
      M03_AXI_bready => smartconnect_0_M03_AXI_BREADY,
      M03_AXI_bresp(1 downto 0) => smartconnect_0_M03_AXI_BRESP(1 downto 0),
      M03_AXI_bvalid => smartconnect_0_M03_AXI_BVALID,
      M03_AXI_rdata(31 downto 0) => smartconnect_0_M03_AXI_RDATA(31 downto 0),
      M03_AXI_rready => smartconnect_0_M03_AXI_RREADY,
      M03_AXI_rresp(1 downto 0) => smartconnect_0_M03_AXI_RRESP(1 downto 0),
      M03_AXI_rvalid => smartconnect_0_M03_AXI_RVALID,
      M03_AXI_wdata(31 downto 0) => smartconnect_0_M03_AXI_WDATA(31 downto 0),
      M03_AXI_wready => smartconnect_0_M03_AXI_WREADY,
      M03_AXI_wstrb(3 downto 0) => NLW_smartconnect_0_M03_AXI_wstrb_UNCONNECTED(3 downto 0),
      M03_AXI_wvalid => smartconnect_0_M03_AXI_WVALID,
      M04_AXI_araddr(30 downto 0) => smartconnect_0_M04_AXI_ARADDR(30 downto 0),
      M04_AXI_arburst(1 downto 0) => smartconnect_0_M04_AXI_ARBURST(1 downto 0),
      M04_AXI_arcache(3 downto 0) => smartconnect_0_M04_AXI_ARCACHE(3 downto 0),
      M04_AXI_arlen(7 downto 0) => smartconnect_0_M04_AXI_ARLEN(7 downto 0),
      M04_AXI_arlock(0) => smartconnect_0_M04_AXI_ARLOCK(0),
      M04_AXI_arprot(2 downto 0) => smartconnect_0_M04_AXI_ARPROT(2 downto 0),
      M04_AXI_arqos(3 downto 0) => smartconnect_0_M04_AXI_ARQOS(3 downto 0),
      M04_AXI_arready => smartconnect_0_M04_AXI_ARREADY,
      M04_AXI_arsize(2 downto 0) => smartconnect_0_M04_AXI_ARSIZE(2 downto 0),
      M04_AXI_arvalid => smartconnect_0_M04_AXI_ARVALID,
      M04_AXI_awaddr(30 downto 0) => smartconnect_0_M04_AXI_AWADDR(30 downto 0),
      M04_AXI_awburst(1 downto 0) => smartconnect_0_M04_AXI_AWBURST(1 downto 0),
      M04_AXI_awcache(3 downto 0) => smartconnect_0_M04_AXI_AWCACHE(3 downto 0),
      M04_AXI_awlen(7 downto 0) => smartconnect_0_M04_AXI_AWLEN(7 downto 0),
      M04_AXI_awlock(0) => smartconnect_0_M04_AXI_AWLOCK(0),
      M04_AXI_awprot(2 downto 0) => smartconnect_0_M04_AXI_AWPROT(2 downto 0),
      M04_AXI_awqos(3 downto 0) => smartconnect_0_M04_AXI_AWQOS(3 downto 0),
      M04_AXI_awready => smartconnect_0_M04_AXI_AWREADY,
      M04_AXI_awsize(2 downto 0) => smartconnect_0_M04_AXI_AWSIZE(2 downto 0),
      M04_AXI_awvalid => smartconnect_0_M04_AXI_AWVALID,
      M04_AXI_bready => smartconnect_0_M04_AXI_BREADY,
      M04_AXI_bresp(1 downto 0) => smartconnect_0_M04_AXI_BRESP(1 downto 0),
      M04_AXI_bvalid => smartconnect_0_M04_AXI_BVALID,
      M04_AXI_rdata(511 downto 0) => smartconnect_0_M04_AXI_RDATA(511 downto 0),
      M04_AXI_rlast => smartconnect_0_M04_AXI_RLAST,
      M04_AXI_rready => smartconnect_0_M04_AXI_RREADY,
      M04_AXI_rresp(1 downto 0) => smartconnect_0_M04_AXI_RRESP(1 downto 0),
      M04_AXI_rvalid => smartconnect_0_M04_AXI_RVALID,
      M04_AXI_wdata(511 downto 0) => smartconnect_0_M04_AXI_WDATA(511 downto 0),
      M04_AXI_wlast => smartconnect_0_M04_AXI_WLAST,
      M04_AXI_wready => smartconnect_0_M04_AXI_WREADY,
      M04_AXI_wstrb(63 downto 0) => smartconnect_0_M04_AXI_WSTRB(63 downto 0),
      M04_AXI_wvalid => smartconnect_0_M04_AXI_WVALID,
      M05_AXI_araddr(31 downto 0) => smartconnect_0_M05_AXI_ARADDR(31 downto 0),
      M05_AXI_arprot(2 downto 0) => NLW_smartconnect_0_M05_AXI_arprot_UNCONNECTED(2 downto 0),
      M05_AXI_arready => smartconnect_0_M05_AXI_ARREADY,
      M05_AXI_arvalid => smartconnect_0_M05_AXI_ARVALID,
      M05_AXI_awaddr(31 downto 0) => smartconnect_0_M05_AXI_AWADDR(31 downto 0),
      M05_AXI_awprot(2 downto 0) => NLW_smartconnect_0_M05_AXI_awprot_UNCONNECTED(2 downto 0),
      M05_AXI_awready => smartconnect_0_M05_AXI_AWREADY,
      M05_AXI_awvalid => smartconnect_0_M05_AXI_AWVALID,
      M05_AXI_bready => smartconnect_0_M05_AXI_BREADY,
      M05_AXI_bresp(1 downto 0) => smartconnect_0_M05_AXI_BRESP(1 downto 0),
      M05_AXI_bvalid => smartconnect_0_M05_AXI_BVALID,
      M05_AXI_rdata(31 downto 0) => smartconnect_0_M05_AXI_RDATA(31 downto 0),
      M05_AXI_rready => smartconnect_0_M05_AXI_RREADY,
      M05_AXI_rresp(1 downto 0) => smartconnect_0_M05_AXI_RRESP(1 downto 0),
      M05_AXI_rvalid => smartconnect_0_M05_AXI_RVALID,
      M05_AXI_wdata(31 downto 0) => smartconnect_0_M05_AXI_WDATA(31 downto 0),
      M05_AXI_wready => smartconnect_0_M05_AXI_WREADY,
      M05_AXI_wstrb(3 downto 0) => NLW_smartconnect_0_M05_AXI_wstrb_UNCONNECTED(3 downto 0),
      M05_AXI_wvalid => smartconnect_0_M05_AXI_WVALID,
      S00_AXI_araddr(31 downto 0) => xdma_0_M_AXI_LITE_ARADDR(31 downto 0),
      S00_AXI_arprot(2 downto 0) => xdma_0_M_AXI_LITE_ARPROT(2 downto 0),
      S00_AXI_arready => xdma_0_M_AXI_LITE_ARREADY,
      S00_AXI_arvalid => xdma_0_M_AXI_LITE_ARVALID,
      S00_AXI_awaddr(31 downto 0) => xdma_0_M_AXI_LITE_AWADDR(31 downto 0),
      S00_AXI_awprot(2 downto 0) => xdma_0_M_AXI_LITE_AWPROT(2 downto 0),
      S00_AXI_awready => xdma_0_M_AXI_LITE_AWREADY,
      S00_AXI_awvalid => xdma_0_M_AXI_LITE_AWVALID,
      S00_AXI_bready => xdma_0_M_AXI_LITE_BREADY,
      S00_AXI_bresp(1 downto 0) => xdma_0_M_AXI_LITE_BRESP(1 downto 0),
      S00_AXI_bvalid => xdma_0_M_AXI_LITE_BVALID,
      S00_AXI_rdata(31 downto 0) => xdma_0_M_AXI_LITE_RDATA(31 downto 0),
      S00_AXI_rready => xdma_0_M_AXI_LITE_RREADY,
      S00_AXI_rresp(1 downto 0) => xdma_0_M_AXI_LITE_RRESP(1 downto 0),
      S00_AXI_rvalid => xdma_0_M_AXI_LITE_RVALID,
      S00_AXI_wdata(31 downto 0) => xdma_0_M_AXI_LITE_WDATA(31 downto 0),
      S00_AXI_wready => xdma_0_M_AXI_LITE_WREADY,
      S00_AXI_wstrb(3 downto 0) => xdma_0_M_AXI_LITE_WSTRB(3 downto 0),
      S00_AXI_wvalid => xdma_0_M_AXI_LITE_WVALID,
      S01_AXI_araddr(63 downto 0) => xdma_0_M_AXI_ARADDR(63 downto 0),
      S01_AXI_arburst(1 downto 0) => xdma_0_M_AXI_ARBURST(1 downto 0),
      S01_AXI_arcache(3 downto 0) => xdma_0_M_AXI_ARCACHE(3 downto 0),
      S01_AXI_arid(3 downto 0) => xdma_0_M_AXI_ARID(3 downto 0),
      S01_AXI_arlen(7 downto 0) => xdma_0_M_AXI_ARLEN(7 downto 0),
      S01_AXI_arlock(0) => xdma_0_M_AXI_ARLOCK,
      S01_AXI_arprot(2 downto 0) => xdma_0_M_AXI_ARPROT(2 downto 0),
      S01_AXI_arqos(3 downto 0) => B"0000",
      S01_AXI_arready => xdma_0_M_AXI_ARREADY,
      S01_AXI_arsize(2 downto 0) => xdma_0_M_AXI_ARSIZE(2 downto 0),
      S01_AXI_arvalid => xdma_0_M_AXI_ARVALID,
      S01_AXI_awaddr(63 downto 0) => xdma_0_M_AXI_AWADDR(63 downto 0),
      S01_AXI_awburst(1 downto 0) => xdma_0_M_AXI_AWBURST(1 downto 0),
      S01_AXI_awcache(3 downto 0) => xdma_0_M_AXI_AWCACHE(3 downto 0),
      S01_AXI_awid(3 downto 0) => xdma_0_M_AXI_AWID(3 downto 0),
      S01_AXI_awlen(7 downto 0) => xdma_0_M_AXI_AWLEN(7 downto 0),
      S01_AXI_awlock(0) => xdma_0_M_AXI_AWLOCK,
      S01_AXI_awprot(2 downto 0) => xdma_0_M_AXI_AWPROT(2 downto 0),
      S01_AXI_awqos(3 downto 0) => B"0000",
      S01_AXI_awready => xdma_0_M_AXI_AWREADY,
      S01_AXI_awsize(2 downto 0) => xdma_0_M_AXI_AWSIZE(2 downto 0),
      S01_AXI_awvalid => xdma_0_M_AXI_AWVALID,
      S01_AXI_bid(3 downto 0) => xdma_0_M_AXI_BID(3 downto 0),
      S01_AXI_bready => xdma_0_M_AXI_BREADY,
      S01_AXI_bresp(1 downto 0) => xdma_0_M_AXI_BRESP(1 downto 0),
      S01_AXI_bvalid => xdma_0_M_AXI_BVALID,
      S01_AXI_rdata(63 downto 0) => xdma_0_M_AXI_RDATA(63 downto 0),
      S01_AXI_rid(3 downto 0) => xdma_0_M_AXI_RID(3 downto 0),
      S01_AXI_rlast => xdma_0_M_AXI_RLAST,
      S01_AXI_rready => xdma_0_M_AXI_RREADY,
      S01_AXI_rresp(1 downto 0) => xdma_0_M_AXI_RRESP(1 downto 0),
      S01_AXI_rvalid => xdma_0_M_AXI_RVALID,
      S01_AXI_wdata(63 downto 0) => xdma_0_M_AXI_WDATA(63 downto 0),
      S01_AXI_wlast => xdma_0_M_AXI_WLAST,
      S01_AXI_wready => xdma_0_M_AXI_WREADY,
      S01_AXI_wstrb(7 downto 0) => xdma_0_M_AXI_WSTRB(7 downto 0),
      S01_AXI_wvalid => xdma_0_M_AXI_WVALID,
      aclk => xdma_0_axi_aclk,
      aclk1 => mig_7series_0_c0_ui_clk,
      aclk2 => mig_7series_0_c1_ui_clk,
      aresetn => rst_xdma_0_250M_peripheral_aresetn
    );
util_ds_buf: component design_1_util_ds_buf_1
     port map (
      IBUF_DS_N(0) => pcie_refclk_1_CLK_N(0),
      IBUF_DS_ODIV2(0) => NLW_util_ds_buf_IBUF_DS_ODIV2_UNCONNECTED(0),
      IBUF_DS_P(0) => pcie_refclk_1_CLK_P(0),
      IBUF_OUT(0) => util_ds_buf_IBUF_OUT(0)
    );
xdma_0: component design_1_xdma_0_2
     port map (
      axi_aclk => xdma_0_axi_aclk,
      axi_aresetn => rst_xdma_0_250M_peripheral_aresetn,
      m_axi_araddr(63 downto 0) => xdma_0_M_AXI_ARADDR(63 downto 0),
      m_axi_arburst(1 downto 0) => xdma_0_M_AXI_ARBURST(1 downto 0),
      m_axi_arcache(3 downto 0) => xdma_0_M_AXI_ARCACHE(3 downto 0),
      m_axi_arid(3 downto 0) => xdma_0_M_AXI_ARID(3 downto 0),
      m_axi_arlen(7 downto 0) => xdma_0_M_AXI_ARLEN(7 downto 0),
      m_axi_arlock => xdma_0_M_AXI_ARLOCK,
      m_axi_arprot(2 downto 0) => xdma_0_M_AXI_ARPROT(2 downto 0),
      m_axi_arready => xdma_0_M_AXI_ARREADY,
      m_axi_arsize(2 downto 0) => xdma_0_M_AXI_ARSIZE(2 downto 0),
      m_axi_arvalid => xdma_0_M_AXI_ARVALID,
      m_axi_awaddr(63 downto 0) => xdma_0_M_AXI_AWADDR(63 downto 0),
      m_axi_awburst(1 downto 0) => xdma_0_M_AXI_AWBURST(1 downto 0),
      m_axi_awcache(3 downto 0) => xdma_0_M_AXI_AWCACHE(3 downto 0),
      m_axi_awid(3 downto 0) => xdma_0_M_AXI_AWID(3 downto 0),
      m_axi_awlen(7 downto 0) => xdma_0_M_AXI_AWLEN(7 downto 0),
      m_axi_awlock => xdma_0_M_AXI_AWLOCK,
      m_axi_awprot(2 downto 0) => xdma_0_M_AXI_AWPROT(2 downto 0),
      m_axi_awready => xdma_0_M_AXI_AWREADY,
      m_axi_awsize(2 downto 0) => xdma_0_M_AXI_AWSIZE(2 downto 0),
      m_axi_awvalid => xdma_0_M_AXI_AWVALID,
      m_axi_bid(3 downto 0) => xdma_0_M_AXI_BID(3 downto 0),
      m_axi_bready => xdma_0_M_AXI_BREADY,
      m_axi_bresp(1 downto 0) => xdma_0_M_AXI_BRESP(1 downto 0),
      m_axi_bvalid => xdma_0_M_AXI_BVALID,
      m_axi_rdata(63 downto 0) => xdma_0_M_AXI_RDATA(63 downto 0),
      m_axi_rid(3 downto 0) => xdma_0_M_AXI_RID(3 downto 0),
      m_axi_rlast => xdma_0_M_AXI_RLAST,
      m_axi_rready => xdma_0_M_AXI_RREADY,
      m_axi_rresp(1 downto 0) => xdma_0_M_AXI_RRESP(1 downto 0),
      m_axi_rvalid => xdma_0_M_AXI_RVALID,
      m_axi_wdata(63 downto 0) => xdma_0_M_AXI_WDATA(63 downto 0),
      m_axi_wlast => xdma_0_M_AXI_WLAST,
      m_axi_wready => xdma_0_M_AXI_WREADY,
      m_axi_wstrb(7 downto 0) => xdma_0_M_AXI_WSTRB(7 downto 0),
      m_axi_wvalid => xdma_0_M_AXI_WVALID,
      m_axil_araddr(31 downto 0) => xdma_0_M_AXI_LITE_ARADDR(31 downto 0),
      m_axil_arprot(2 downto 0) => xdma_0_M_AXI_LITE_ARPROT(2 downto 0),
      m_axil_arready => xdma_0_M_AXI_LITE_ARREADY,
      m_axil_arvalid => xdma_0_M_AXI_LITE_ARVALID,
      m_axil_awaddr(31 downto 0) => xdma_0_M_AXI_LITE_AWADDR(31 downto 0),
      m_axil_awprot(2 downto 0) => xdma_0_M_AXI_LITE_AWPROT(2 downto 0),
      m_axil_awready => xdma_0_M_AXI_LITE_AWREADY,
      m_axil_awvalid => xdma_0_M_AXI_LITE_AWVALID,
      m_axil_bready => xdma_0_M_AXI_LITE_BREADY,
      m_axil_bresp(1 downto 0) => xdma_0_M_AXI_LITE_BRESP(1 downto 0),
      m_axil_bvalid => xdma_0_M_AXI_LITE_BVALID,
      m_axil_rdata(31 downto 0) => xdma_0_M_AXI_LITE_RDATA(31 downto 0),
      m_axil_rready => xdma_0_M_AXI_LITE_RREADY,
      m_axil_rresp(1 downto 0) => xdma_0_M_AXI_LITE_RRESP(1 downto 0),
      m_axil_rvalid => xdma_0_M_AXI_LITE_RVALID,
      m_axil_wdata(31 downto 0) => xdma_0_M_AXI_LITE_WDATA(31 downto 0),
      m_axil_wready => xdma_0_M_AXI_LITE_WREADY,
      m_axil_wstrb(3 downto 0) => xdma_0_M_AXI_LITE_WSTRB(3 downto 0),
      m_axil_wvalid => xdma_0_M_AXI_LITE_WVALID,
      msi_enable => NLW_xdma_0_msi_enable_UNCONNECTED,
      msi_vector_width(2 downto 0) => NLW_xdma_0_msi_vector_width_UNCONNECTED(2 downto 0),
      pci_exp_rxn(3 downto 0) => xdma_0_pcie_mgt_rxn(3 downto 0),
      pci_exp_rxp(3 downto 0) => xdma_0_pcie_mgt_rxp(3 downto 0),
      pci_exp_txn(3 downto 0) => xdma_0_pcie_mgt_txn(3 downto 0),
      pci_exp_txp(3 downto 0) => xdma_0_pcie_mgt_txp(3 downto 0),
      sys_clk => util_ds_buf_IBUF_OUT(0),
      sys_rst_n => pcie_perstn_1,
      user_lnk_up => NLW_xdma_0_user_lnk_up_UNCONNECTED,
      usr_irq_ack(0) => NLW_xdma_0_usr_irq_ack_UNCONNECTED(0),
      usr_irq_req(0) => '0'
    );
end STRUCTURE;
