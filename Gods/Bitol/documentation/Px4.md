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