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