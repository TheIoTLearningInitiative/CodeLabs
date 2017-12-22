# Hello World Compilation Kernel Object

> A loadable kernel module (LKM) is a mechanism for adding code to, or removing code from, the Linux kernel at run time. They are ideal for device drivers, enabling the kernel to communicate with the hardware without it having to know how the hardware. [DerekMolloy](http://derekmolloy.ie/writing-a-linux-kernel-module-part-1-introduction/)

> In computing, a loadable kernel module (or LKM) is an object file that contains code to extend the running kernel, or so-called base kernel, of an operating system. LKMs are typically used to add support for new hardware (as device drivers) and/or filesystems, or for adding system calls. When the functionality provided by a LKM is no longer required, it can be unloaded in order to free memory and other resources. [Wikipedia](https://en.wikipedia.org/wiki/Loadable_kernel_module)

Now compile your Hello World Module both as module and built-in into the  
Kernel image making sure you boot your system twice to confirm your  
changes using dmesg command

As Module \(M\)

```sh
user@workstation:~/linux$ make
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
root@workstation:~/linux# make modules_install
root@workstation:~/linux# make install
root@workstation:~/linux# shutdown -r now
<reboot>
root@workstation:~# modprobe helloworld
root@workstation:~# dmesg
```

