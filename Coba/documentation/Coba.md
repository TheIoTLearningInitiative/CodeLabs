# Coba

> 

## Hardware Requirements

- None

## Software Requirements

```sh
root@board:~# echo "pip install none"
root@board:~# echo "opkg install python-dev"
```

## Setup

```sh
root@edison:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Coba/setup.sh -o - | sh
```

## Code

```sh
root@edison:~/CodeLabs/Coba# 
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

```Makefile
obj-m += main.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

## Execution

```sh
root@edison:~/CodeLabs/Chicanna# make
```
