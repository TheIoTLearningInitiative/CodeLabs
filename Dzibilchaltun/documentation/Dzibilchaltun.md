# Dzibilchaltun

> Telegram

## Hardware Requirements

- None

## Software Requirements

```sh
root@board:~# echo "pip install requests future python-telegram-bot"
root@board:~# echo "opkg install python-dev"
```

## Setup

```sh
root@edison:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Dzibilchaltun/setup.sh -o - | sh
```

## Code

```sh
root@edison:~/CodeLabs/Coba# nano main.c
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
root@edison:~/CodeLabs/Coba# make
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/CodeLabs/Coba modules
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CC [M]  /home/root/CodeLabs/Coba/main.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /home/root/CodeLabs/Coba/main.mod.o
  LD [M]  /home/root/CodeLabs/Coba/main.ko
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
root@edison:~/CodeLabs/Coba# 
```

```sh
root@edison:~/CodeLabs/Coba# make clean
make -C /lib/modules/3.10.98-poky-edison+/build M=/home/root/CodeLabs/Coba clean
make[1]: Entering directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
  CLEAN   /home/root/CodeLabs/Coba/.tmp_versions
  CLEAN   /home/root/CodeLabs/Coba/Module.symvers
make[1]: Leaving directory '/home/root/usr/src/linux-headers-3.10.17-poky-edison'
root@edison:~/CodeLabs/Coba# 
```