# Kernel Build System

> _The kernel has many abstraction layers and levels of indirection and because its build system allows for creating highly customized kernel binary images._

## Prerequisites

Please read the "Kbuild: the Linux Kernel Build System" carefully, you will understand how this system works
[Kbuild Linux Kernel Build System](http://www.linuxjournal.com/content/kbuild-linux-kernel-build-system)

## Hello World Module Source Code

Make a "helloworld" directory under drivers

```sh
user@workstation:~/linux$ mkdir drivers/helloworld
```

Create helloworld.c file under our helloworld directory and add the C code below, this is a simple Hello World Kernel Module

```sh
user@workstation:~/linux$ nano drivers/helloworld/helloworld.c
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

## Hello World Module Kconfig

Create the Kconfig file under helloworld directory and add the code below, make sure indentation is correct

```sh
user@workstation:~/linux$ nano drivers/helloworld/Kconfig
menu "Hello Module Kernel Support"

config HELLO_WORLD
        tristate "Hello Module Driver"
        depends on X86
        help
          Select this option to run a Hello World Module!
endmenu
```

## Hello World Module Makefile

Create the Makefile under helloworld directory and add the code below

```sh
user@workstation:~/linux$ nano drivers/helloworld/Makefile
obj-$(CONFIG_HELLO_WORLD)               += helloworld.o
```

## Device Drivers Kconfig

> Seeing Hello World Directory

Modify Kconfig under drivers directory and add the line with helloworld

```sh
user@workstation:~/linux$ nano drivers/Kconfig
menu "Device Drivers"

source "drivers/helloworld/Kconfig"

source "drivers/amba/Kconfig"
```

## Device Drivers Makefile

> Compiling Hello World Directory

Modify Makefile under drivers directory and add the line with CONFIG\_HELLO\_WORLD  
user@workstation:~/linux$ nano drivers/Makefile

```sh
#
# Makefile for the Linux kernel device drivers.
#
# 15 Sep 2000, Christoph Hellwig <hch@infradead.org>
# Rewritten to use lists instead of if-statements.
#

obj-$(CONFIG_HELLO_WORLD)       += helloworld/
obj-y                           += irqchip/
obj-y                           += bus/
...
```

```sh
user@workstation:~/linux$ git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   drivers/Kconfig
	modified:   drivers/Makefile

Untracked files:
  (use "git add <file>..." to include in what will be committed)

	drivers/helloworld/

no changes added to commit (use "git add" and/or "git commit -a")
user@workstation:~/linux$ 
```

## Hello World Menuconfig

We are ready to view our Hello World Module under menuconfig

```sh
user@workstation:~/linux$ make menuconfig
```

Go to its location under  
    -&gt; Device Drivers  
      -&gt; Hello Module Kernel Support

Understand the menu options seen below including their fast paths \(one letter invocation\)

```sh
<Select>    < Exit >    < Help >    < Save >    < Load >
```

Get help for the Hello Module Kernel Support using Help function, you should see this

```sh
CONFIG_HELLO_WORLD:
Select this option to run a Hello World Module!
Symbol: HELLO_WORLD [=n]
Type : tristate
Prompt: Hello Module Driver
   Location:
     -> Device Drivers
       -> Hello Module Kernel Support
   Defined at drivers/helloworld/Kconfig:3
   Depends on: X86 [=y]
```

Understand about the following options from Kconfig by googling or looking  
at other Kconfigs

* default
* tristate
* Depends on

Take a look at the default building state for our Hello World Module and  
modify Kconfig so you can have it built as default

```sh
 Symbol: HELLO_WORLD [=n]
```
