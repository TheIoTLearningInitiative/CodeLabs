# Linux Kernel Modules

## Lsmod

> Show the status of modules in the Linux Kernel

Let's look at two modules

```sh
user@workstation:~$ lsmod | grep button
button                 16384  1 i915
user@workstation:~$ lsmod | grep pcspkr
pcspkr                 16384  0
user@workstation:~$ 
```

__Challenge__

Find out where button and pcspkr are under:
- /lib/modules/
- Kernel Configuration
- Mainline

## Hello World Module Source Code

Make a "helloworld" directory

```sh
user@workstation:~$ mkdir helloworld
```

Create helloworld.c file under our helloworld directory and add the C code below, this is a simple Hello World Kernel Module

```sh
user@workstation:~/helloworld$ helloworld.c
```

```sh
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>

static int module_init_function(void)

{
    printk(KERN_INFO "Module? Hello!\n");
    return 0;
}

static void module_exit_function(void)
{
    printk(KERN_INFO "Module? Bye!\n");
}

MODULE_LICENSE("GPL");
MODULE_AUTHOR("xe1gyq");
MODULE_DESCRIPTION("My First Linux Kernel Module");

module_init(module_init_function);
module_exit(module_exit_function);
```

## Hello World Module Makefile

Create the Makefile under helloworld directory and add the code below

```sh
user@workstation:~/helloworld$ nano Makefile
obj-m += helloworld.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

## Hello World Module Compilation

```
user@workstation:~/helloworld$ ls
helloworld.c  Makefile
user@workstation:~/helloworld$  
```

Now compile your Hello World Module

```sh
user@workstation:~/helloworld$ make
make -C /lib/modules/4.12.0-kali2-amd64/build M=/home/user/helloworld modules
make[1]: Entering directory '/usr/src/linux-headers-4.12.0-kali2-amd64'
  CC [M]  /home/user/helloworld/helloworld.o
  Building modules, stage 2.
  MODPOST 1 modules
  CC      /home/user/helloworld/helloworld.mod.o
  LD [M]  /home/user/helloworld/helloworld.ko
make[1]: Leaving directory '/usr/src/linux-headers-4.12.0-kali2-amd64'
user@workstation:~/helloworld$ 
```

## Hello World Module Files

```sh
user@workstation:~/helloworld$ ls
helloworld.c  helloworld.ko  helloworld.mod.c  helloworld.mod.o  helloworld.o  Makefile  modules.order	Module.symvers
user@workstation:~/helloworld$ 
```

```sh
user@workstation:~/helloworld$ modinfo helloworld.ko
```

```sh
user@workstation:~/helloworld$ insmod helloworld.ko
```

```sh
user@workstation:~/helloworld$ dmesg
```

```sh
user@workstation:~/helloworld$ lsmod
```

```sh
user@workstation:~/helloworld$ cat /proc/modules
```

```sh
user@workstation:~/helloworld$ rmmod helloworld
```

```sh
user@workstation:~/helloworld$ dmesg
```