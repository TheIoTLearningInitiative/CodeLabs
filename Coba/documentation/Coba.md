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
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Coba/setup.sh -o - | sh
```

## Code

```sh
root@board:~/CodeLabs/Coba# nano main.c
```

```c
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>

static int module_init_function(void)
{
    printk(KERN_INFO "Main? Hello!\n");
    return 0;
}

static void module_exit_function(void)
{
    printk(KERN_INFO "Main? Bye!\n");
}

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Xe1Gyq");
MODULE_DESCRIPTION("My First Linux Kernel Module");

module_init(module_init_function);
module_exit(module_exit_function);
```

```sh
root@edison:~/CodeLabs/Coba# nano Makefile
```

```sh
obj-m += main.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

## Execution

```sh
root@board:~/CodeLabs/Coba# make
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/CodeLabs/Coba modules
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CC [M]  /home/root/CodeLabs/Coba/main.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /home/root/CodeLabs/Coba/main.mod.o
  LD [M]  /home/root/CodeLabs/Coba/main.ko
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
root@board:~/CodeLabs/Coba# 
```

```sh
root@board:~/CodeLabs/Coba# insmod main.ko
root@board:~/CodeLabs/Coba# dmesg
root@board:~/CodeLabs/Coba# rmmod main.ko
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