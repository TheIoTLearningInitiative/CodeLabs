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


## Setup

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Chacmultun/setup.sh -o - | sh
```

## Code

```sh
root@edison:~# wget https://raw.githubusercontent.com/SourceCodeCat/IoTCodeExamples/master/I2C/JHD1313M2.c
```

```sh
root@edison:~# wget https://raw.githubusercontent.com/SourceCodeCat/IoTCodeExamples/master/I2C/JHD1313M2.h
```

```sh
root@edison:~# nano Makefile
```

```sh
obj-m += JHD1313M2.o

all:
        make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
        make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

## Execution

```sh
root@board:~/CodeLabs/Kohunlich# 
```