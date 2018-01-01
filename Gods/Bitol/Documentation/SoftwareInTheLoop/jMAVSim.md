# jMAVSim

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ cd Firmware/
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

```sh
pxh> commander takeoff
pxh> INFO  [tone_alarm] positive
INFO  [tone_alarm] arming
INFO  [commander] Takeoff detected
```