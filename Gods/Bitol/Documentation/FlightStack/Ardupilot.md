# Ardupilot

> Hardware - The embedded systems and peripheral sensors that act as the vehicle’s brain, eyes, ears, etc. Almost any mobile machine can be transformed into a robot, by simply integrating a small hardware package into it. [Homepage](http://ardupilot.org/ardupilot/)

> Firmware- The “skill set” code running on the hardware, which configures it for the kind of vehicle you’ve put it in. You choose the firmware and vehicle that match your mission: Plane, Copter, Rover... The choice is yours – one autopilot for any mission. An easy firmware update is all it takes to repurpose your hardware into a different role. [Homepage](http://ardupilot.org/ardupilot/)

> Software- Your interface to the hardware. Initial set-up, configuration, and testing. Mission-planning/operation, and post-mission analysis. Point-and-click intuitive interaction with your hardware, or advanced custom scripting for niche mission profiles. Options are everything with ArduPilot. [Homepage](http://ardupilot.org/ardupilot/)

> -Farming industries is starting adapt on autonomous vehicles and ArduPilot is leading platform when creating small or big autonomous vehicles._ [Autonomous Harvesting Tractor](http://ardupilot.org/casestudies/case-automatic-tractor)

- [1](https://wiki.dronecode.org/_media/d02.ardupilot_overview_-_andrew_tridgell.pdf)

# Community

> _Community is what really sets ArduPilot apart from the closed-source offerings in the market. An area for open discourse on the ArduPilot projects direction between developers and its customers. Here are some of the places you can find ardupilot users and developers._

> __Commercial Support__ _We are proud to provide the following list of individuals and companies who can provide commercial support for ArduPilot. We hope this will help you get the most out of the ArduPilot project._ [Ardupilot ](http://ardupilot.org/planner/docs/common-commercial-support.html)

```sh
user@workstation:~/src/ardupilot/$ 
```

```sh
user@workstation:~/src/ardupilot$ 
```

```sh
user@workstation:~/src/ardupilot/ArduPlane$ sim_vehicle.py -w
SIM_VEHICLE: Start
SIM_VEHICLE: Killing tasks
SIM_VEHICLE: Starting up at -35.363261,149.165230,584,353 (CMAC)
SIM_VEHICLE: WAF build
SIM_VEHICLE: Configure waf
SIM_VEHICLE: "/home/user/src/ardupilot/modules/waf/waf-light" "configure" "--board" "sitl"
Setting top to                           : /home/user/src/ardupilot 
Setting out to                           : /home/user/src/ardupilot/build 
Autoconfiguration                        : enabled 
Setting board to                         : sitl 
Checking for 'g++' (C++ compiler)        : /usr/lib/ccache/g++ 
Checking for 'gcc' (C compiler)          : /usr/lib/ccache/gcc 
Checking for need to link with librt     : not necessary 
Checking for HAVE_CMATH_ISFINITE         : yes 
Checking for HAVE_CMATH_ISINF            : yes 
Checking for HAVE_CMATH_ISNAN            : yes 
Checking for NEED_CMATH_ISFINITE_STD_NAMESPACE : yes 
Checking for NEED_CMATH_ISINF_STD_NAMESPACE    : yes 
Checking for NEED_CMATH_ISNAN_STD_NAMESPACE    : yes 
Checking for header endian.h                   : yes 
Checking for header byteswap.h                 : yes 
Checking for program 'python'                  : /usr/bin/python 
Checking for python version >= 2.7.0           : 2.7.12 
Checking for program 'python'                  : /usr/bin/python 
Checking for python version >= 2.7.0           : 2.7.12 
Source is git repository                       : yes 
Update submodules                              : yes 
Checking for program 'git'                     : /usr/bin/git 
Checking for program 'size'                    : /usr/bin/size 
Benchmarks                                     : disabled 
Unit tests                                     : enabled 
Checking for program 'rsync'                   : /usr/bin/rsync 
'configure' finished successfully (0.470s)
SIM_VEHICLE: Building
SIM_VEHICLE: "/home/user/src/ardupilot/modules/waf/waf-light" "build" "--target" "bin/arduplane"
Waf: Entering directory `/home/user/src/ardupilot/build/sitl'
Waf: Leaving directory `/home/user/src/ardupilot/build/sitl'

BUILD SUMMARY
Build directory: /home/user/src/ardupilot/build/sitl
Target         Text     Data  BSS    Total  
--------------------------------------------
bin/arduplane  1577455  1938  38624  1618017

Build commands will be stored in build/sitl/compile_commands.json
'build' finished successfully (1.823s)
SIM_VEHICLE: Using defaults from (/home/user/src/ardupilot/Tools/autotest/default_params/plane.parm)
SIM_VEHICLE: Run ArduPlane
SIM_VEHICLE: "/home/user/src/ardupilot/Tools/autotest/run_in_terminal_window.sh" "ArduPlane" "/home/user/src/ardupilot/build/sitl/bin/arduplane" "-S" "-I0" "--home" "-35.363261,149.165230,584,353" "-w" "--model" "plane" "--speedup" "1" "--defaults" "/home/user/src/ardupilot/Tools/autotest/default_params/plane.parm"
SIM_VEHICLE: Run MavProxy
SIM_VEHICLE: "mavproxy.py" "--master" "tcp:127.0.0.1:5760" "--sitl" "127.0.0.1:5501" "--out" "127.0.0.1:14550" "--out" "127.0.0.1:14551"
RiTW: Starting ArduPlane : /home/user/src/ardupilot/build/sitl/bin/arduplane -S -I0 --home -35.363261,149.165230,584,353 -w --model plane --speedup 1 --defaults /home/user/src/ardupilot/Tools/autotest/default_params/plane.parm
Connect tcp:127.0.0.1:5760 source_system=255
Log Directory: 
Telemetry log: mav.tlog
MAV> Waiting for heartbeat from tcp:127.0.0.1:5760


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
MANUAL> APM: EKF2 IMU0 initial yaw alignment complete
APM: EKF2 IMU1 initial yaw alignment complete
APM: Airspeed sensor calibrated
Mode MANUAL

MANUAL> APM: EKF2 IMU0 tilt alignment complete
APM: EKF2 IMU1 tilt alignment complete

MANUAL> AP

```