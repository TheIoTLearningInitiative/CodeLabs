# SITL Simulator

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

