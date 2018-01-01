# Shell

# Command Mavlink

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

# Command Sensors

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