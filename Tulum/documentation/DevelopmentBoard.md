# Development Board

# Intel® Edison

> Intel® Edison technology is a hardware/software platform that, when combined with sensors and your imagination, enables you to invent new internet-enabled products and solutions.

- Processor — “Tangier” Atom SoC with 22nm Intel Atom (2x Silvermont/Merrifield-like cores @ 500MHz) and 100MHz, 32-bit Intel Quark
- Memory — 1GB LPDDR3 POP RAM (2-ch. 32-bit) @ 800MT/sec; 4GB eMMC (v4.51)
- Wireless:
  - 802.11 a/b/g/n (2.4/5GHz) using Broadcom 43340 module
  - Bluetooth 4.0 (Bluetooth LE due in Q4)
  - Onboard or ext. antenna options
- I/O — via 70-pin Hirose DF40 Series connector (1.5, 2.0, or 3.0mm stack height) with 40x GPIOs for:
  - USB 2.0 OTG
  - SD
  - 2x UART
  - 2x I2C
  - SPI
  - I2S
  - 12x GPIO (includes 4x capable of PWM)
  - 32kHz, 19.2MHz clock output
- Operating temperature — 0 to 40°C
- Power:
  - Input voltage — 3.3 to 4.5 VDC
  - Consumption:
    - Typical — (tbd, per Intel)
    - Maximum — (tbd, per Intel)
    - Standby — 13mW (no radios); 21.5mW (Bluetooth); 35mW (WiFi)
  - Output — 100ma @3.3V and 100ma @ 1.8V output
- Dimensions — 35.5 × 25.0 × 3.9mm (1.4 × 1.0 × 0.15 in.)
- Operating system — Yocto Linux 1.6 for the Atom SoC, with support for Arduino IDE, Eclipse (C, C++, Python), Intel XDK (Node.JS, HTML5); Viper RTOS SDK for the Quark MCU

```sh
    root@edison:~# uname -a
    Linux edison 3.10.17-poky-edison+ #1 SMP PREEMPT Fri Jun 19 12:06:40 CEST 2015 i686 GNU/Linux
    root@edison:~# cat /proc/cpuinfo | grep processor
    processor       : 0
    processor       : 1
```

<center><img src="https://cdn.sparkfun.com//assets/parts/1/0/0/1/1/SparkFun_Edison_Boards-14.jpg"></center>

## Links

- [IoT Intel® Edison Board](https://software.intel.com/en-us/iot/hardware/edison)
- [Intel® Edison Development Platform Product Brief](http://download.intel.com/support/edison/sb/edison_pb_331179002.pdf)
- [Intel® Edison Boards Board Support Package (BSP) User Guide](http://www.intel.com/support/edison/sb/CS-035278.htm)
- [Intel® Edison Compute Module Hardware Guide](http://download.intel.com/support/edison/sb/edisonmodule_hg_331189004.pdf)
- [Intel® Edison Compute Module, Boards, and Kits](http://www.intel.com/content/www/us/en/do-it-yourself/edison.html)
- [IoT Intel® Edison Board User Guide](https://software.intel.com/en-us/intel-edison-board-user-guide)
- [Intel® Edison Compute Module, Boards, and Kits](https://www-ssl.intel.com/content/www/us/en/do-it-yourself/edison.html#kits)
- [Sparkfun Intel® Edison](https://www.sparkfun.com/categories/272)

Breakout Boards

- [Intel® Edison Breakout Board](http://download.intel.com/support/edison/sb/edisonbreakout_hg_331190006.pdf)
- [Intel® Edison Arduino Board](http://download.intel.com/support/edison/sb/edisonarduino_hg_331191007.pdf)
- [SparkFun Block for Intel® Edison - Console](https://www.sparkfun.com/products/13039)
- [IO Expansion Shield for Intel® Edison](http://www.dfrobot.com/index.php?route=product/product&path=166&product_id=1244#.VlkYuG1ME_M)
- [Romeo for Intel® Edison Controller](http://www.dfrobot.com/index.php?route=product/product&path=166&product_id=1241#.VlkY9G1ME_M)
- [Modulowo® Explore™ E dla Intel® Edison](https://store.modulowo.com/pl/p/Modulowo-Explore-E-dla-Intel-Edison/400)
- [Intel® Edison The Edi-Expand & IoT Counter](https://www.kickstarter.com/projects/tekt/the-iot-counter-supercharging-an-internet-of-numbe)

<center><img src="https://cdn.sparkfun.com//assets/parts/1/0/0/1/1/13025-04.jpg"></center>
<center><img src="https://cdn.sparkfun.com//assets/parts/1/0/1/3/9/13097-06.jpg">content/uploads/2015/12/DSC_0112_01.jpg"></center>

## Generic Microcontroller Unit (MCU) on an Intel® Edison board

> Intel's added the SoC Quark to do low-level dirty work rather than eat-up bandwidth on the Atom CPU's.

- [Creating applications with the MCU SDK for the Intel® Edison board](https://software.intel.com/en-us/creating-applications-with-mcu-sdk-for-intel-edison-board)
- [Intel® Quark™](https://en.wikipedia.org/wiki/Intel_Quark)
- [Intel® Quark™ SE Microcontroller](http://www.intel.com/content/www/us/en/embedded/products/quark/mcu/se-soc/overview.html)
- [Intel® Quark™ Microcontroller D2000](http://www.intel.com/content/www/us/en/embedded/products/quark/mcu/d2000/overview.html)
- [Intel® Quark™ Microcontroller D1000](http://www.intel.com/content/www/us/en/embedded/products/quark/mcu/d1000/overview.html)

<center><img src="https://software.intel.com/sites/default/files/did_feeds_images/4335AAD2-4104-48BC-8F26-127EB1102AF8/4335AAD2-4104-48BC-8F26-127EB1102AF8-imageId=78a88837-3b20-4f47-9cb5-0e56f795102e.png"></center>