# A guide to the Linux Kernel development process

> _The purpose of "A guide to the Linux Kernel development process" is to help developers (and their managers) work with the development community with a minimum of frustration.  It is an attempt to document how this community works in a way which is accessible to those who are not intimately familiar with Linux kernel development (or, indeed, free software development in general). While there is some technical material here, this is very much a process-oriented
discussion which does not require a deep knowledge of kernel programming to understand._ [Homepage](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process) Based on Linux Kernel Commit ID 75b021468368288ac8fec1a86a13f5cf2229139e

## Let’s get started

> The Linux Foundation (LF) is dedicated to building sustainable ecosystems around open source projects to accelerate technology development and commercial adoption. The largest open source non-profit organization, it works to promote, protect, and advance Linux and collaborative development and support the "greatest shared technology resources in history." [Wikipedia](https://en.wikipedia.org/wiki/Linux_Foundation)

- Ask Wikipedia about [Linux Kernel](http://en.wikipedia.org/wiki/Linux_Kernel)

```sh
$ git ls-files
$ git ls-files | wc -l
$ git log --pretty=oneline
$ git log --pretty=oneline | wc -l
```

## What Linux Kernel development process is about?

- Watch [“How Linux is built”](http://www.youtube.com/watch?v=yVpbFMhOAwE) by LinuxFoundation

```sh
$ find . -type f -name \*.[ch]* -print0 | xargs -0 cat | wc -l
$ git log --pretty=short | grep Author
```

```sh
$ ls arch
$ ls arch/ | wc -l

$ ls arch/x86
$ ls arch/arm

$ ls arch/x86/configs
$ ls arch/arm/configs
```

```sh
$ git log | grep scalable
$ git log | grep capable
$ git log | grep reliable
```

## The importance of “getting” code into the mainline

- Go to mainline, the main repository of the Linux Kernel source code and get used to the interface, find out about the different sections http://git.kernel.org/?p=linux/kernel/git/torvalds/linux.git
- Read how changes can influence the direction of the Linux Kernel http://marc.info/?l=linux-kernel&m=128979084506774
- Read how delayed code changes make kernel developers angry 
https://lkml.org/lkml/2010/11/2/147
- Read how unprepared code submissions make Linus Torvalds mad 
http://thread.gmane.org/gmane.linux.kernel/1114495/focus=112007

```sh
$ vi README

$ git log
/propietary
$ git log c752d04

$ git ls-files arch/arm | grep gpio
$ git ls-files arch/arm | grep gpio | wc -l

$ git ls-files arch/powerpc | grep gpio
$ git ls-files arch/powerpc | grep gpio | wc -l
```

## Licensing

- Ask Wikipedia about [Free Software](http://en.wikipedia.org/wiki/Free_software)
- Ask Wikipedia about [GNU General Public License](http://en.wikipedia.org/wiki/Gpl)

```sh
$ git grep GPLv2
$ vi COPYING
$ git log | grep signed-off
```

## How the process development works

- [Ask a kernel developer: maintainer workflow](https://lwn.net/Articles/512720/)

### The big picture

> _Nobody knows when a kernel will be released, because it's released according to perceived bug status, not according to a	preconceived timeline._

#### 4.x Kernel Tree

- [](https://git.kernel.org/pub/linux/kernel/v4.x/)
- [Linux Kernel's Source Management Tool](https://git-scm.com/)
- [](http://kerneltrap.org/node/14152)

#### 4.x.y -Stable Kernel Tree

- [Stable Kernel Rules: Everything you ever wanted to know about Linux -stable releases](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/process/stable-kernel-rules.rst)

#### -Next Kernel Tree

> [](https://git.kernel.org/?p=linux/kernel/git/next/linux-next.git)

- Go to mainline, the main repository of the Linux Kernel source code
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux.git
- Review section “tags”
- What is the latest version of the Linux Kernel?
- How many Release Candidates the Kernel has had in the last 2 cycles?
- Find out more about the Merge Window cycle
  - https://lkml.org/lkml/2011/5/23/358
  - https://lkml.org/lkml/2012/5/21/296
  - https://lkml.org/lkml/2012/1/19/418
- Find out more about some concerns on Merge Window cycle
http://kerneltrap.org/node/14152
- Read Linus’ message celebrating the final release of a version
https://lkml.org/lkml/2012/3/18/132

```sh
$ git tag -l
```

## The lifecycle of a patch

```sh
$ git checkout –b my.master origin/master
$ git tag -l
$ git checkout v3.6
$ git log
$ git format-patch -s -1
$ cat 0001-Linux-3.6.patch
```

checkout version 3.5 and generate top patch where version is changed

## Mailing lists

```sh
$ git log | grep vger.kernel.org
$ vi MAINTAINERS
```

## How patches get into the kernel

None

```sh
$ git log | grep torvalds
$ git log | grep Torvalds | wc -l
```

