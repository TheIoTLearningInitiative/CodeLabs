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

Watch [“How Linux is built”](http://www.youtube.com/watch?v=yVpbFMhOAwE) by LinuxFoundation


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