# Coba

> Linux Kernel Module

## Hardware Requirements

- Workstation (Linux, Windows, OS X)
- Internet Connection
- [Intel Edison for Arduino](https://www.seeedstudio.com/Intel%C2%AE-Edison-for-Arduino-p-2149.html)

## Setup Manual

```sh
root@board:~# cd
root@board:~# wget https://github.com/SourceCodeCat/IoTDownloads/raw/master/linux-headers-3.1$
root@board:~# ar x linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
root@board:~# tar -xvf data.tar.gz
root@board:~# cd ~/usr/src/
root@board:~# ln -s linux-headers-3.10.17-poky-edison linux-headers-3.10.98-poky-edison
root@board:~# cd
root@board:~# echo > ~/usr/src/linux-headers-3.10.98-poky-edison/include/generated/utsrelease$
root@board:~# echo "#define UTS_RELEASE \"3.10.98-poky-edison+\"" > ~/usr/src/linux-headers-3$
root@board:~# cd /lib/modules/3.10.98-poky-edison+
root@board:~# ln -s /home/root/usr/src/linux-headers-3.10.98-poky-edison build
root@board:~# cd
root@board:~# rm data.tar.gz
root@board:~# rm linux-headers-3.10.17-poky-edison_3.10.17-poky-edison-1_i386.deb
```

## Setup Automated

```sh
root@edison:~/codelabs/Coba# ls
Makefile  documentation  main.c  setup.sh
```

```sh
root@edison:~/codelabs/Coba# make
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/codelabs/Coba modules
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CC [M]  /home/root/codelabs/Coba/main.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /home/root/codelabs/Coba/main.mod.o
  LD [M]  /home/root/codelabs/Coba/main.ko
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
```

```sh
root@edison:~/codelabs/Coba# ls
Makefile        documentation  main.ko     main.mod.o  modules.order
Module.symvers  main.c         main.mod.c  main.o      setup.sh
```

## Execution


```sh
root@board:~/CodeLabs/Coba# insmod main.ko
root@board:~/CodeLabs/Coba# dmesg
[ 3723.256572] Main? Hello!
root@board:~/CodeLabs/Coba# rmmod main.ko
root@board:~/CodeLabs/Coba# dmesg
[ 3723.256572] Main? Bye!
```

```sh
root@board:~/CodeLabs/Coba# make clean
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/CodeLabs/Coba clean
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CLEAN   /home/root/CodeLabs/Coba/.tmp_versions
  CLEAN   /home/root/CodeLabs/Coba/Module.symvers
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
root@board:~/CodeLabs/Coba# 
```