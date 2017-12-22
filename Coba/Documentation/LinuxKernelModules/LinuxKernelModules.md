# Linux Kernel Modules

## Hello World Module

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

## Hello World Makefile

Create the Makefile under helloworld directory and add the code below

```sh
user@workstation:~/helloworld$ nano Makefile
obj-m += helloworld.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

# Hello World Compilation

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