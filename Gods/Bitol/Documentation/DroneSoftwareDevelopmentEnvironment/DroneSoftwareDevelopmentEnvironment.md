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

## Packages

```sh
user@workstation:~$ sudo apt update
user@workstation:~$ sudo apt install git
user@workstation:~$ sudo apt install python-pip --upgrade
user@workstation:~$ sudo apt install unzip
```

## Packages :: Java

Only if you are under Ubuntu Server

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

# Software In the Loop

## DroneKit SITL

```sh
user@workstation:~$ sudo apt-get install python-pip python-dev
user@workstation:~$ sudo pip install dronekit
user@workstation:~$ sudo pip install dronekit-sitl -UI
```

## PX4

### PX4 Source Code

```sh
user@workstation:~$ wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_nuttx.sh
```

```sh
user@workstation:~$ source ubuntu_sim_nuttx.sh
```

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ cd Firmware/
user@workstation:~/src/Firmware$ make posix jmavsim
[1/1] cd /home/user/src/Firmware/build/posix_sitl_default/.../Firmware /home/user/src/Firmware/build/posix_sitl_default
args: /home/user/src/Firmware/build/posix_sitl_default/px4 posix-configs/SITL/init/ekf2 none jmavsim none /home/user/src/Firmware /home/user/src/Firmware/build/posix_sitl_default
SITL ARGS
sitl_bin: /home/user/src/Firmware/build/posix_sitl_default/px4
rcS_dir: posix-configs/SITL/init/ekf2
debugger: none
program: jmavsim
model: none
src_path: /home/user/src/Firmware
build_path: /home/user/src/Firmware/build/posix_sitl_default
empty model, setting iris as default
SITL COMMAND: /home/user/src/Firmware/build/posix_sitl_default/px4 /home/user/src/Firmware /home/user/src/Firmware/posix-configs/SITL/init/ekf2/iris
data path: /home/user/src/Firmware
commands file: /home/user/src/Firmware/posix-configs/SITL/init/ekf2/iris
35 WARNING: setRealtimeSched failed (not run as root?)

______  __   __    ___ 
| ___ \ \ \ / /   /   |
| |_/ /  \ V /   / /| |
|  __/   /   \  / /_| |
| |     / /^\ \ \___  |
\_|     \/   \/     |_/

px4 starting.

INFO  [dataman] Unknown restart, data manager file 'rootfs/fs/microsd/dataman' size is 11405132 bytes
INFO  [platforms__posix__drivers__ledsim] LED::init
INFO  [platforms__posix__drivers__ledsim] LED::init
INFO  [simulator] Waiting for initial data on UDP port 14560. Please start the flight simulator to proceed..
Buildfile: /home/user/src/Firmware/Tools/jMAVSim/build.xml

make_dirs:

compile:

create_run_jar:

copy_res:

BUILD SUCCESSFUL
Total time: 0 seconds
Options parsed, starting Sim.
Starting GUI...
3D [dev] 1.6.0-pre12-daily-experimental daily


Init MAVLink
INFO  [simulator] Got initial simulation data, running sim..
INFO  [pwm_out_sim] MODE_8PWM
INFO  [tone_alarm] startup
INFO  [mavlink] mode: Normal, data rate: 4000000 B/s on udp port 14556 remote port 14550
INFO  [mavlink] mode: Onboard, data rate: 4000000 B/s on udp port 14557 remote port 14540
INFO  [mavlink] MAVLink only on localhost (set param MAV_BROADCAST = 1 to enable network)
INFO  [logger] logger started (mode=all)
pxh> 
pxh> INFO  [logger] Start file log
INFO  [logger] Opened log file: rootfs/fs/microsd/log/2017-12-31/19_44_38.ulg
INFO  [lib__ecl] EKF aligned, (pressure height, IMU buf: 22, OBS buf: 14)

```

### PX4 Build

Scripting Steps

1. https://github.com/PX4/Devguide/blob/master/build_scripts/ubuntu_sim_common_deps.sh
2. https://github.com/PX4/Devguide/blob/master/build_scripts/ubuntu_sim.sh
3. https://github.com/PX4/Devguide/blob/master/build_scripts/ubuntu_sim_nuttx.sh

# Ground Control Station

## QGroundControl

```sh
user@workstation:~$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
user@workstation:~$ chmod +x QGroundControl.AppImage
```

