# Linux Kernel Compilation

> Understand the Linux Kernel compilation process

```sh
user@workstation:~$ uname -a
Linux kali 4.12.0-kali2-amd64 #1 SMP Debian 4.12.13-1kali2 (2017-10-03) x86_64 GNU/Linux
```

```sh
user@workstation:~$ cd linux
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

```sh
user@workstation:~$ make oldconfig
<You will be asked configuration questions not answered, for now hit Enter for all of them>
DesignWare Cores SATA support (SATA_DWC) [N/m/?] (NEW)
...
#
# configuration written to .config
#
```

```sh
user@workstation:~$ make
root@workstation:~# make modules_install
root@workstation:~# make install
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
Linux Minnowboard 3.19.0-rc7+ #1 SMP Debian ... x86_64 GNU/Linux
```