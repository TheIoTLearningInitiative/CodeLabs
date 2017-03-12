# Kernel Space I2C Driver

> I2C Library LCD [From IoT Sensors by Marco Antonio Salgado SourceCodeCat](https://theiotlearninginitiative.gitbooks.io/internetofthingssensors/content/)

## Hardware Requirements

- [Intel Edison for Arduino](https://www.seeedstudio.com/Intel%C2%AE-Edison-for-Arduino-p-2149.html)
- [Grove - LCD RGB Backlight](http://wiki.seeed.cc/Grove-LCD_RGB_Backlight/)

## Software Requirements


## Setup

```sh
root@edison:~# cd
root@edison:~# wget https://github.com/SourceCodeCat/IoTDownloads/raw/master/linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
root@edison:~# ar x linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
root@edison:~# tar -xvf data.tar.gz
root@edison:~# cd ~/usr/src/
root@edison:~# ln -s linux-headers-3.10.17-poky-edison linux-headers-3.10.98-poky-edison
root@edison:~# nano ~/usr/src/linux-headers-3.10.98-poky-edison/include/generated/utsrelease.h
#define UTS_RELEASE "3.10.98-poky-edison+"
root@edison:~# cd /lib/modules/3.10.98-poky-edison+
root@edison:~# ln -s /home/root/usr/src/linux-headers-3.10.98-poky-edison build
root@edison:~# cd
```

## Code

Go to Chacmultun/jhd1313m1/i2cdriver directory

```sh
root@edison:~/codelabs/Chacmultun/jhd1313m1/i2cdriver# ls
JHD1313M2.c  JHD1313M2.h  Makefile  setup.sh
root@edison:~/codelabs/Chacmultun/jhd1313m1/i2cdriver# 
```

```sh
root@edison:~/codelabs/Chacmultun/jhd1313m1/i2cdriver# make
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/codelabs/Chacmultun/jhd1313m1/i2cdriver modules
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CC [M]  /home/root/codelabs/Chacmultun/jhd1313m1/i2cdriver/JHD1313M2.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /home/root/codelabs/Chacmultun/jhd1313m1/i2cdriver/JHD1313M2.mod.o
  LD [M]  /home/root/codelabs/Chacmultun/jhd1313m1/i2cdriver/JHD1313M2.ko
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
root@edison:~/codelabs/Chacmultun/jhd1313m1/i2cdriver# 
```


```sh
root@edison:~/codelabs/Chacmultun/jhd1313m1/i2cdriver# ls
JHD1313M2.c  JHD1313M2.ko     JHD1313M2.mod.o  Makefile        modules.order
JHD1313M2.h  JHD1313M2.mod.c  JHD1313M2.o      Module.symvers  setup.sh
root@edison:~/codelabs/Chacmultun/jhd1313m1/i2cdriver# 
```

## Execution

```sh
root@board:~# 
```