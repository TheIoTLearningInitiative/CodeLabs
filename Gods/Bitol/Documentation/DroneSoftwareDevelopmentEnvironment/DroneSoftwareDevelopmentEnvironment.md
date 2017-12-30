# Drone Software Development Environment

# Workstation

## Sudoers

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

## Java

```sh
user@workstation:~/Drones$ sudo add-apt-repository ppa:webupd8team/java
user@workstation:~/Drones$ sudo apt-get update
user@workstation:~/Drones$ sudo apt-get install oracle-java8-installer
```

## Extra Settings

```sh
user@workstation:~$ sudo apt-get remove modemmanager
user@workstation:~$ sudo usermod -a -G dialout $USER
```

### Packages

```sh
user@workstation:~$ sudo apt update
user@workstation:~$ sudo apt install git
user@workstation:~$ sudo apt install python-pip
user@workstation:~$ sudo apt install unzip
```

# Autopilot / Flight Stack / Flight Controller


## DroneKit SITL

```sh
user@workstation:~$ sudo pip install dronekit
user@workstation:~$ sudo pip install dronekit-sitl
```

```sh
user@workstation:~$ dronekit-sitl --list
solo-1.2.0
solo-2.0.18
solo-2.0.20
plane-3.3.0
copter-3.3
rover-2.50
user@workstation:~$ 
```

## PX4

#### PX4 Source Code

```sh
user@workstation:~$ wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_nuttx.sh
```

```sh
user@workstation:~$ source ubuntu_sim_nuttx.sh
```

#### PX4 Build

Steps

1. https://github.com/PX4/Devguide/blob/master/build_scripts/ubuntu_sim_common_deps.sh
2. https://github.com/PX4/Devguide/blob/master/build_scripts/ubuntu_sim.sh
3. https://github.com/PX4/Devguide/blob/master/build_scripts/ubuntu_sim_nuttx.sh

Ubuntu 14.04

```sh
sudo -E add-apt-repository -y ppa:george-edison55/cmake-3.x
sudo -E apt-get update
sudo apt-get install cmake
sudo apt-get install python-jinja2
sudo python -m pip install numpy toml
sudo apt-get install python-empy
```

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ cd Firmware/
user@workstation:~/src/Firmware$ make posix jmavsim
```

```sh
user@workstation:~$ git clone https://github.com/PX4/Firmware.git
user@workstation:~$ cd Firmware
user@workstation:~$ make posix jmavsim
```

# Ground Control Station

## QGroundControl

```sh
user@workstation:~$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
user@workstation:~$ chmod +x QGroundControl.AppImage
user@workstation:~$ ./QGroundControl.AppImage
```

