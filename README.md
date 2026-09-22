Rough - TODO


## Check if the FPGA is detected
```bash
dipen@dipen-ubuntu-mate:~/Desktop$ lspci # Confirm that the FPGA is being detected. In my case:
05:00.0 Memory controller: Xilinx Corporation Device 7028 # 7028 is the default device ID
```
## Remove the device if detected
```bash
dipen@dipen-ubuntu-mate:~/Desktop$ echo 1 | sudo tee /sys/bus/pci/devices/0000:05:00.0/remove
[sudo] password for dipen: 
1
```
## Program the FPGA from Vivado now
```bash
dipen@dipen-ubuntu-mate:~/Desktop$ echo 1 | sudo tee /sys/bus/pci/rescan
1
```
### Rescan for the device. The device should have a new device ID
```bash
dipen@dipen-ubuntu-mate:~/Desktop$ lspci #Should get new device ID 
05:00.0 Memory controller: Xilinx Corporation Device 7021 #7021 in my case)
```
## Detailed capabilities printout
```bash
dipen@dipen-ubuntu-mate:~/Desktop$ sudo lspci -vvv -s 05:00.0
05:00.0 Memory controller: Xilinx Corporation Device 7021
	Subsystem: Xilinx Corporation Device 0007
	Control: I/O- Mem+ BusMaster+ SpecCycle- MemWINV- VGASnoop- ParErr- Stepping- SERR- FastB2B- DisINTx-
	Status: Cap+ 66MHz- UDF- FastB2B- ParErr- DEVSEL=fast >TAbort- <TAbort- <MAbort- >SERR- <PERR- INTx-
	Latency: 0
	Interrupt: pin A routed to IRQ 154
	IOMMU group: 16
	Region 0: Memory at 42200000 (32-bit, non-prefetchable) [size=1M]
	Region 2: Memory at 42300000 (64-bit, non-prefetchable) [size=64K]
	Capabilities: [40] Power Management version 3
		Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA PME(D0+,D1+,D2+,D3hot+,D3cold-)
		Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
	Capabilities: [48] MSI: Enable+ Count=1/1 Maskable- 64bit+
		Address: 00000000fee00718  Data: 0000
	Capabilities: [60] Express (v2) Endpoint, MSI 00
		DevCap:	MaxPayload 512 bytes, PhantFunc 0, Latency L0s <64ns, L1 unlimited
			ExtTag+ AttnBtn- AttnInd- PwrInd- RBE+ FLReset- SlotPowerLimit 25W
		DevCtl:	CorrErr- NonFatalErr- FatalErr- UnsupReq-
			RlxdOrd+ ExtTag+ PhantFunc- AuxPwr- NoSnoop+
			MaxPayload 256 bytes, MaxReadReq 512 bytes
		DevSta:	CorrErr- NonFatalErr- FatalErr- UnsupReq- AuxPwr- TransPend-
		LnkCap:	Port #0, Speed 5GT/s, Width x4, ASPM L0s, Exit Latency L0s unlimited
			ClockPM- Surprise- LLActRep- BwNot- ASPMOptComp-
		LnkCtl:	ASPM Disabled; RCB 64 bytes, Disabled- CommClk-
			ExtSynch- ClockPM- AutWidDis- BWInt- AutBWInt-
		LnkSta:	Speed 5GT/s, Width x4
			TrErr- Train- SlotClk+ DLActive- BWMgmt- ABWMgmt-
		DevCap2: Completion Timeout: Range B, TimeoutDis- NROPrPrP- LTR-
			 10BitTagComp- 10BitTagReq- OBFF Not Supported, ExtFmt- EETLPPrefix-
			 EmergencyPowerReduction Not Supported, EmergencyPowerReductionInit-
			 FRS- TPHComp- ExtTPHComp-
			 AtomicOpsCap: 32bit- 64bit- 128bitCAS-
		DevCtl2: Completion Timeout: 50us to 50ms, TimeoutDis- LTR- 10BitTagReq- OBFF Disabled,
			 AtomicOpsCtl: ReqEn-
		LnkCtl2: Target Link Speed: 5GT/s, EnterCompliance- SpeedDis-
			 Transmit Margin: Normal Operating Range, EnterModifiedCompliance- ComplianceSOS-
			 Compliance Preset/De-emphasis: -6dB de-emphasis, 0dB preshoot
		LnkSta2: Current De-emphasis Level: -6dB, EqualizationComplete- EqualizationPhase1-
			 EqualizationPhase2- EqualizationPhase3- LinkEqualizationRequest-
			 Retimer- 2Retimers- CrosslinkRes: unsupported
	Capabilities: [100 v1] Device Serial Number 00-00-00-00-00-00-00-00
	Kernel driver in use: xdma
	Kernel modules: xdma
```
## Download and load the AMD XDMA Drivers

1. Get the AMD Linux XDMA Drivers from: https://github.com/xilinx/dma_ip_drivers
I used git clone.\

2. Navigate to the directory inside the downloaded drivers and run the commands shown below:
a.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel$ ls
COPYING  include  LICENSE  readme.txt  RELEASE  tests  tools  xdma
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel$ cd xdma
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma$ ls
cdev_bypass.c  cdev_ctrl.h    cdev_events.o  cdev_sgdma.o  cdev_xvc.o  libxdma.o      Module.symvers  xdma_cdev.c  xdma.ko     xdma_mod.c  xdma_mod.o     xdma_thread.h
cdev_bypass.o  cdev_ctrl.o    cdev_sgdma.c   cdev_xvc.c    libxdma.c   Makefile       sudo            xdma_cdev.h  xdma.mod    xdma_mod.h  xdma.o         xdma_thread.o
cdev_ctrl.c    cdev_events.c  cdev_sgdma.h   cdev_xvc.h    libxdma.h   modules.order  version.h       xdma_cdev.o  xdma.mod.c  xdma.mod.o  xdma_thread.c
```
b.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma$ sudo make clean
Makefile:17: XVC_FLAGS: .
make -C /lib/modules/6.8.0-138-generic/build M=/home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma clean
make[1]: Entering directory '/usr/src/linux-headers-6.8.0-138-generic'
/home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/Makefile:17: XVC_FLAGS: .
  CLEAN   /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/Module.symvers
make[1]: Leaving directory '/usr/src/linux-headers-6.8.0-138-generic'
```
c.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma$ sudo make all
Makefile:17: XVC_FLAGS: .
make -C /lib/modules/6.8.0-138-generic/build M=/home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma modules
make[1]: Entering directory '/usr/src/linux-headers-6.8.0-138-generic'
warning: the compiler differs from the one used to build the kernel
  The kernel was built by: x86_64-linux-gnu-gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
  You are using:           gcc-13 (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0
/home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/Makefile:17: XVC_FLAGS: .
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/libxdma.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma_cdev.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/cdev_ctrl.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/cdev_events.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/cdev_sgdma.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/cdev_xvc.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/cdev_bypass.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma_mod.o
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma_thread.o
  LD [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma.o
/home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/Makefile:17: XVC_FLAGS: .
  MODPOST /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/Module.symvers
  CC [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma.mod.o
  LD [M]  /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma.ko
  BTF [M] /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma.ko
Skipping BTF generation for /home/dipen/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma/xdma.ko due to unavailability of vmlinux
make[1]: Leaving directory '/usr/src/linux-headers-6.8.0-138-generic'
```
c.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma$ sudo depmod
```
d.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma$ ls
cdev_bypass.c  cdev_ctrl.h    cdev_events.o  cdev_sgdma.o  cdev_xvc.o  libxdma.o      Module.symvers  xdma_cdev.c  xdma.ko     xdma_mod.c  xdma_mod.o     xdma_thread.h
cdev_bypass.o  cdev_ctrl.o    cdev_sgdma.c   cdev_xvc.c    libxdma.c   Makefile       sudo            xdma_cdev.h  xdma.mod    xdma_mod.h  xdma.o         xdma_thread.o
cdev_ctrl.c    cdev_events.c  cdev_sgdma.h   cdev_xvc.h    libxdma.h   modules.order  version.h       xdma_cdev.o  xdma.mod.c  xdma.mod.o  xdma_thread.c
```
d.
```
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/xdma$ cd ..
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel$ ls
COPYING  include  LICENSE  readme.txt  RELEASE  tests  tools  xdma
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel$ cd tests/
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tests$ ls
data  dma_memory_mapped_test.sh  dma_streaming_test.sh  load_driver.sh  perform_hwcount.sh  run_test.sh  scripts_mm
```
e.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tests$ sudo ./load_driver.sh
interrupt_selection .
xdma                  110592  0
Loading driver...insmod xdma.ko interrupt_mode=2 ...

The Kernel module installed correctly and the xmda devices were recognized.
DONE
```
### The XDMA driver was loaded.

### See the available XDMA endpoints
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tests$ ls /dev/xdma*
/dev/xdma0_c2h_0     /dev/xdma0_events_1   /dev/xdma0_events_12  /dev/xdma0_events_15  /dev/xdma0_events_4  /dev/xdma0_events_7  /dev/xdma0_h2c_0
/dev/xdma0_control   /dev/xdma0_events_10  /dev/xdma0_events_13  /dev/xdma0_events_2   /dev/xdma0_events_5  /dev/xdma0_events_8  /dev/xdma0_user
/dev/xdma0_events_0  /dev/xdma0_events_11  /dev/xdma0_events_14  /dev/xdma0_events_3   /dev/xdma0_events_6  /dev/xdma0_events_9  /dev/xdma0_xvc
```
## Test if the everything else is working till now by blinking the on-board LEDs
a.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tests$ cd ..
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel$ ls
COPYING  include  LICENSE  readme.txt  RELEASE  tests  tools  xdma
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel$ cd tools/
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ ls
dma_from_device    dma_from_device.o  dma_to_device.c  dma_utils.c  performance    performance.o  reg_rw.c  test_chrdev    test_chrdev.o
dma_from_device.c  dma_to_device      dma_to_device.o  Makefile     performance.c  reg_rw         reg_rw.o  test_chrdev.c
```
### The LED address may be different for you. Refer to the memory address editor to see the addresses assigned to the on-board LEDs
b. 
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x4000_0000 w 0x7
device: /dev/xdma0_user, address: 0x4000 (0x4000+0x0), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x4000 mapped at address 0x71a1b1b5c000.
Write 32-bits value 0x00000007 to 0x4000 (0x0x71a1b1b5c000)
```

c.
```bash
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$ sudo ./reg_rw /dev/xdma0_user 0x4000_0000 w 0x0
device: /dev/xdma0_user, address: 0x4000 (0x4000+0x0), access write.
access width: word (32-bits)
character device /dev/xdma0_user opened.
Memory 0x4000 mapped at address 0x730858462000.
Write 32-bits value 0x00000000 to 0x4000 (0x0x730858462000)
dipen@dipen-ubuntu-mate:~/Downloads/dma_ip_drivers/XDMA/linux-kernel/tools$
```
## Testing DDR3
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


