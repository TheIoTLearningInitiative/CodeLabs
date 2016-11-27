# Photography

## Setup Ubuntu

```sh
user@ubuntu:~$ sudo nano /etc/apt/sources.list
deb http://ftp.mx.debian.org/debian/ jessie-backports main 
user@ubuntu:~$ sudo apt-get update
user@ubuntu:~$ sudo apt-get install libav-tools
user@ubuntu:~$ sudo apt-get install ffmpeg
```

## Setup Ubilinux

```sh
user@ubuntu:~$ sudo apt-get install libav-tools
user@ubuntu:~$ sudo apt-get install ffmpeg
```

```sh
user@ubilinux:~$ ffmpeg -framerate 30 -i %02d.jpeg -vf fps=30 -pix_fmt yuv420p output.mp4
```