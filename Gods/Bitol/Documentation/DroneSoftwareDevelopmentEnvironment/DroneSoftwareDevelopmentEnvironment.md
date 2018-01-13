# Drone Software Development Environment

> Workstation

# Sudoers

```sh
user@workstation:~$ sudo adduser <user> sudo
user@workstation:~$ sudo usermod -a -G sudo <user>
```

```sh
user@workstation:~$ sudo nano /etc/sudoers
...
user    ALL=(ALL:ALL) ALL
...
```

# Packages

```sh
user@workstation:~$ sudo apt update
user@workstation:~$ sudo apt install git
user@workstation:~$ sudo apt install python-pip --upgrade
user@workstation:~$ sudo apt install unzip
```


# Software In the Loop

## DroneKit SITL

```sh
user@workstation:~$ sudo apt-get install python-pip python-dev
user@workstation:~$ sudo pip install dronekit
user@workstation:~$ sudo pip install dronekit-sitl -UI
```

# Ground Control Station

## QGroundControl

```sh
user@workstation:~$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
user@workstation:~$ chmod +x QGroundControl.AppImage
```



# OpenCV

Entirely based on [Reyes-Fred Xiaomin Gitbook](https://reyes-fred.gitbooks.io/xiaomin/content/chapter1/installing-opencv-330-on-ubuntu-1604-lts.html)

