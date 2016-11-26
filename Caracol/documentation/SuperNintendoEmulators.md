# Super Nintendo Emulators

# Zsnes

> ZSNES is a Super Nintendo emulator programmed by zsKnight and _Demo_. On April 2, 2001 the ZSNES project was GPL'ed and its source released to the public. It currently runs on Windows, Linux, FreeBSD, and DOS. Remember that this is a public beta so don't expect this to run on your machine [Homepage](http://www.zsnes.com/)

## Package Management System

```sh
user@ubuntu:~$ sudo apt-get install zsnes
```

## Manual

```sh
user@ubuntu:~$ sudo apt-get install nasm
user@ubuntu:~$ sudo apt-get install libsdl1.2-dev
user@ubuntu:~$ sudo apt-get install libsdl1.2-dbg
user@ubuntu:~$ sudo apt-get install libncurses5-dev
user@ubuntu:~$ configure
```

# Snes9x

> Snes9x is a portable, freeware Super Nintendo Entertainment System (SNES) emulator. It basically allows you to play most games designed for the SNES and Super Famicom Nintendo game systems on your PC or Workstation; which includes some real gems that were only ever released in Japan [Homepage](http://www.snes9x.com/)

## Package Management System

```sh
user@ubilinux:~$ wget http://www.zophar.net/download_file/22383
```

# Fceux

## Manual

```
user@ubilinux:~$ sudo apt-get install scons libsdl1.2-dev liblua5.1-dev zlib1g-dev zenity
user@ubilinux:~$ sudo apt-get install zenity
```

```sh
user@ubilinux:~$ ls *fce*
fceux-2.1.1.src.tar.bz2
user@ubilinux:~$ tar xvf fceux-2.1.1.src.tar.bz2
...
user@ubilinux:~$ cd fceu
user@ubilinux:~/fceu$ 
```

```sh
user@ubilinux:~/fceu$ scons
```