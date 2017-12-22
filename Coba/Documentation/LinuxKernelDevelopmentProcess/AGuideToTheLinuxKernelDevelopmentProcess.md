# A guide to the Linux Kernel development process

## Let’s get started

- Ask Wikipedia about [Free Software](http://en.wikipedia.org/wiki/Free_software)
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