# Kernel Space I2C Driver

> I2C Library LCD [From IoT Sensors by Marco Antonio Salgado SourceCodeCat](https://theiotlearninginitiative.gitbooks.io/internetofthingssensors/content/)

## Hardware Requirements

- [Intel Edison for Arduino](https://www.seeedstudio.com/Intel%C2%AE-Edison-for-Arduino-p-2149.html)
- [Grove - LCD RGB Backlight](http://wiki.seeed.cc/Grove-LCD_RGB_Backlight/)

## Software Requirements

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

Go to CodeLabs/Chacmultun/jhd1313m1/i2cdriver directory

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# ls
JHD1313M2.c  JHD1313M2.h  Makefile
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# 
```

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# make
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/CodeLabs/Chacmultun/jhd1313m1/i2cdriver modules
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CC [M]  /home/root/CodeLabs/Chacmultun/jhd1313m1/i2cdriver/JHD1313M2.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /home/root/CodeLabs/Chacmultun/jhd1313m1/i2cdriver/JHD1313M2.mod.o
  LD [M]  /home/root/CodeLabs/Chacmultun/jhd1313m1/i2cdriver/JHD1313M2.ko
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
```

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# ls
JHD1313M2.c  JHD1313M2.ko     JHD1313M2.mod.o  Makefile        modules.order
JHD1313M2.h  JHD1313M2.mod.c  JHD1313M2.o      Module.symvers
```

## Execution

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# insmod JHD1313M2.ko
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# 
```

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# dmesg
...
[77920.801193] JHD1313M2: Unknown parameter `make'
[78803.193070] JHD1313M2_init: Obtaining adapter from bus 6
[78803.193097] JHD1313M2_init: creating new device...
[78803.193511] JHD1313M2_init: trying to add the device driver...
[78803.193585] JHD1313M2_RGB_probe: trying to probe the device (JHD1313M2_RGB)...
[78803.202629] JHD1313M2_LCD_probe: trying to probe the device (JHD1313M2_LCD)...
[78803.308525] JHD1313M2_init: creating sysfs access...
```

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# rmmod JHD1313M2.ko
```

```sh
root@edison:~/CodeLabs/Chacmultun/jhd1313m1/i2cdriver# dmesg
...
[78879.759093] JHD1313M2_exit: trying to delete the device drivers...
[78879.759182] JHD1313M2_RGB_remove: trying to remove the device...
[78879.759198] JHD1313M2_RGB_remove: turning OFF rgb device...
[78879.764901] JHD1313M2_LCD_remove: trying to remove the device...
[78879.764924] JHD1313M2_LCD_remove: turning OFF lcd device...
```