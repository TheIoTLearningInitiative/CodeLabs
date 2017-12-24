# Challenge

## Shell Scripting

> Objective: Shell scripting is a basic skill every Linux developer has
> Proficiency Level: Advanced

We require a script to do some "processing" for every kernel released: 
- First, make it work
- Second, optimize it

We need the following working directory structure

```sh
    ...
    |- LinuxKernelDevelopmentProcessChallenge
      |- kernelimages  (directory)
      |- preworkspace  (directory)
      |- postworksapce (directory)
      |- main.sh (our script)
      |- stats.pre (text file)
      |- stats.post (text file)
      |- intel.contributors (text file)
```

## Script Arguments

The script will receive 3 arguments: the file location, version of the kernel and the file type

    user $ myscript.sh <internet/local> <x.x.xx> <xz|gz>

If file location is the internet then use this repository to grab the kernel tar file:
- __https://www.kernel.org/pub/linux/kernel/v4.x/__
and download it to kernelimages directory.

If file location is local then use kernelimages directory to grab the kernel tar file

## Processing

We will gather statistics and do some work in 2 phases, right after we have decompressed the kernel file under the preworkspace directory and after we make some changes to its directory structure under postworkspace, statistics will be populated in 2 different files under our top working directory, their names will be:

1. stats.pre
2. stats.post

## Pre Processing

Take kernel image from kernelimages directory and decompress under the preworkspace directory. We will require the following information under **stats.pre** files:

File Names

```sh
# of README* (files as README.Locking also count)
# of Kconfig
# of Kbuild
# of Makefiles
# of .c files
# of .h files
# of .pl files
# of others files
Total number of files
```

File Content

```sh
# of ocurrences for Linus
# of directories found under arch/
# of ocurrences for kernel_start
# of ocurrences for __init
# of files in its filename containing the word gpio
# of ocurrences for #include <linux/module.h>
```

Some Tasks To Do

Sort in alphabetical order all the inclusion of libraries using this format **#include <linux/*>** only under **drivers/i2c/** directory, please make sure you identify all files you have modified, you will need their identity in the post processing phase

Let's populate our file called **intel.contributors** under our top level working directory directory, search for all Intel contributors matching **@intel.com** and identify the file where their name was located, then write one line per contributor, cannot be repeated e.g.

    Path/to/file.c | Sara Sharp
    Path/to/file.c | Darren Hart

### Post Processing

Create 3 directories under postworkspace and move all files from preworkspace where kernel was decompressed according to the file extensions:

    files_c, all .c files
    files_h, all .h files
    files_others, all other files

In all 3 directories, if we have files with the same name, add a number as identifier that will increase by 1 as required, e.g.

    README_1
    README_2

#### Some Tasks To Do

1. Add your name to the beginning, middle and end of every .c file
2. In all files substitute #include <linux/scripting.h> for every #include <linux/module.h> found
3. Fix your #include's order for the files coming from driver/i2c

We will need the following information under stats.post files:

File Names

    # of READMEs
    # of Kconfig
    # of Kbuild
    # of Makefiles
    # of .c files
    # of .h files
    # of .pl files
    # of others files
    Total number of files

File Content

    # of ocurrences for Linus
    # of ocurrences for kernel_start
    # of ocurrences for __init
    # of files in its filename containing the word gpio
    # of ocurrences for #include <linux/module.h>
    # of ocurrences for #include <linux/learningscripting.h>

### Results

A message of Pass / Fail should be printed to stdout for each of the following:

- Our Total number of files is the same in both stats.pre and stats.post

## Python

> Objective: Bring your basic skills up-to-speed
> Proficiency Level: Basic

Guess what? Port the previous script to Python :) remember to change the name of the host directory, now called, pythonlearning 