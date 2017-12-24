# Linux Kernel Source Code

3 Linux Kernel Source Code Repositories

- https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
  - git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
- https://github.com/torvalds/linux
  - git@github.com:torvalds/linux.git
- https://www.kernel.org/
  - Tar.Gz

## Workstation Setup

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
user@workstation:~$ cd linux
user@workstation:~/linux$ 
```

```sh
user@workstation:~/linux$ ls
arch	    crypto	   init     MAINTAINERS      net       System.map
block	    Documentation  ipc	    Makefile	     README    tools
built-in.o  drivers	   Kbuild   mm		     samples   usr
certs	    firmware	   Kconfig  modules.builtin  scripts   virt
COPYING     fs		   kernel   modules.order    security  vmlinux
CREDITS     include	   lib	    Module.symvers   sound     vmlinux.o
user@workstation:~/linux$ 
```