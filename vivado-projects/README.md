Vivado Projects. Unfortunately, I did not save the block design 1 project. 

# Project Descriptions

## Block Design 2 (block-design-2)
Simple Vivado block design that connects the PCIe DMA IP block to the on-board GPIO LEDs, LM783 temperature sensor, and 4GB DDR3 RAM arranged in dual-channel mode.
This project is great if you want to test the AMD XDMA drivers with the FPGA card and it's features.

## axi_dma_test: AXI4-Lite Slave + AXI4 Master Test Peripheral
**Used Claude for this peripheral and its tests shown below**

A minimal, hand-written VHDL peripheral for bring-up on the Kintex-7 PCIe card. It replaces the
Vivado wizard-generated `myip` block and keeps the same port names, so it drops into the block design.

- **Control:** AXI4-Lite slave (`s00_axi`) at `0x4004_0000` (64K). The host reaches it through the
  XDMA AXI-Lite BAR at offset `0x40000`.
- **Data:** AXI4 master (`m00_axi`, 64-bit address, 32-bit data) into SmartConnect and both DDR3
  channels (C1 at `0x0000_0000`, C0 at `0x8000_0000`). It issues single INCR bursts of 1–256 beats.
- **Clock/reset:** `xdma_0/axi_aclk` and `xdma_0/axi_aresetn` for both interfaces. SmartConnect
  handles the crossing to the MIG `ui_clk`.

### Register map

| Offset | Name     | Access | Description                                              |
|--------|----------|--------|----------------------------------------------------------|
| 0x00   | ID       | RO     | `0xC0DE0001`                                             |
| 0x04   | SCRATCH  | RW     | Loopback test register                                   |
| 0x08   | CTRL     | RW     | [0] START (self-clearing), [1] MODE (0 = write, 1 = read)|
| 0x0C   | STATUS   | RO/W1C | [0] BUSY, [1] DONE (write 1 to clear), [3:2] last bus response |
| 0x10   | ADDR_LO  | RW     | Master address [31:0] (low 2 bits ignored)               |
| 0x14   | ADDR_HI  | RW     | Master address [63:32]                                   |
| 0x18   | WDATA    | RW     | First write word; beat *n* writes WDATA + *n*            |
| 0x1C   | RDATA    | RO     | Last word of the last read burst                         |
| 0x20   | LEN      | RW     | Beats per burst (1–256, reset = 1)                       |
| 0x24   | CLK_CNT  | RO     | Free-running counter on the slave clock                  |

### Usage

1. Set `ADDR_LO/HI`, `LEN` and (for writes) `WDATA`.
2. Write `CTRL` = `0x1` for a write burst, or `0x3` for a read burst.
3. Poll `STATUS` until `DONE` is set. `STATUS[3:2]` non-zero means a bus error.
4. Verify writes with `dma_from_device`, or stage data with `dma_to_device` and check `RDATA` after a read.

**Limitations (v1):** one burst at a time, and software must keep each burst within a 4 KB boundary.

**Verified on hardware:** ID read, clock counter, scratch loopback, and write/read bursts to DDR3 over PCIe.

## Block Design 3 (block-design 3)
Vivado block design project that shows how to integrate your custom IP with the PCIe DMA and dual-channel DDR3. This project uses the project **axi_dma_test** packaged as an IP, so be sure to first package axi_dma_test and add it to your IP catalog. If Vivado throws path errors or something, I suggest creating a new project and copy-pasting the code from ax_dma_test into this new project, and packaging that.

# Tests for Block Designs

**Note**: You may realize that we are not using full addresses like 0x4000_0000, but instead the relative address from this offset. The XDMA driver automatically handles the base translation. You only need to provide the offset relative to that specific BAR, not the global AXI address.

**Prerequisites**
- Complete the setup in the homepage README -> Ensure the the tests in ./run_tests.sh all pass.

## LED Test - Block Designs 1, 2, and 3

### Turn LEDs Off
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x0 w 0x0 
device: /dev/xdma0_user, address: 0x0 (0x0+0x0), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x0 mapped at address 0x7d63fa2fa000.
Write 32-bits value 0x00000000 to 0x0 (0x0x7d63fa2fa000)
```
### Turn LEDs On
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x0 w 0x7
device: /dev/xdma0_user, address: 0x0 (0x0+0x0), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x0 mapped at address 0x7cb7cf7af000.
Write 32-bits value 0x00000007 to 0x0 (0x0x7cb7cf7af000)
```

## DDR3 Test - Block Designs 2 and 3

### Channel 0
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ dd if=/dev/urandom of=pattern.bin bs=1M count=16
16+0 records in
16+0 records out
16777216 bytes (17 MB, 16 MiB) copied, 0.03718 s, 451 MB/s
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./dma_to_device -d /dev/xdma0_h2c_0 -a 0x80000000 -s 16777216 -f pattern.bin
/dev/xdma0_h2c_0 ** Average BW = 16777216, 1328.138062
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./dma_from_device -d /dev/xdma0_c2h_0 -a 0x80000000 -s 16777216 -f readback.bin
/dev/xdma0_c2h_0 ** Average BW = 16777216, 677.586548
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ diff pattern.bin readback.bin && echo "DDR3 CH0: PASS"
DDR3 CH0: PASS
```

### Channel 1
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ dd if=/dev/urandom of=pattern.bin bs=1M count=16
16+0 records in
16+0 records out
16777
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./dma_to_device -d /dev/xdma0_h2c_0 -a 0x00000000 -s 16777216 -f pattern.bin
/dev/xdma0_h2c_0 ** Average BW = 16777216, 1310.044678
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./dma_from_device -d /dev/xdma0_c2h_0 -a 0x00000000 -s 16777216 -f readback_ch1.bin
/dev/xdma0_c2h_0 ** Average BW = 16777216, 725.923401
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ diff pattern.bin readback_ch1.bin && echo "DDR3 CH1: PASS"
DDR3 CH1: PASS
```

## Custom IP - axi_dma_test - Test - Block Design 3

### Test 1 - Reading the Base Address:
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40000 r
device: /dev/xdma0_user, address: 0x40000 (0x40000+0x0), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x772fc1e98000.
Read 32-bit value at address 0x40000 (0x772fc1e98000): 0xc0de0001
```

### Test 2 - Reading Clock Count Twice to Confirm Counter is Advancing:
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40024 r
device: /dev/xdma0_user, address: 0x40024 (0x40000+0x24), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7bca21cd3000.
Read 32-bit value at address 0x40024 (0x7bca21cd3024): 0x27dc658a
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40024 r
device: /dev/xdma0_user, address: 0x40024 (0x40000+0x24), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7e5effda5000.
Read 32-bit value at address 0x40024 (0x7e5effda5024): 0x6132f744
```

### Test 3 - Read/Write to Scratch:
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40004 w 0x1234
device: /dev/xdma0_user, address: 0x40004 (0x40000+0x4), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7a1848460000.
Write 32-bits value 0x00001234 to 0x40004 (0x0x7a1848460004)
```
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40004 r
device: /dev/xdma0_user, address: 0x40004 (0x40000+0x4), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7454f331b000.
Read 32-bit value at address 0x40004 (0x7454f331b004): 0x00001234
```

### Test 4 - Master Write
**Master write:** 
- Set ADDR_LO=0x80000000
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40010 w 0x80000000
device: /dev/xdma0_user, address: 0x40010 (0x40000+0x10), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x780f452b8000.
Write 32-bits value 0x80000000 to 0x40010 (0x0x780f452b8010)
```
- Set WDATA=0x11110000
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40018 w 0x11110000
device: /dev/xdma0_user, address: 0x40018 (0x40000+0x18), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x75ca6ec95000.
Write 32-bits value 0x11110000 to 0x40018 (0x0x75ca6ec95018)
```
- Set LEN=4
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40020 w 0x4
device: /dev/xdma0_user, address: 0x40020 (0x40000+0x20), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x76cd64d51000.
Write 32-bits value 0x00000004 to 0x40020 (0x0x76cd64d51020)
```
- Set CTRL=1. 
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40008 w 1
device: /dev/xdma0_user, address: 0x40008 (0x40000+0x8), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7984c2b6f000.
Write 32-bits value 0x00000001 to 0x40008 (0x0x7984c2b6f008)
```
- Poll STATUS until DONE
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x4000C r
device: /dev/xdma0_user, address: 0x4000c (0x40000+0xc), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7b037fa3e000.
Read 32-bit value at address 0x4000c (0x7b037fa3e00c): 0x00000002
```
- Run dma_from_device -d /dev/xdma0_c2h_0 -a 0x80000000 -s 16 
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./dma_from_device -d /dev/xdma0_c2h_0 -a 0x80000000 -s 16 -f out.bin
/dev/xdma0_c2h_0 ** Average BW = 16, 0.106353
```
- Expect 11110000 … 11110003
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ xxd -e -g4 out.bin
00000000: 11110000 11110001 11110002 11110003   ................
```

### Test 5 - Master Read
**Test Purpose**: Idea is to put a known pattern into DDR from the host, then have the peripheral read it back. RDATA should hold the last beat.
- Make a 16-byte pattern (different from the earlier 0x1111… data, so a stale result is obvious)
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$    python3 -c "import struct,sys;sys.stdout.buffer.write(b''.join(struct.pack('<I',0xA0000000+i) for i in range(4)))" > pat.bin
```
- DMA it into DDR C0:
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$    sudo ./dma_to_device -d /dev/xdma0_h2c_0 -a 0x80000000 -s 16 -f pat.bin
/dev/xdma0_h2c_0 ** Average BW = 16, 0.255057
```
- Clear DONE and start a read burst. ADDR_LO (0x40010) and LEN (0x40020) still hold 0x80000000 and 4 from the earlier test.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$    sudo ./reg_rw /dev/xdma0_user 0x4000c w 0x2
   sudo ./reg_rw /dev/xdma0_user 0x40008 w 0x3
   sudo ./reg_rw /dev/xdma0_user 0x4000c r    # expect 0x2
   sudo ./reg_rw /dev/xdma0_user 0x4001c r    # expect 0xA0000003
device: /dev/xdma0_user, address: 0x4000c (0x40000+0xc), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7636a801d000.
Write 32-bits value 0x00000002 to 0x4000c (0x0x7636a801d00c)
device: /dev/xdma0_user, address: 0x40008 (0x40000+0x8), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7d0981367000.
Write 32-bits value 0x00000003 to 0x40008 (0x0x7d0981367008)
device: /dev/xdma0_user, address: 0x4000c (0x40000+0xc), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x79752bc5a000.
Read 32-bit value at address 0x4000c (0x79752bc5a00c): 0x00000002
device: /dev/xdma0_user, address: 0x4001c (0x40000+0x1c), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x74c16c543000.
Read 32-bit value at address 0x4001c (0x74c16c54301c): 0xa0000003
```
#### Repeat for DDR C1. 
- Use -a 0x0 on dma_to_device 
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./dma_to_device -d /dev/xdma0_h2c_0 -a 0x00000000 -s 16 -f pat.bin
/dev/xdma0_h2c_0 ** Average BW = 16, 0.116577
```
- Set ADDR_LO to 0
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x40010 w 0x0
device: /dev/xdma0_user, address: 0x40010 (0x40000+0x10), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x74acf9e8d000.
Write 32-bits value 0x00000000 to 0x40010 (0x0x74acf9e8d010)
```
- Clear DONE
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x4000c w 0x2
device: /dev/xdma0_user, address: 0x4000c (0x40000+0xc), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x76a1ecae9000.
Write 32-bits value 0x00000002 to 0x4000c (0x0x76a1ecae900c)
```
- Start with CTRL=3
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$  sudo ./reg_rw /dev/xdma0_user 0x40008 w 0x3
device: /dev/xdma0_user, address: 0x40008 (0x40000+0x8), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7c137bec9000.
Write 32-bits value 0x00000003 to 0x40008 (0x0x7c137bec9008)
```
- Read STATUS as above
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x4000c r    # expect 0x2
device: /dev/xdma0_user, address: 0x4000c (0x40000+0xc), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x7b83ddb09000.
Read 32-bit value at address 0x4000c (0x7b83ddb0900c): 0x00000002
```
- Read RDATA as above
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x4001c r    # expect 0xA0000003
device: /dev/xdma0_user, address: 0x4001c (0x40000+0x1c), access write.
access width: default to word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x40000 mapped at address 0x799e9c2d6000.
Read 32-bit value at address 0x4001c (0x799e9c2d601c): 0xa0000003
```



