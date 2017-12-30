# Drone Software Development Environment

# 

# PX4

## Dependencies

```sh
pyme@pyme-desktop:~/Drones$ sudo apt update
pyme@pyme-desktop:~/Drones$ sudo apt install git
pyme@pyme-desktop:~/Drones$ sudo apt install python-pip
pyme@pyme-desktop:~/Drones$ sudo apt install unzip
```

## PX4 Source Code

```sh
user@workstation:~/Drones$ wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_nuttx.sh
user@workstation:~/Drones$ sudo apt-get remove modemmanager
user@workstation:~/Drones$ sudo usermod -a -G dialout $USER
user@workstation:~/Drones$ sudo sh ubuntu_sim_nuttx.sh
```

## PX4 Build

```sh
user@workstation:~/Drones$ git clone https://github.com/PX4/Firmware.git
user@workstation:~/Drones$ cd Firmware
user@workstation:~/Drones/Firmware$ make posix jmavsim
```

# GCS

## QGroundControl App Image

```sh
user@workstation:~/Drones$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
user@workstation:~/Drones$ chmod +x QGroundControl.AppImage
user@workstation:~/Drones$ ./QGroundControl.AppImage
```

