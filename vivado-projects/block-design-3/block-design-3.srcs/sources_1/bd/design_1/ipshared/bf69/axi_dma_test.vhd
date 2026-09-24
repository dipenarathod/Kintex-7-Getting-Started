--------------------------------------------------------------------------------
-- axi_dma_test : v1 bring-up peripheral
--   * AXI4-Lite slave  (s00_axi) : 32-bit, 16 x 32-bit register window
--   * AXI4 Full master (m00_axi) : 64-bit addr, 32-bit data, INCR, no IDs,
--                                  1 outstanding burst of 1..256 beats
--
-- Register map (byte offset from s00_axi base; block design: 0x4004_0000)
--   0x00 ID       RO  0xC0DE0001
--   0x04 SCRATCH  RW  loopback test of PCIe -> AXI-Lite path
--   0x08 CTRL     RW  [0] START (self-clearing, ignored while busy)
--                     [1] MODE  0 = write burst, 1 = read burst
--   0x0C STATUS   RO  [0] BUSY  [1] DONE (write 1 to clear)  [3:2] last BRESP/RRESP error
--   0x10 ADDR_LO  RW  master address [31:0]  (low 2 bits ignored)
--   0x14 ADDR_HI  RW  master address [63:32]
--   0x18 WDATA    RW  first write word; beat n writes WDATA + n
--   0x1C RDATA    RO  last word of the last read burst
--   0x20 LEN      RW  beats per burst, 1..256 (reset = 1)
--   0x24 CLK_CNT  RO  free-running counter on s00_axi_aclk
--
-- Burst must not cross a 4 KB boundary (AXI rule) - software's job in v1.
-- Both clocks/resets come from xdma_0/axi_aclk + axi_aresetn; SmartConnect does
-- the CDC to the MIG ui_clk.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi_dma_test is
  port (
    -- AXI4-Lite slave ---------------------------------------------------------
    s00_axi_aclk    : in  std_logic;
    s00_axi_aresetn : in  std_logic;
    s00_axi_awaddr  : in  std_logic_vector(5 downto 0);
    s00_axi_awprot  : in  std_logic_vector(2 downto 0);
    s00_axi_awvalid : in  std_logic;
    s00_axi_awready : out std_logic;
    s00_axi_wdata   : in  std_logic_vector(31 downto 0);
    s00_axi_wstrb   : in  std_logic_vector(3 downto 0);
    s00_axi_wvalid  : in  std_logic;
    s00_axi_wready  : out std_logic;
    s00_axi_bresp   : out std_logic_vector(1 downto 0);
    s00_axi_bvalid  : out std_logic;
    s00_axi_bready  : in  std_logic;
    s00_axi_araddr  : in  std_logic_vector(5 downto 0);
    s00_axi_arprot  : in  std_logic_vector(2 downto 0);
    s00_axi_arvalid : in  std_logic;
    s00_axi_arready : out std_logic;
    s00_axi_rdata   : out std_logic_vector(31 downto 0);
    s00_axi_rresp   : out std_logic_vector(1 downto 0);
    s00_axi_rvalid  : out std_logic;
    s00_axi_rready  : in  std_logic;
    -- AXI4 Full master --------------------------------------------------------
    m00_axi_aclk    : in  std_logic;
    m00_axi_aresetn : in  std_logic;
    m00_axi_awaddr  : out std_logic_vector(63 downto 0);
    m00_axi_awlen   : out std_logic_vector(7 downto 0);
    m00_axi_awsize  : out std_logic_vector(2 downto 0);
    m00_axi_awburst : out std_logic_vector(1 downto 0);
    m00_axi_awlock  : out std_logic;
    m00_axi_awcache : out std_logic_vector(3 downto 0);
    m00_axi_awprot  : out std_logic_vector(2 downto 0);
    m00_axi_awqos   : out std_logic_vector(3 downto 0);
    m00_axi_awvalid : out std_logic;
    m00_axi_awready : in  std_logic;
    m00_axi_wdata   : out std_logic_vector(31 downto 0);
    m00_axi_wstrb   : out std_logic_vector(3 downto 0);
    m00_axi_wlast   : out std_logic;
    m00_axi_wvalid  : out std_logic;
    m00_axi_wready  : in  std_logic;
    m00_axi_bresp   : in  std_logic_vector(1 downto 0);
    m00_axi_bvalid  : in  std_logic;
    m00_axi_bready  : out std_logic;
    m00_axi_araddr  : out std_logic_vector(63 downto 0);
    m00_axi_arlen   : out std_logic_vector(7 downto 0);
    m00_axi_arsize  : out std_logic_vector(2 downto 0);
    m00_axi_arburst : out std_logic_vector(1 downto 0);
    m00_axi_arlock  : out std_logic;
    m00_axi_arcache : out std_logic_vector(3 downto 0);
    m00_axi_arprot  : out std_logic_vector(2 downto 0);
    m00_axi_arqos   : out std_logic_vector(3 downto 0);
    m00_axi_arvalid : out std_logic;
    m00_axi_arready : in  std_logic;
    m00_axi_rdata   : in  std_logic_vector(31 downto 0);
    m00_axi_rresp   : in  std_logic_vector(1 downto 0);
    m00_axi_rlast   : in  std_logic;
    m00_axi_rvalid  : in  std_logic;
    m00_axi_rready  : out std_logic
  );

  -- Clock/reset association so Vivado infers the interfaces in a module reference
  attribute X_INTERFACE_INFO      : string;
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk    : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "ASSOCIATED_BUSIF s00_axi, ASSOCIATED_RESET s00_axi_aresetn";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of m00_axi_aclk    : signal is "xilinx.com:signal:clock:1.0 m00_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER of m00_axi_aclk : signal is "ASSOCIATED_BUSIF m00_axi, ASSOCIATED_RESET m00_axi_aresetn";
  attribute X_INTERFACE_INFO of m00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 m00_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of m00_axi_aresetn : signal is "POLARITY ACTIVE_LOW";
end entity axi_dma_test;

architecture rtl of axi_dma_test is

  constant C_ID : std_logic_vector(31 downto 0) := x"C0DE0001";

  -- software-visible registers (s00 domain)
  signal r_scratch : std_logic_vector(31 downto 0);
  signal r_mode    : std_logic;
  signal r_addr_lo : std_logic_vector(31 downto 0);
  signal r_addr_hi : std_logic_vector(31 downto 0);
  signal r_wdata   : std_logic_vector(31 downto 0);
  signal r_len     : std_logic_vector(31 downto 0);
  signal r_done    : std_logic;
  signal clk_cnt   : unsigned(31 downto 0);

  -- lite <-> master handshakes (same clock net, so no CDC needed)
  signal start_pulse : std_logic;
  signal done_pulse  : std_logic;
  signal m_busy      : std_logic;
  signal m_resp      : std_logic_vector(1 downto 0);
  signal m_rdata     : std_logic_vector(31 downto 0);

  -- lite channel regs
  signal awready_r, wready_r, bvalid_r : std_logic;
  signal arready_r, rvalid_r           : std_logic;
  signal rdata_r                       : std_logic_vector(31 downto 0);

  function apply_strb(old_v, new_v : std_logic_vector(31 downto 0);
                      strb         : std_logic_vector(3 downto 0))
    return std_logic_vector is
    variable v : std_logic_vector(31 downto 0) := old_v;
  begin
    for i in 0 to 3 loop
      if strb(i) = '1' then
        v(8*i+7 downto 8*i) := new_v(8*i+7 downto 8*i);
      end if;
    end loop;
    return v;
  end function;

  -- master FSM
  type state_t is (S_IDLE, S_WR, S_RD);
  signal state   : state_t;
  signal awvalid : std_logic;
  signal wvalid  : std_logic;
  signal wlast   : std_logic;
  signal bready  : std_logic;
  signal arvalid : std_logic;
  signal rready  : std_logic;
  signal addr    : unsigned(63 downto 0);
  signal len_m1  : unsigned(7 downto 0);
  signal beat    : unsigned(7 downto 0);
  signal wdata   : unsigned(31 downto 0);

begin

  ------------------------------------------------------------------------------
  -- AXI4-Lite slave
  ------------------------------------------------------------------------------
  s00_axi_awready <= awready_r;
  s00_axi_wready  <= wready_r;
  s00_axi_bvalid  <= bvalid_r;
  s00_axi_bresp   <= "00";
  s00_axi_arready <= arready_r;
  s00_axi_rvalid  <= rvalid_r;
  s00_axi_rdata   <= rdata_r;
  s00_axi_rresp   <= "00";

  lite_p : process (s00_axi_aclk)
    variable idx : integer range 0 to 15;
  begin
    if rising_edge(s00_axi_aclk) then
      if s00_axi_aresetn = '0' then
        awready_r   <= '0';
        wready_r    <= '0';
        bvalid_r    <= '0';
        arready_r   <= '0';
        rvalid_r    <= '0';
        rdata_r     <= (others => '0');
        r_scratch   <= (others => '0');
        r_mode      <= '0';
        r_addr_lo   <= (others => '0');
        r_addr_hi   <= (others => '0');
        r_wdata     <= (others => '0');
        r_len       <= x"00000001";
        r_done      <= '0';
        clk_cnt     <= (others => '0');
        start_pulse <= '0';
      else
        clk_cnt     <= clk_cnt + 1;
        start_pulse <= '0';
        awready_r   <= '0';
        wready_r    <= '0';
        arready_r   <= '0';

        if done_pulse = '1' then
          r_done <= '1';
        end if;

        -- write channel: accept AW+W together, one at a time
        if awready_r = '0' and s00_axi_awvalid = '1' and s00_axi_wvalid = '1'
           and bvalid_r = '0' then
          awready_r <= '1';
          wready_r  <= '1';
          bvalid_r  <= '1';
          idx := to_integer(unsigned(s00_axi_awaddr(5 downto 2)));
          case idx is
            when 1 => r_scratch <= apply_strb(r_scratch, s00_axi_wdata, s00_axi_wstrb);
            when 2 =>
              if s00_axi_wstrb(0) = '1' then
                r_mode <= s00_axi_wdata(1);
                if s00_axi_wdata(0) = '1' and m_busy = '0' then
                  start_pulse <= '1';
                  r_done      <= '0';
                end if;
              end if;
            when 3 =>
              if s00_axi_wstrb(0) = '1' and s00_axi_wdata(1) = '1' then
                r_done <= '0';  -- W1C
              end if;
            when 4 => r_addr_lo <= apply_strb(r_addr_lo, s00_axi_wdata, s00_axi_wstrb);
            when 5 => r_addr_hi <= apply_strb(r_addr_hi, s00_axi_wdata, s00_axi_wstrb);
            when 6 => r_wdata   <= apply_strb(r_wdata,   s00_axi_wdata, s00_axi_wstrb);
            when 8 => r_len     <= apply_strb(r_len,     s00_axi_wdata, s00_axi_wstrb);
            when others => null;
          end case;
        end if;
        if bvalid_r = '1' and s00_axi_bready = '1' then
          bvalid_r <= '0';
        end if;

        -- read channel
        if arready_r = '0' and s00_axi_arvalid = '1' and rvalid_r = '0' then
          arready_r <= '1';
          rvalid_r  <= '1';
          idx := to_integer(unsigned(s00_axi_araddr(5 downto 2)));
          case idx is
            when 0 => rdata_r <= C_ID;
            when 1 => rdata_r <= r_scratch;
            when 2 => rdata_r <= (31 downto 2 => '0') & r_mode & '0';
            when 3 => rdata_r <= (31 downto 4 => '0') & m_resp & r_done & m_busy;
            when 4 => rdata_r <= r_addr_lo;
            when 5 => rdata_r <= r_addr_hi;
            when 6 => rdata_r <= r_wdata;
            when 7 => rdata_r <= m_rdata;
            when 8 => rdata_r <= r_len;
            when 9 => rdata_r <= std_logic_vector(clk_cnt);
            when others => rdata_r <= (others => '0');
          end case;
        end if;
        if rvalid_r = '1' and s00_axi_rready = '1' then
          rvalid_r <= '0';
        end if;
      end if;
    end if;
  end process;

  ------------------------------------------------------------------------------
  -- AXI4 master: one write or read burst per START
  ------------------------------------------------------------------------------
  m00_axi_awaddr  <= std_logic_vector(addr);
  m00_axi_araddr  <= std_logic_vector(addr);
  m00_axi_awlen   <= std_logic_vector(len_m1);
  m00_axi_arlen   <= std_logic_vector(len_m1);
  m00_axi_awsize  <= "010";      -- 4 bytes/beat
  m00_axi_arsize  <= "010";
  m00_axi_awburst <= "01";       -- INCR
  m00_axi_arburst <= "01";
  m00_axi_awlock  <= '0';
  m00_axi_arlock  <= '0';
  m00_axi_awcache <= "0011";
  m00_axi_arcache <= "0011";
  m00_axi_awprot  <= "000";
  m00_axi_arprot  <= "000";
  m00_axi_awqos   <= "0000";
  m00_axi_arqos   <= "0000";
  m00_axi_awvalid <= awvalid;
  m00_axi_wvalid  <= wvalid;
  m00_axi_wlast   <= wlast;
  m00_axi_wdata   <= std_logic_vector(wdata);
  m00_axi_wstrb   <= "1111";
  m00_axi_bready  <= bready;
  m00_axi_arvalid <= arvalid;
  m00_axi_rready  <= rready;

  master_p : process (m00_axi_aclk)
    variable len_v : unsigned(8 downto 0);
  begin
    if rising_edge(m00_axi_aclk) then
      if m00_axi_aresetn = '0' then
        state      <= S_IDLE;
        awvalid    <= '0';
        wvalid     <= '0';
        wlast      <= '0';
        bready     <= '0';
        arvalid    <= '0';
        rready     <= '0';
        addr       <= (others => '0');
        len_m1     <= (others => '0');
        beat       <= (others => '0');
        wdata      <= (others => '0');
        m_busy     <= '0';
        m_resp     <= "00";
        m_rdata    <= (others => '0');
        done_pulse <= '0';
      else
        done_pulse <= '0';

        case state is
          when S_IDLE =>
            if start_pulse = '1' then
              -- clamp LEN to 1..256
              if unsigned(r_len) = 0 then
                len_v := to_unsigned(1, 9);
              elsif unsigned(r_len) > 256 then
                len_v := to_unsigned(256, 9);
              else
                len_v := unsigned(r_len(8 downto 0));
              end if;
              len_m1 <= resize(len_v - 1, 8);
              addr   <= unsigned(r_addr_hi) & unsigned(r_addr_lo(31 downto 2)) & "00";
              beat   <= (others => '0');
              wdata  <= unsigned(r_wdata);
              m_resp <= "00";
              m_busy <= '1';
              if r_mode = '0' then
                awvalid <= '1';
                wvalid  <= '1';
                bready  <= '1';
                if len_v = 1 then wlast <= '1'; end if;
                state   <= S_WR;
              else
                arvalid <= '1';
                rready  <= '1';
                state   <= S_RD;
              end if;
            end if;

          when S_WR =>
            if awvalid = '1' and m00_axi_awready = '1' then
              awvalid <= '0';
            end if;
            if wvalid = '1' and m00_axi_wready = '1' then
              if wlast = '1' then
                wvalid <= '0';
                wlast  <= '0';
              else
                beat  <= beat + 1;
                wdata <= wdata + 1;
                if beat + 1 = len_m1 then wlast <= '1'; end if;
              end if;
            end if;
            -- B only comes after AW and the last W beat are accepted
            if m00_axi_bvalid = '1' and bready = '1' then
              bready     <= '0';
              m_resp     <= m00_axi_bresp;
              m_busy     <= '0';
              done_pulse <= '1';
              state      <= S_IDLE;
            end if;

          when S_RD =>
            if arvalid = '1' and m00_axi_arready = '1' then
              arvalid <= '0';
            end if;
            if m00_axi_rvalid = '1' and rready = '1' then
              m_rdata <= m00_axi_rdata;
              if m00_axi_rresp /= "00" then
                m_resp <= m00_axi_rresp;
              end if;
              if m00_axi_rlast = '1' then
                rready     <= '0';
                m_busy     <= '0';
                done_pulse <= '1';
                state      <= S_IDLE;
              end if;
            end if;
        end case;
      end if;
    end if;
  end process;

end architecture rtl;