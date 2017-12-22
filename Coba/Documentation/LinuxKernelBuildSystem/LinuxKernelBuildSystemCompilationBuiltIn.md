# Hello World Compilation Built-In \(\*\)

```sh
user@workstation:~$ make
xe1gyq@Minnowboard:~/linux$ make
scripts/kconfig/conf --silentoldconfig Kconfig
CHK include/config/kernel.release
CHK include/generated/uapi/linux/version.h
CHK include/generated/utsrelease.h
CALL scripts/checksyscalls.sh
CHK include/generated/compile.h
CC drivers/helloworld/helloworld.o
LD drivers/helloworld/built-in.o
LD drivers/built-in.o
LINK vmlinux
LD vmlinux.o
MODPOST vmlinux.o
GEN .version
CHK include/generated/compile.h
UPD include/generated/compile.h
CC init/version.o
LD init/built-in.o
KSYM .tmp_kallsyms1.o
KSYM .tmp_kallsyms2.o
LD vmlinux
SORTEX vmlinux
SYSMAP System.map
VOFFSET arch/x86/boot/voffset.h
OBJCOPY arch/x86/boot/compressed/vmlinux.bin
GZIP arch/x86/boot/compressed/vmlinux.bin.gz
MKPIGGY arch/x86/boot/compressed/piggy.S
AS arch/x86/boot/compressed/piggy.o
LD arch/x86/boot/compressed/vmlinux
ZOFFSET arch/x86/boot/zoffset.h
AS arch/x86/boot/header.o
CC arch/x86/boot/version.o
LD arch/x86/boot/setup.elf
OBJCOPY arch/x86/boot/setup.bin
OBJCOPY arch/x86/boot/vmlinux.bin
BUILD arch/x86/boot/bzImage
Setup is 17516 bytes (padded to 17920 bytes).
System is 4046 kB
CRC 113cf27d
Kernel: arch/x86/boot/bzImage is ready (#3)
Building modules, stage 2.
MODPOST 2254 modules
root@workstation:~# make modules_install
root@workstation:~# make install
root@workstation:~# shutdown -r now
<reboot>
user@workstation:~$ dmesg
```
