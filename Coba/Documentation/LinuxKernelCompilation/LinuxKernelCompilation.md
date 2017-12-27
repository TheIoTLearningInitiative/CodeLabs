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

```sh
user@workstation:~$ /boot
config-4.12.0-kali1-amd64      initrd.img-4.12.0-kali2-amd64  vmlinuz-4.12.0-kali1-amd64
config-4.12.0-kali2-amd64      initrd.img-4.15.0-kali1-amd64  vmlinuz-4.12.0-kali2-amd64
config-4.15.0-kali1-amd64      System.map-4.12.0-kali1-amd64  vmlinuz-4.15.0-kali1-amd64
grub                           System.map-4.12.0-kali2-amd64
initrd.img-4.12.0-kali1-amd64  System.map-4.15.0-kali1-amd64
```

## Lib Directory

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

Reboot your workstation and confirm the new version has been installed

```
user@workstation:~$ uname -a
Linux kali config-4.15.0-rc4+ #1 SMP Debian 4.12.13-1kali2 (2017-10-03) x86_64 GNU/Linux
```