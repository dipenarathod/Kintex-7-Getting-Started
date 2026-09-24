--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
--Date        : Thu Sep 24 10:50:02 2026
--Host        : dipen-ubuntu-mate running 64-bit Ubuntu 24.04.3 LTS
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
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
    iic_lm73_scl_io : inout STD_LOGIC;
    iic_lm73_sda_io : inout STD_LOGIC;
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
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    pcie_perstn : in STD_LOGIC;
    resetn : in STD_LOGIC;
    iic_lm73_scl_i : in STD_LOGIC;
    iic_lm73_scl_o : out STD_LOGIC;
    iic_lm73_scl_t : out STD_LOGIC;
    iic_lm73_sda_i : in STD_LOGIC;
    iic_lm73_sda_o : out STD_LOGIC;
    iic_lm73_sda_t : out STD_LOGIC;
    sys_diff_clock_clk_p : in STD_LOGIC;
    sys_diff_clock_clk_n : in STD_LOGIC;
    pcie_refclk_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_refclk_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    ddr3_sdram_ch01_0_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_0_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_0_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_sdram_ch01_0_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_ch01_0_ras_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_cas_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_we_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_reset_n : out STD_LOGIC;
    ddr3_sdram_ch01_0_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_0_odt : out STD_LOGIC_VECTOR ( 0 to 0 );
    pci_express_x4_rxn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_express_x4_rxp : in STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_express_x4_txn : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pci_express_x4_txp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led_3bits_tri_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sys_diff_clock_0_clk_p : in STD_LOGIC;
    sys_diff_clock_0_clk_n : in STD_LOGIC;
    ddr3_sdram_ch01_dq : inout STD_LOGIC_VECTOR ( 71 downto 0 );
    ddr3_sdram_ch01_dqs_p : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_dqs_n : inout STD_LOGIC_VECTOR ( 8 downto 0 );
    ddr3_sdram_ch01_addr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    ddr3_sdram_ch01_ba : out STD_LOGIC_VECTOR ( 2 downto 0 );
    ddr3_sdram_ch01_ras_n : out STD_LOGIC;
    ddr3_sdram_ch01_cas_n : out STD_LOGIC;
    ddr3_sdram_ch01_we_n : out STD_LOGIC;
    ddr3_sdram_ch01_reset_n : out STD_LOGIC;
    ddr3_sdram_ch01_ck_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_ck_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_cke : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_cs_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    ddr3_sdram_ch01_odt : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component design_1;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal iic_lm73_scl_i : STD_LOGIC;
  signal iic_lm73_scl_o : STD_LOGIC;
  signal iic_lm73_scl_t : STD_LOGIC;
  signal iic_lm73_sda_i : STD_LOGIC;
  signal iic_lm73_sda_o : STD_LOGIC;
  signal iic_lm73_sda_t : STD_LOGIC;
begin
design_1_i: component design_1
     port map (
      ddr3_sdram_ch01_0_addr(14 downto 0) => ddr3_sdram_ch01_0_addr(14 downto 0),
      ddr3_sdram_ch01_0_ba(2 downto 0) => ddr3_sdram_ch01_0_ba(2 downto 0),
      ddr3_sdram_ch01_0_cas_n => ddr3_sdram_ch01_0_cas_n,
      ddr3_sdram_ch01_0_ck_n(0) => ddr3_sdram_ch01_0_ck_n(0),
      ddr3_sdram_ch01_0_ck_p(0) => ddr3_sdram_ch01_0_ck_p(0),
      ddr3_sdram_ch01_0_cke(0) => ddr3_sdram_ch01_0_cke(0),
      ddr3_sdram_ch01_0_cs_n(0) => ddr3_sdram_ch01_0_cs_n(0),
      ddr3_sdram_ch01_0_dq(71 downto 0) => ddr3_sdram_ch01_0_dq(71 downto 0),
      ddr3_sdram_ch01_0_dqs_n(8 downto 0) => ddr3_sdram_ch01_0_dqs_n(8 downto 0),
      ddr3_sdram_ch01_0_dqs_p(8 downto 0) => ddr3_sdram_ch01_0_dqs_p(8 downto 0),
      ddr3_sdram_ch01_0_odt(0) => ddr3_sdram_ch01_0_odt(0),
      ddr3_sdram_ch01_0_ras_n => ddr3_sdram_ch01_0_ras_n,
      ddr3_sdram_ch01_0_reset_n => ddr3_sdram_ch01_0_reset_n,
      ddr3_sdram_ch01_0_we_n => ddr3_sdram_ch01_0_we_n,
      ddr3_sdram_ch01_addr(14 downto 0) => ddr3_sdram_ch01_addr(14 downto 0),
      ddr3_sdram_ch01_ba(2 downto 0) => ddr3_sdram_ch01_ba(2 downto 0),
      ddr3_sdram_ch01_cas_n => ddr3_sdram_ch01_cas_n,
      ddr3_sdram_ch01_ck_n(0) => ddr3_sdram_ch01_ck_n(0),
      ddr3_sdram_ch01_ck_p(0) => ddr3_sdram_ch01_ck_p(0),
      ddr3_sdram_ch01_cke(0) => ddr3_sdram_ch01_cke(0),
      ddr3_sdram_ch01_cs_n(0) => ddr3_sdram_ch01_cs_n(0),
      ddr3_sdram_ch01_dq(71 downto 0) => ddr3_sdram_ch01_dq(71 downto 0),
      ddr3_sdram_ch01_dqs_n(8 downto 0) => ddr3_sdram_ch01_dqs_n(8 downto 0),
      ddr3_sdram_ch01_dqs_p(8 downto 0) => ddr3_sdram_ch01_dqs_p(8 downto 0),
      ddr3_sdram_ch01_odt(0) => ddr3_sdram_ch01_odt(0),
      ddr3_sdram_ch01_ras_n => ddr3_sdram_ch01_ras_n,
      ddr3_sdram_ch01_reset_n => ddr3_sdram_ch01_reset_n,
      ddr3_sdram_ch01_we_n => ddr3_sdram_ch01_we_n,
      iic_lm73_scl_i => iic_lm73_scl_i,
      iic_lm73_scl_o => iic_lm73_scl_o,
      iic_lm73_scl_t => iic_lm73_scl_t,
      iic_lm73_sda_i => iic_lm73_sda_i,
      iic_lm73_sda_o => iic_lm73_sda_o,
      iic_lm73_sda_t => iic_lm73_sda_t,
      led_3bits_tri_o(2 downto 0) => led_3bits_tri_o(2 downto 0),
      pci_express_x4_rxn(3 downto 0) => pci_express_x4_rxn(3 downto 0),
      pci_express_x4_rxp(3 downto 0) => pci_express_x4_rxp(3 downto 0),
      pci_express_x4_txn(3 downto 0) => pci_express_x4_txn(3 downto 0),
      pci_express_x4_txp(3 downto 0) => pci_express_x4_txp(3 downto 0),
      pcie_perstn => pcie_perstn,
      pcie_refclk_clk_n(0) => pcie_refclk_clk_n(0),
      pcie_refclk_clk_p(0) => pcie_refclk_clk_p(0),
      resetn => resetn,
      sys_diff_clock_0_clk_n => sys_diff_clock_0_clk_n,
      sys_diff_clock_0_clk_p => sys_diff_clock_0_clk_p,
      sys_diff_clock_clk_n => sys_diff_clock_clk_n,
      sys_diff_clock_clk_p => sys_diff_clock_clk_p
    );
iic_lm73_scl_iobuf: component IOBUF
     port map (
      I => iic_lm73_scl_o,
      IO => iic_lm73_scl_io,
      O => iic_lm73_scl_i,
      T => iic_lm73_scl_t
    );
iic_lm73_sda_iobuf: component IOBUF
     port map (
      I => iic_lm73_sda_o,
      IO => iic_lm73_sda_io,
      O => iic_lm73_sda_i,
      T => iic_lm73_sda_t
    );
end STRUCTURE;
