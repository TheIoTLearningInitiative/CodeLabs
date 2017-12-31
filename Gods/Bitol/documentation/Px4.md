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
- [PX4 Github](https://github.com/PX4/Firmware)

# Architecture

- [PX4 Architectural Overview](https://dev.px4.io/en/concept/architecture.html)

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
user@workstation:~/src/Firmware$ ls src/
drivers  examples  firmware  include  lib  modules  platforms  systemcmds
user@server:~/src/Firmware$ ls src/drivers/
adis16448       drv_batt_smbus.h     drv_pwm_trigger.h   l3gd20           navio_rgbled       sdp3x_airspeed
aerofc_adc      drv_blinkm.h         drv_px4flow.h       led              navio_sysfs_rc_in  sf0x
airspeed        drv_board_led.h      drv_range_finder.h  linux_gpio       ocpoc_adc          sf1xx
batt_smbus      drv_device.h         drv_rc_input.h      linux_pwm_out    oreoled            snapdragon_pwm_out
blinkm          drv_gpio.h           drv_sbus.h          linux_sbus       pca8574            snapdragon_rc_pwm
bma180          drv_gps.h            drv_sensor.h        lis3mdl          pca9685            spektrum_rc
bmi055          drv_gyro.h           drv_tone_alarm.h    ll40ls           protocol_splitter  srf02
bmi160          drv_hrt.h            ets_airspeed        lps25h           pwm_input          srf02_i2c
bmm150          drv_input_capture.h  frsky_telemetry     lsm303d          pwm_out_rc_in      stm32
bmp280          drv_io_expander.h    fxas21002c          mb12xx           pwm_out_sim        tap_esc
boards          drv_iridiumsbd.h     fxos8701cq          md25             px4flow            teraranger
bootloaders     drv_irlock.h         gps                 mkblctrl         px4fmu             test_ppm
bst             drv_led.h            hc_sr04             mpl3115a2        px4io              ulanding
camera_trigger  drv_mag.h            hmc5883             mpu6000          qshell             vmount
device          drv_mixer.h          hott                mpu9250          rgbled
drv_accel.h     drv_orb_dev.h        iridiumsbd          ms4525_airspeed  rgbled_pwm
drv_adc.h       drv_oreoled.h        irlock              ms5525_airspeed  roboclaw
drv_airspeed.h  drv_pwm_input.h      ist8310             ms5611           rpi_rc_in
drv_baro.h      drv_pwm_output.h     kinetis             navio_adc        samv7
```

```sh
user@workstation:~/src/Firmware$ ls src/examples/
bottle_drop        hwtest             publisher       px4_mavlink_debug  rover_steering_control  subscriber
fixedwing_control  matlab_csv_serial  px4_daemon_app  px4_simple_app     segway                  uuv_example_app
```

```sh
user@server:~/src/Firmware$ ls src/firmware/
nuttx  posix  qurt
```

## Directory src/

```sh
user@workstation:~/src/Firmware$ ls src/include/
containers  px4.h  unit_test.h  visibility.h
```

```sh
user@server:~/src/Firmware$ ls src/lib/
controllib       ecl         launchdetection  matrix       rc                   terrain_estimation
conversion       geo         led              mixer        runway_takeoff       version
DriverFramework  geo_lookup  mathlib          px4_eigen.h  tailsitter_recovery
```

```sh
user@workstation:~/src/Firmware$ ls src/modules/
attitude_estimator_q  fw_att_control     load_mon                  micrortps_bridge         sdlog2     uavcanesc
camera_feedback       fw_pos_control_l1  local_position_estimator  muorb                    sensors    uavcannode
commander             gnd_att_control    logger                    navigator                simulator  uORB
dataman               gnd_pos_control    mavlink                   position_estimator_inav  syslink    vtol_att_control
ekf2                  gpio_led           mc_att_control            px4iofirmware            systemlib
events                land_detector      mc_pos_control            replay                   uavcan
```

```sh
user@workstation:~/src/Firmware$ ls src/platforms/
apps.cpp.in  posix          px4_getopt.h    px4_micro_hal.h   px4_posix.h      px4_spi.h         qurt
apps.h.in    px4_app.h      px4_i2c.h       px4_middleware.h  px4_publisher.h  px4_subscriber.h  ros
common       px4_common.h   px4_includes.h  px4_module.h      px4_sem.h        px4_tasks.h       shmem.h
empty.c      px4_config.h   px4_log.h       px4_nodehandle.h  px4_sem.hpp      px4_time.h
nuttx        px4_defines.h  px4_message.h   px4_parameter.h   px4_shutdown.h   px4_workqueue.h
```

```sh
user@workstation:~/src/Firmware$ ls src/systemcmds/
bl_update  esc_calib      mixer       mtd      perf    reflect   top             ver
config     hardfault_log  motor_ramp  nshterm  pwm     sd_bench  topic_listener
dumpfile   led_control    motor_test  param    reboot  tests     usb_connected
user@workstation:~/src/Firmware$ 
```

## Directory nuttx-configs/

```sh
user@workstation:~/src/Firmware$ ls nuttx-configs/
aerocore2  esc35-v1       PX4_Config.mk  px4fmu-v4     px4nucleoF767ZI-v1     s2740vc-v1
aerofc-v1  mindpx-v2      px4esc-v1      px4fmu-v4pro  px4-same70xplained-v1  tap-v1
auav-x21   nxphlite-v3    px4flow-v2     px4fmu-v5     px4-stm32f4discovery   zubaxgnss-v1
crazyflie  px4cannode-v1  px4fmu-v2      px4io-v2      PX4_Warnings.mk
```

## Directory posix-configs/

```sh
user@workstation:~/src/Firmware$ ls posix-configs/
bebop  eagle  excelsior  ocpoc  rpi  SITL
user@workstation:~/src/Firmware$ 
```

```sh
user@workstation:~/src/Firmware$ nano posix-configs/SITL/init/rcS_gazebo_delta_wing
uorb start
param load
param set MAV_TYPE 1
param set SYS_AUTOSTART 3033
param set SYS_RESTART_TYPE 2
dataman start
param set BAT_N_CELLS 3
param set CAL_GYRO0_ID 2293768
param set CAL_ACC0_ID 1376264
param set CAL_ACC1_ID 1310728
param set CAL_MAG0_ID 196616
param set CAL_GYRO0_XOFF 0.01
param set CAL_ACC0_XOFF 0.01
param set CAL_ACC0_YOFF -0.01
param set CAL_ACC0_ZOFF 0.01
param set CAL_ACC0_XSCALE 1.01
param set CAL_ACC0_YSCALE 1.01
param set CAL_ACC0_ZSCALE 1.01
param set CAL_ACC1_XOFF 0.01
param set CAL_MAG0_XOFF 0.01
param set SENS_BOARD_ROT 8
param set SENS_DPRES_OFF 0.001
param set SENS_BOARD_X_OFF 0.000001
param set COM_RC_IN_MODE 1
param set NAV_DLL_ACT 2
param set NAV_ACC_RAD 15.0
param set FW_THR_IDLE 0.6
param set FS_GCS_ENABLE 2
replay tryapplyparams
simulator start -s
tone_alarm start
gyrosim start
accelsim start
barosim start
adcsim start
gpssim start
measairspeedsim start
pwm_out_sim mode_pwm
sensors start
commander start
navigator start
ekf2 start
fw_pos_control_l1 start
fw_att_control start
land_detector start fixedwing
mixer load /dev/pwm_output0 ../../../../ROMFS/sitl/mixers/delta_wing_sitl.main.mix
mavlink start -x -u 14556 -r 2000000
mavlink start -x -u 14557 -r 2000000 -m onboard -o 14540
mavlink stream -r 80 -s POSITION_TARGET_LOCAL_NED -u 14556
mavlink stream -r 80 -s LOCAL_POSITION_NED -u 14556
mavlink stream -r 80 -s GLOBAL_POSITION_INT -u 14556
mavlink stream -r 80 -s ATTITUDE -u 14556
mavlink stream -r 80 -s ATTITUDE_QUATERNION -u 14556
mavlink stream -r 80 -s ATTITUDE_TARGET -u 14556
mavlink stream -r 20 -s RC_CHANNELS -u 14556
mavlink stream -r 250 -s HIGHRES_IMU -u 14556
mavlink stream -r 10 -s OPTICAL_FLOW_RAD -u 14556
logger start -e -t
mavlink boot_complete
replay trystart
```

## Directory Images/

```sh
user@workstation:~/src/Firmware$ cat Images/aerocore2.prototype 
{
    "board_id": 98,
    "magic": "AeroCore2",
    "description": "Firmware for the Gumstix AeroCore2 board",
    "image": "",
    "build_time": 0,
    "summary": "AEROCORE2",
    "version": "0.1",
    "image_size": 0,
    "git_identity": "",
    "board_revision": 0
}
user@workstation:~/src/Firmware$ 
```

## Directory mavlink/

```sh
user@workstation:~/src/Firmware$ ls mavlink/include/mavlink/v2.0/
ardupilotmega  checksum.h   mavlink_conversions.h  mavlink_sha256.h     minimal     standard
ASLUAV         common       mavlink_get_info.h     mavlink_types.h      protocol.h  test
autoquad       matrixpilot  mavlink_helpers.h      message_definitions  slugs       uAvionix
user@workstation:~/src/Firmware$ 
```


## Command Line

```sh
pxh> mavlink help

### Description
This module implements the MAVLink protocol, which can be used on a Serial link or UDP network connection.
It communicates with the system via uORB: some messages are directly handled in the module (eg. mission
protocol), others are published via uORB (eg. vehicle_command).

Streams are used to send periodic messages with a specific rate, such as the vehicle attitude.
When starting the mavlink instance, a mode can be specified, which defines the set of enabled streams with their rates.
For a running instance, streams can be configured via `mavlink stream` command.

There can be multiple independent instances of the module, each connected to one serial device or network port.

### Implementation
The implementation uses 2 threads, a sending and a receiving thread. The sender runs at a fixed rate and dynamically
reduces the rates of the streams if the combined bandwidth is higher than the configured rate (`-r`) or the
physical link becomes saturated. This can be checked with `mavlink status`, see if `rate mult` is less than 1.

**Careful**: some of the data is accessed and modified from both threads, so when changing code or extend the
functionality, this needs to be take into account, in order to avoid race conditions and corrupt data.

### Examples
Start mavlink on ttyS1 serial with baudrate 921600 and maximum sending rate of 80kB/s:
$ mavlink start -d /dev/ttyS1 -b 921600 -m onboard -r 80000

Start mavlink on UDP port 14556 and enable the HIGHRES_IMU message with 50Hz:
$ mavlink start -u 14556 -r 1000000
$ mavlink stream -u 14556 -s HIGHRES_IMU -r 50
...
```

```sh
pxh> sensors help

### Description
The sensors module is central to the whole system. It takes low-level output from drivers, turns
it into a more usable form, and publishes it for the rest of the system.

The provided functionality includes:
- Read the output from the sensor drivers (`sensor_gyro`, etc.).
  If there are multiple of the same type, do voting and failover handling.
  Then apply the board rotation and temperature calibration (if enabled). And finally publish the data; one of the
  topics is `sensor_combined`, used by many parts of the system.
- Do RC channel mapping: read the raw input channels (`input_rc`), then apply the calibration, map the RC channels
  to the configured channels & mode switches, low-pass filter, and then publish as `rc_channels` and
  `manual_control_setpoint`.
- Read the output from the ADC driver (via ioctl interface) and publish `battery_status`.
- Make sure the sensor drivers get the updated calibration parameters (scale & offset) when the parameters change or
  on startup. The sensor drivers use the ioctl interface for parameter updates. For this to work properly, the
  sensor drivers must already be running when `sensors` is started.
- Do preflight sensor consistency checks and publish the `sensor_preflight` topic.

### Implementation
It runs in its own thread and polls on the currently selected gyro topic.

Usage: sensors <command> [arguments...]
 Commands:

   start
     [-h]        Start in HIL mode

   stop

   status        print status info
pxh> sensors status
INFO  [sensors] gyro status:
INFO  [lib__ecl] validator: best: 0, prev best: 0, failsafe: NO (0 events)
INFO  [lib__ecl] sensor #0, prio: 100, state: OK
INFO  [lib__ecl] 	val:   0.0039, lp:  -0.0002 mean dev:   0.0000 RMS:   0.0065 conf:   1.0000
INFO  [lib__ecl] 	val:   0.0048, lp:  -0.0004 mean dev:   0.0000 RMS:   0.0065 conf:   1.0000
INFO  [lib__ecl] 	val:  -0.0002, lp:   0.0005 mean dev:  -0.0000 RMS:   0.0065 conf:   1.0000
INFO  [sensors] accel status:
INFO  [lib__ecl] validator: best: 0, prev best: 0, failsafe: NO (0 events)
INFO  [lib__ecl] sensor #0, prio: 100, state: OK
INFO  [lib__ecl] 	val:  -0.0219, lp:  -0.0011 mean dev:   0.0000 RMS:   0.0327 conf:   1.0000
INFO  [lib__ecl] 	val:  -0.0463, lp:  -0.0001 mean dev:   0.0001 RMS:   0.0326 conf:   1.0000
INFO  [lib__ecl] 	val:  -9.8411, lp:  -9.8098 mean dev:  -0.0001 RMS:   0.0327 conf:   1.0000
INFO  [lib__ecl] sensor #1, prio: 75, state: OK
INFO  [lib__ecl] 	val:  -0.1093, lp:   0.0007 mean dev:  -0.0002 RMS:   0.0499 conf:   1.0000
INFO  [lib__ecl] 	val:  -0.0478, lp:  -0.0015 mean dev:   0.0001 RMS:   0.0505 conf:   1.0000
INFO  [lib__ecl] 	val:  -9.7975, lp:  -9.8113 mean dev:  -0.0001 RMS:   0.0503 conf:   1.0000
INFO  [sensors] mag status:
INFO  [lib__ecl] validator: best: 0, prev best: 0, failsafe: NO (0 events)
INFO  [lib__ecl] sensor #0, prio: 50, state: OK
INFO  [lib__ecl] 	val:   0.8874, lp:   0.8977 mean dev:  -0.0000 RMS:   0.0050 conf:   1.0000
INFO  [lib__ecl] 	val:   0.0264, lp:   0.0331 mean dev:   0.0000 RMS:   0.0050 conf:   1.0000
INFO  [lib__ecl] 	val:   1.7816, lp:   1.7868 mean dev:  -0.0000 RMS:   0.0050 conf:   1.0000
INFO  [sensors] baro status:
INFO  [lib__ecl] validator: best: 0, prev best: 0, failsafe: NO (0 events)
INFO  [lib__ecl] sensor #0, prio: 75, state: OK
INFO  [lib__ecl] 	val: 487.8885, lp: 487.9854 mean dev:  -0.0009 RMS:   0.1011 conf:   1.0000
INFO  [lib__ecl] 	val:   0.0000, lp:   0.0000 mean dev:   0.0000 RMS:   0.0000 conf:   1.0000
INFO  [lib__ecl] 	val:   0.0000, lp:   0.0000 mean dev:   0.0000 RMS:   0.0000 conf:   1.0000
INFO  [sensors] Temperature Compensation:
INFO  [sensors]  gyro: enabled: 0
INFO  [sensors]  accel: enabled: 0
INFO  [sensors]  baro: enabled: 0
INFO  [sensors] Airspeed status:
INFO  [lib__ecl] 	no data
pxh> 
```