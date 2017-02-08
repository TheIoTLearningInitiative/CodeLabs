# PortAudio

> PortAudio is a free, cross-platform, open-source, audio I/O library.  It lets you write simple audio programs in 'C' or C++ that will compile and run on many platforms including Windows, Macintosh OS X, and Unix (OSS/ALSA). It is intended to promote the exchange of audio software between developers on different platforms. Many applications use PortAudio for Audio I/O. [](http://www.portaudio.com/)

# Installation

```sh
root@edison:~# wget http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
--2017-02-05 19:04:41--  http://www.portaudio.com/archives/pa_stable_v190600_20161030.tgz
Resolving www.portaudio.com... 107.22.210.58
Connecting to www.portaudio.com|107.22.210.58|:80... connected.
HTTP request sent, awaiting response... 200 OK
Length: 1450572 (1.4M) [application/x-gzip]
Saving to: 'pa_stable_v190600_20161030.tgz'

100%[======================================>] 1,450,572    701KB/s   in 2.0s   

2017-02-05 19:04:43 (701 KB/s) - 'pa_stable_v190600_20161030.tgz' saved [1450572/1450572]

root@edison:~# 
```

```sh
root@edison:~# tar xvf pa_stable_v190600_20161030.tgz
```

```sh
root@edison:~# cd portaudio/
root@edison:~/portaudio# ls
CMakeLists.txt        bindings              doc          pablio
Doxyfile              build                 examples     portaudio-2.0.pc.in
Doxyfile.developer    clear_gitrevision.sh  fixdir.bat   qa
LICENSE.txt           cmake_support         fixfile.bat  src
Makefile.in           config.guess          include      test
README.configure.txt  config.sub            index.html   testcvs
README.txt            configure             install-sh   update_gitrevision.sh
SConstruct            configure.in          ltmain.sh
aclocal.m4            depcomp               missing
root@edison:~/portaudio# 
```

```sh
root@edison:~/portaudio# ./configure
root@edison:~/portaudio# make
root@edison:~/portaudio# make install
```

```sh
root@edison:~/portaudio# ldconfig
root@edison:~/portaudio# echo $LD_LIBRARY_PATH 

root@edison:~/portaudio# ls /usr/local/lib/                                                                                                        
libportaudio.a   libportaudio.so    libportaudio.so.2.0.0
libportaudio.la  libportaudio.so.2  pkgconfig
root@edison:~/portaudio# export LD_LIBRARY_PATH=/usr/local/lib
root@edison:~/portaudio# 
```