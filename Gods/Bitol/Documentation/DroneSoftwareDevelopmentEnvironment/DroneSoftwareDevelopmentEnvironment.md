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

### Software In the Loop, SITL Simulator

```sh
user@workstation:~/src$ cd ardupilot/ArduPlane
user@workstation:~/src/ardupilot/ArduPlane$ sim_vehicle.py -w
```

Output

```
...
Init ArduPlane V3.8.3-dev (b5bdaa18)

Free RAM: 131072
Firmware change: erasing EEPROM...
done.
load_all took 0us
0 0 0 validate_structures:209: Validating structures
DataFlash_File: buffer size=16384
online system 1
INITIALISING> Mode INITIALISING
APM: ArduPlane V3.8.3-dev (b5bdaa18)
Flight battery 100 percent
Received 908 parameters
Saved 908 parameters to mav.parm
APM: Barometer calibration complete
APM: Airspeed calibration started
APM: Ground start complete
APM: GPS 1: detected as u-blox at 115200 baud
APM: Init HOME
APM: EKF2 IMU0 initial yaw alignment complete
APM: EKF2 IMU1 initial yaw alignment complete
APM: Airspeed sensor calibrated
Mode MANUAL

APM: EKF2 IMU0 tilt alignment complete
APM: EKF2 IMU1 tilt alignment complete
APM: EKF2 IMU0 Origin set to GPS
APM: EKF2 IMU1 Origin set to GPS

MANUAL> 
```

```sh
user@workstation:~/src/ardupilot/ArduPlane$ cd
user@workstation:~$ 
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

# Communications

## MAVLink

```sh
user@workstation:~$ sudo pip install --upgrade pymavlink MAVProxy
```

# OpenCV

Entirely based on [Reyes-Fred Xiaomin Gitbook](https://reyes-fred.gitbooks.io/xiaomin/content/chapter1/installing-opencv-330-on-ubuntu-1604-lts.html)

