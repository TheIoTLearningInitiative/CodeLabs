# Linux Kernel Compilation

> Understand the Linux Kernel compilation process

```sh
root@workstation:~# apt-get update
root@workstation:~# apt-get upgrade
root@workstation:~# apt-get install linux-headers-$(uname -r) kernel-package libncurses5 libncurses5-dev git libelf-dev
```

```sh
user@workstation:~$ git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
Cloning into 'linux'...
remote: Counting objects: 5396825, done.
remote: Compressing objects: 100% (2538/2538), done.
remote: Total 5396825 (delta 2876), reused 3072 (delta 2127)
Receiving objects: 100% (5396825/5396825), 984.15 MiB | 6.28 MiB/s, done.
Resolving deltas: 100% (4522724/4522724), done.
Checking connectivity... done.
Checking out files: 100% (59844/59844), done.
user@workstation:~$ 
```

```sh
user@workstation:~$ uname -a
Linux kali 4.12.0-kali2-amd64 #1 SMP Debian 4.12.13-1kali2 (2017-10-03) x86_64 GNU/Linux
```

```sh
user@workstation:~$ cd linux
```

```sh
user@workstation:~/linux$ ls
arch   certs    CREDITS  Documentation  firmware  include  ipc     Kconfig  lib          Makefile  net     samples  security  tools  virt
block  COPYING  crypto   drivers        fs        init     Kbuild  kernel   MAINTAINERS  mm        README  scripts  sound     usr
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