# Px4

> The Professional Autopilot. PX4 powers any vehicle from racing and cargo drones through to ground vehicles. The powerful and uniquely flexible core of the Dronecode Platform is open-source, and available for you to use and customise as needed.

> PX4 is used in a wide range of use-cases, from consumer drones to industrial applications. It is also the leading research platform for drones and has been successfully applied to under water vehicles and boats.

- Open Source
- Full stack
  - Flight Stack
  -  Middleware
  - ESC firmware
  - Bootloader
  - Operating System
    -  NuttX OS
- Flexible
- World Class Devs
- Membership++
- Community

## Technology

Complete Autopilot Solution

- PX4 Flight Stack: The flight control system (autopilot).
- [MAVLink](https://mavlink.io/en/): A highly efficient, lightweight and blazing fast robotics communication toolkit.
- [QGroundControl](http://qgroundcontrol.com/): Modern, mobile and desktop user interface to configure the system and execute flights.

Built for Aerial Robotics

- Optical Flow and Visual Inertial Odometry
- Avoidance
- Planning

Great User Experience

> QGroundControl is a state of the art ground control station

Simulation

- AirSim
- ROS Gazebo Simulator
- jMAVSim
- X-Plane
- DroneKit-SITL
- SITL Simulator (Software in the Loop)
- Hardware In The Loop (HITL) simulation

Hardware

- Flight Controllers
  - Pixhawk-compatible flight controllers, including the 3DR Pixhawk and Pixhawk Mini
  - Qualcomm Snapdragon Flight
  - Intel® Aero Ready to Fly Drone
- SIK Telemetry Radio
  - HopeRF HM-TRP
  - 3DR radio
  - RFD900 ultra long range radio
- SAPOG ESC
- Optical Flow Sensor

Broad Airframe Support

> PX4 supports anything from a multi rotor to a fixed wing, and all mix forms of VTOL planes in-between.

Links

- [PX4 Pro Drone Autopilot Homepage](http://px4.io/) 
- [PX4 User Guide](https://docs.px4.io/en/)
- [PX4 Development Guide](https://dev.px4.io/en/)
- [PX4 Pro Drone Autopilot Wikipedia](https://en.wikipedia.org/wiki/PX4_autopilot)
- [PX4 Pro Drone Autopilot Github Source code](https://github.com/px4)
- [PX4 Seminar](https://www.slideshare.net/narnars0/02-px4-seminaroam)

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ cd Firmware/
user@workstation:~/src/Firmware$ 
```

```sh
user@workstation:~/src/Firmware$ ls
build               Documentation             LICENSE        README.md
circle.yml          eclipse.cproject          Makefile       ROMFS
cmake               eclipse.project           mavlink        src
CMakeLists.txt      Firmware.sublime-project  msg            test_data
CODE_OF_CONDUCT.md  Images                    nuttx-configs  Tools
CONTRIBUTING.md     integrationtests          package.xml    Vagrantfile
CTestConfig.cmake   Jenkinsfile               platforms
Debug               launch                    posix-configs
user@workstation:~/src/Firmware$ 
```

```sh
user@workstation:~/src/Firmware$ make posix jmavsim
...
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