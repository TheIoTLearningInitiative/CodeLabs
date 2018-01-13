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

# Flight Controllers

## PX4

From [PX4 Developer Guide](https://dev.px4.io/en/setup/getting_started.html)

```sh
user@workstation:~$ sudo apt-get remove modemmanager
user@workstation:~$ sudo usermod -a -G dialout $USER
```

Source Code

```sh
user@workstation:~$ wget https://raw.githubusercontent.com/PX4/Devguide/master/build_scripts/ubuntu_sim_nuttx.sh
```

Dependencies

```sh
user@workstation:~$ source ubuntu_sim_nuttx.sh
```

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ cd Firmware/
```

### Software In the Loop, JMAVSim

```sh
user@workstation:~/src/Firmware$ make posix jmavsim
```

Output

```sh
...
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

pxh>
```

## Ardupilot

From [Ardupilot Setting up SITL on Linux](http://ardupilot.org/dev/docs/setting-up-sitl-on-linux.html)

Dependencies

```sh
user@workstation:~$ sudo apt-get install python-matplotlib python-serial python-wxgtk3.0 python-wxtools python-lxml
user@workstation:~$ sudo apt-get install python-scipy python-opencv ccache gawk git python-pip python-pexpect
user@workstation:~$ sudo pip install future pymavlink MAVProxy
```

Configuration

```sh
user@workstation:~$ nano ~/.bashrc
export PATH=$PATH:$HOME/src/ardupilot/Tools/autotest
export PATH=/usr/lib/ccache:$PATH
user@workstation:~$ . ~/.bashrc
```

Source Code

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ 
user@workstation:~/src$ git clone git://github.com/ArduPilot/ardupilot.git
user@workstation:~/src$ cd ardupilot
user@workstation:~/src$ git submodule update --init --recursive
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

```sh
user@workstation:~$ sudo pip install --upgrade pymavlink MAVProxy
```