# Hello World Compilation Kernel Object

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

