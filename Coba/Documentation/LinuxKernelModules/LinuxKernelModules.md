# Linux Kernel Modules

## Hello World Module

Make a "helloworld" directory

```sh
user@workstation:~$ mkdir helloworld
```

Create helloworld.c file under our helloworld directory and add the C code below, this is a simple Hello World Kernel Module

```sh
user@workstation:~$ nano helloworld/helloworld.c
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
user@workstation:~$ nano helloworld/Makefile
obj-m += helloworld.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean
```

# Hello World Compilation

Now compile your Hello World Module both as module and built-in into the  
Kernel image making sure you boot your system twice to confirm your  
changes using dmesg command

As Module \(M\)

```sh
user@workstation:~$ make
  CHK     include/config/kernel.release
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  CALL    scripts/checksyscalls.sh
  CHK     include/generated/compile.h
  LD      drivers/helloworld/built-in.o
  CC [M]  drivers/helloworld/helloworld.o
Kernel: arch/x86/boot/bzImage is ready  (#2)
  Building modules, stage 2.
  MODPOST 2255 modules
  CC      drivers/helloworld/helloworld.mod.o
  LD [M]  drivers/helloworld/helloworld.ko
root@workstation:~# make modules_install
root@workstation:~# make install
root@workstation:~# shutdown -r now
<reboot>
root@workstation:~# modprobe helloworld
root@workstation:~# dmesg
```

Built-In \(\*\)

```sh
user@workstation:~$ make
xe1gyq@Minnowboard:~/linux$ make                                                                                                               
scripts/kconfig/conf --silentoldconfig Kconfig
  CHK     include/config/kernel.release                    
  CHK     include/generated/uapi/linux/version.h                    
  CHK     include/generated/utsrelease.h            
  CALL    scripts/checksyscalls.sh                    
  CHK     include/generated/compile.h                    
  CC      drivers/helloworld/helloworld.o                    
  LD      drivers/helloworld/built-in.o                    
  LD      drivers/built-in.o                    
  LINK    vmlinux                    
  LD      vmlinux.o                    
  MODPOST vmlinux.o                    
  GEN     .version                    
  CHK     include/generated/compile.h                    
  UPD     include/generated/compile.h
  CC      init/version.o                    
  LD      init/built-in.o                    
  KSYM    .tmp_kallsyms1.o                    
  KSYM    .tmp_kallsyms2.o                    
  LD      vmlinux
  SORTEX  vmlinux
  SYSMAP  System.map
  VOFFSET arch/x86/boot/voffset.h
  OBJCOPY arch/x86/boot/compressed/vmlinux.bin
  GZIP    arch/x86/boot/compressed/vmlinux.bin.gz
  MKPIGGY arch/x86/boot/compressed/piggy.S
  AS      arch/x86/boot/compressed/piggy.o
  LD      arch/x86/boot/compressed/vmlinux
  ZOFFSET arch/x86/boot/zoffset.h
  AS      arch/x86/boot/header.o
  CC      arch/x86/boot/version.o
  LD      arch/x86/boot/setup.elf
  OBJCOPY arch/x86/boot/setup.bin
  OBJCOPY arch/x86/boot/vmlinux.bin
  BUILD   arch/x86/boot/bzImage
Setup is 17516 bytes (padded to 17920 bytes).
System is 4046 kB
CRC 113cf27d
Kernel: arch/x86/boot/bzImage is ready  (#3)
  Building modules, stage 2.
  MODPOST 2254 modules
root@workstation:~# make modules_install
root@workstation:~# make install
root@workstation:~# shutdown -r now
<reboot>
user@workstation:~$ dmesg
```
