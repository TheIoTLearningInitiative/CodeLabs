# OpenCV

Entirely based on [Reyes-Fred Xiaomin Gitbook](https://reyes-fred.gitbooks.io/xiaomin/content/chapter1/installing-opencv-330-on-ubuntu-1604-lts.html)

Please refer to the Gitboo above for a detailed description of the packages installed

## Dependencies

```sh
user@workstation:~$ sudo apt-get install build-essential
user@workstation:~$ sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
user@workstation:~$ sudo apt-get install python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev
user@workstation:~$ sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
user@workstation:~$ sudo apt-get install libxvidcore-dev libx264-dev
user@workstation:~$ sudo apt-get install libgtk-3-dev
user@workstation:~$ sudo apt-get install libatlas-base-dev gfortran
user@workstation:~$ sudo apt-get install python2.7-dev python3.5-dev
```

## OpenCV

```sh
user@workstation:~$ git clone https://github.com/opencv/opencv.git
```

```sh
user@workstation:~$ workon cv
(cv) xe1gyq@kali:~$ pip install numpy
```

```sh
user@workstation:~$ cd opencv
(cv) xe1gyq@kali:~/opencv$ git checkout -b 3.3.0 3.3.0
Switched to a new branch '3.3.0'
(cv) xe1gyq@kali:~/opencv$ 
```


