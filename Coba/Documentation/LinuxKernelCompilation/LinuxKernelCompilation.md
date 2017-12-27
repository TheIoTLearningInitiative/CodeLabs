# Linux Kernel Compilation

> Understand the Linux Kernel compilation process

## Uname

> Print system information

Print all information

```sh
user@workstation:~$ uname -a
Linux kali 4.12.0-kali2-amd64 #1 SMP Debian 4.12.13-1kali2 (2017-10-03) x86_64 GNU/Linux
```

Print the Kernel Release

```sh
user@workstation:~$ uname -r
4.12.0-kali2-amd64
```

## Boot Directory

> _This directory contains everything required for the boot process except for configuration files not needed at boot time (the most notable of those being those that belong to the GRUB boot-loader) and the map installer._ [LDP Linux Filesystem Hierarchy /boot](http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/boot.html)

```
user@workstation:~$ cd /boot/
user@workstation:~/boot$ 
```

```sh
user@workstation:~/boot$ ls
config-4.12.0-kali1-amd64      initrd.img-4.12.0-kali2-amd64  vmlinuz-4.12.0-kali1-amd64
config-4.12.0-kali2-amd64      initrd.img-4.15.0-kali1-amd64  vmlinuz-4.12.0-kali2-amd64
config-4.15.0-kali1-amd64      System.map-4.12.0-kali1-amd64  vmlinuz-4.15.0-kali1-amd64
grub                           System.map-4.12.0-kali2-amd64
initrd.img-4.12.0-kali1-amd64  System.map-4.15.0-kali1-amd64
```
### config

> Installed kernel configuration

```sh
user@workstation:~/boot$ ls /boot/config-$(uname -r)
/boot/config-4.12.0-kali2-amd64
```

```sh
user@workstation:~/boot$ file config-4.12.0-kali2-amd64
config-4.12.0-kali2-amd64: Linux make config build file, ASCII text
```

```sh
user@workstation:~/boot$ ls -alh config-4.12.0-kali2-amd64 
-rw-r--r-- 1 root root 190K Oct  3 01:58 config-4.12.0-kali2-amd64
user@workstation:~/boot$ 
```

```sh
user@workstation:~/boot$ cat config-4.12.0-kali2-amd64 | less
#
# Automatically generated file; DO NOT EDIT.
# Linux/x86 4.12.13 Kernel Configuration
#
CONFIG_64BIT=y
CONFIG_X86_64=y
CONFIG_X86=y
CONFIG_INSTRUCTION_DECODER=y
CONFIG_OUTPUT_FORMAT="elf64-x86-64"
CONFIG_ARCH_DEFCONFIG="arch/x86/configs/x86_64_defconfig"
CONFIG_LOCKDEP_SUPPORT=y
CONFIG_STACKTRACE_SUPPORT=y
CONFIG_MMU=y
CONFIG_ARCH_MMAP_RND_BITS_MIN=28
CONFIG_ARCH_MMAP_RND_BITS_MAX=32
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MIN=8
CONFIG_ARCH_MMAP_RND_COMPAT_BITS_MAX=16
CONFIG_NEED_DMA_MAP_STATE=y
CONFIG_NEED_SG_DMA_LENGTH=y
...
```

### initrd

> _The initial RAM disk (initrd) is an initial root file system that is mounted prior to when the real root file system is available. The initrd is bound to the kernel and loaded as part of the kernel boot procedure. The kernel then mounts this initrd as part of the two-stage boot process to load the modules to make the real file systems available and get at the real root file system._ [Linux initial RAM disk (initrd) overview](https://www.ibm.com/developerworks/library/l-initrd/index.html)

> _initrd is mainly designed to allow system startup to occur in two phases, where the kernel comes up with a minimum set of compiled-in drivers, and where additional modules are loaded from initrd._ [Debian Wiki Initrd](https://wiki.debian.org/Initrd)

```sh
user@workstation:~/boot$ ls /boot/initrd.img-$(uname -r)
/boot/initrd.img-4.12.0-kali2-amd64
```

```sh
user@workstation:~/boot$ file initrd.img-4.12.0-kali2-amd64
initrd.img-4.12.0-kali2-amd64: ASCII cpio archive (SVR4 with no CRC)
```

```sh
user@workstation:~/boot$ ls -alh initrd.img-4.12.0-kali2-amd64
-rw-r--r-- 1 root root 26M Oct  8 22:54 initrd.img-4.12.0-kali2-amd64
```

```sh
user@workstation:~/boot$ mkdir /tmp/temp
user@workstation:~/boot$ cd /tmp/temp/
user@workstation:/tmp/temp$ cp /boot/initrd.img-4.12.0-kali2-amd64 .
user@workstation:/tmp/temp$ (cpio -id; zcat | cpio -id) < initrd.img-4.12.0-kali2-amd64
36 blocks
148321 blocks
user@workstation:/tmp/temp$ ls
bin  conf  etc	init  initrd.img-4.12.0-kali2-amd64  kernel  lib  lib64  run  sbin  scripts
user@workstation:/tmp/temp$ 
```

```sh
user@workstation:/tmp/temp$ find . -type f | wc -l
1117
user@workstation:/tmp/temp$ find lib/modules/4.12.0-kali2-amd64/kernel/ -type f | wc -l
662
xe1gyq@kali:/tmp/temp$ 
```

```sh
user@workstation:/tmp/temp$ cd /boot
user@workstation:~/boot$ rm -rf /tmp/temp/
user@workstation:~/boot$ 
```

### System

> _In Linux, the System.map file is a symbol table used by the kernel. A symbol table is a look-up between symbol names and their addresses in memory. A symbol name may be the name of a variable or the name of a function. The System.map is required when the address of a symbol name, or the symbol name of an address, is needed. It is especially useful for debugging kernel panics and kernel oopses. The kernel does the address-to-name translation itself when CONFIG_KALLSYMS is enabled so that tools like ksymoops are not required._ [Wikipedia](https://en.wikipedia.org/wiki/System.map)

```sh
user@workstation:~/boot$ ls /boot/System.map-$(uname -r)
/boot/System.map-4.12.0-kali2-amd64
```

```sh
user@workstation:~/boot$ file System.map-4.12.0-kali2-amd64 
System.map-4.12.0-kali2-amd64: ASCII text
user@workstation:~/boot$ 
```

```
user@workstation:~/boot$ ls -alh System.map-4.12.0-kali2-amd64
-rw-r--r-- 1 root root 2.9M Oct  3 01:58 System.map-4.12.0-kali2-amd64
```

```sh
user@workstation:~/boot$ cat System.map-4.12.0-kali2-amd64 | less
0000000000000000 D __per_cpu_start
0000000000000000 D irq_stack_union
0000000000000000 A xen_irq_disable_direct_reloc
0000000000000000 A xen_save_fl_direct_reloc
00000000000001c5 A kexec_control_code_size
0000000000004000 d exception_stacks
0000000000009000 D gdt_page
000000000000a000 D espfix_waddr
000000000000a008 D espfix_stack
000000000000a020 D cpu_llc_id
000000000000a040 D cpu_llc_shared_map
000000000000a080 D cpu_core_map
000000000000a0c0 D cpu_sibling_map
000000000000a100 D cpu_info
000000000000a1e8 D cpu_number
000000000000a1f0 D this_cpu_off
000000000000a1f8 D x86_cpu_to_acpiid
000000000000a1fc D x86_cpu_to_apicid
000000000000a1fe D x86_bios_cpu_apicid
000000000000a200 D sched_core_priority
000000000000a240 d cpu_loops_per_jiffy
000000000000a280 d pmc_prev_left
000000000000a480 D cpu_hw_events
000000000000b740 d bts_ctx
000000000000b800 D pqr_state
000000000000b810 d insn_buffer
...
```

```sh
user@workstation:~/boot$ cat /proc/kallsyms | less
0000000000000000 A irq_stack_union
0000000000000000 A __per_cpu_start
0000000000004000 A exception_stacks
0000000000009000 A gdt_page
000000000000a000 A espfix_waddr
000000000000a008 A espfix_stack
000000000000a020 A cpu_llc_id
000000000000a040 A cpu_llc_shared_map
000000000000a080 A cpu_core_map
000000000000a0c0 A cpu_sibling_map
000000000000a100 A cpu_info
000000000000a1e8 A cpu_number
000000000000a1f0 A this_cpu_off
000000000000a1f8 A x86_cpu_to_acpiid
000000000000a1fc A x86_cpu_to_apicid
000000000000a1fe A x86_bios_cpu_apicid
000000000000a200 A sched_core_priority
000000000000a240 A cpu_loops_per_jiffy
000000000000a280 A pmc_prev_left
000000000000a480 A cpu_hw_events
000000000000b740 A bts_ctx
000000000000b800 A pqr_state
000000000000b810 A insn_buffer
000000000000b820 A pt_ctx
000000000000b900 A xen_vcpu_info
000000000000b940 A xen_vcpu_id
...
```

```sh
user@workstation:~/boot$ cat System.map-4.12.0-kali2-amd64 | grep exception_stacks
0000000000004000 d exception_stacks
user@workstation:~/boot$ cat /proc/kallsyms | grep exception_stacks
0000000000004000 A exception_stacks
```

### Vmlinuz

> _On Linux systems, vmlinux is a statically linked executable file that contains the Linux kernel in one of the object file formats supported by Linux, which includes ELF, COFF and a.out. The vmlinux file might be required for kernel debugging, symbol table generation or other operations, but must be made bootable before being used as an operating system kernel by adding a multiboot header, bootsector and setup routines._ [Wikipedia](https://en.wikipedia.org/wiki/Vmlinux)

> _vmlinuz is the name of the Linux kernel executable. vmlinuz is a compressed Linux kernel, and it is capable of loading the operating system into memory so that the computer becomes usable and application programs can be run. vmlinuz = Virtual Memory LINUx gZip = Compressed Linux kernel Executable._ [Anatomy of the initrd and vmlinuz](https://www.ibm.com/developerworks/community/blogs/mhhaque/entry/anatomy_of_the_initrd_and_vmlinuz?lang=en)

```sh
user@workstation:~/boot$ ls /boot/vmlinuz-$(uname -r)
/boot/vmlinuz-4.12.0-kali2-amd64
user@workstation:~/boot$ 
```

```sh
user@workstation:~/boot$ file vmlinuz-4.12.0-kali2-amd64
vmlinuz-4.12.0-kali2-amd64: Linux kernel x86 boot executable bzImage, version 4.12.0-kali2-amd64 (devel@kali.org) #1 SMP Debian 4.12.13-1kali2 (2017-10-03), RO-rootFS, swap_dev 0x4, Normal VGA
user@workstation:~/boot$ 
```

```sh
user@workstation:~/boot$ ls -alh vmlinuz-4.12.0-kali2-amd64
-rw-r--r-- 1 root root 4.2M Oct  3 01:58 vmlinuz-4.12.0-kali2-amd64
user@workstation:~/boot$ 
```

## Lib Directory

> _The /lib directory contains kernel modules and those shared library images (the C programming code library) needed to boot the system and run the commands in the root filesystem._ [LDP Linux Filesystem Hierarchy /lib](http://www.tldp.org/LDP/Linux-Filesystem-Hierarchy/html/lib.html)

```sh
user@workstation:~$ ls -al /lib/modules/
drwxr-xr-x  7 root root 4096 Dec 23 09:05 .
drwxr-xr-x 18 root root 4096 Sep  9 19:05 ..
drwxr-xr-x  3 root root 4096 Sep 10 09:26 4.12.0-kali1-amd64
drwxr-xr-x  3 root root 4096 Oct  8 22:54 4.12.0-kali2-amd64
drwxr-xr-x  2 root root 4096 Oct  8 22:59 4.6.0-kali1-amd64
drwxr-xr-x  2 root root 4096 Oct  8 22:59 4.9.0-kali2-amd64
user@workstation:~$ 
```

```sh
user@workstation:~$ ls -al /lib/modules/4.12.0-kali2-amd64/
total 4176
drwxr-xr-x  3 root root    4096 Oct  8 22:54 .
drwxr-xr-x  7 root root    4096 Dec 23 09:05 ..
lrwxrwxrwx  1 root root      41 Oct  3 01:58 build -> /usr/src/linux-headers-4.12.0-kali2-amd64
drwxr-xr-x 12 root root    4096 Sep 26 00:17 kernel
-rw-r--r--  1 root root 1031395 Oct  8 22:54 modules.alias
-rw-r--r--  1 root root  988746 Oct  8 22:54 modules.alias.bin
-rw-r--r--  1 root root    4402 Oct  3 01:58 modules.builtin
-rw-r--r--  1 root root    5907 Oct  8 22:54 modules.builtin.bin
-rw-r--r--  1 root root  399937 Oct  8 22:54 modules.dep
-rw-r--r--  1 root root  551428 Oct  8 22:54 modules.dep.bin
-rw-r--r--  1 root root     402 Oct  8 22:54 modules.devname
-rw-r--r--  1 root root  133633 Oct  3 01:58 modules.order
-rw-r--r--  1 root root     772 Oct  8 22:54 modules.softdep
-rw-r--r--  1 root root  501957 Oct  8 22:54 modules.symbols
-rw-r--r--  1 root root  618714 Oct  8 22:54 modules.symbols.bin
lrwxrwxrwx  1 root root      42 Oct  3 01:58 source -> /usr/src/linux-headers-4.12.0-kali2-common
user@workstation:~$ 
```

```sh
user@workstation:~$ find /lib/modules/4.12.0-kali2-amd64/kernel/ -type f | wc -l
3403
user@workstation:~$ 
```

## /Src Directory

```sh
user@workstation:~$ ls /boot
config-4.12.0-kali1-amd64      System.map-4.12.0-kali1-amd64
config-4.12.0-kali2-amd64      System.map-4.12.0-kali2-amd64
config-4.15.0-rc4+	       System.map-4.15.0-rc4+
grub			       vmlinuz-4.12.0-kali1-amd64
initrd.img-4.12.0-kali1-amd64  vmlinuz-4.12.0-kali2-amd64
initrd.img-4.12.0-kali2-amd64  vmlinuz-4.15.0-rc4+
initrd.img-4.15.0-rc4+
```

## Mainline

```sh
user@workstation:~$ cd linux
user@workstation:~/linux$ 
```

```sh
user@workstation:~/linux$ ls
arch	 crypto		include  kernel       modules.builtin  scripts	 virt
block	 Documentation	init	 lib	      modules.order    security
certs	 drivers	ipc	 MAINTAINERS  net	       sound
COPYING  firmware	Kbuild	 Makefile     README	       tools
CREDITS  fs		Kconfig  mm	      samples	       usr
user@workstation:~/linux$ 
```

## Configuration Setup

```sh
user@workstation:~/linux$ cp /boot/config-4.12.0-kali2-amd64 .config
user@workstation:~/linux$ make oldconfig
<You will be asked configuration questions not answered, for now hit Enter for all of them>
DesignWare Cores SATA support (SATA_DWC) [N/m/?] (NEW)
...
#
# configuration written to .config
#
```

## Compilation Kernel and Modules

```sh
user@workstation:~/linux$ make
```

## Modules Installation

```sh
root@workstation:~/linux# make modules_install
```

## Kernel Installation

```sh
root@workstation:~/linux# make install
```

```sh
user@workstation:~/linux$ ls
arch   COPYING  Documentation  fs       ipc      kernel       Makefile         modules.order   README   security    tools  vmlinux
block  CREDITS  drivers        include  Kbuild   lib          mm               Module.symvers  samples  sound       usr    vmlinux.o
certs  crypto   firmware       init     Kconfig  MAINTAINERS  modules.builtin  net             scripts  System.map  virt
user@workstation:~/linux$ 
```

## Uname

Reboot your workstation and confirm the new version has been installed, print the Kernel Release

```
user@workstation:~$ uname -a
Linux kali config-4.15.0-rc4+ #1 SMP Debian 4.12.13-1kali2 (2017-10-03) x86_64 GNU/Linux
```