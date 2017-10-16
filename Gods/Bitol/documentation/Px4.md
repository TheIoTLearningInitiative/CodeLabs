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

## Setup

### Dependencies

```sh
pyme@pyme-desktop:~/Drones$ sudo apt update
pyme@pyme-desktop:~/Drones$ sudo apt install git
pyme@pyme-desktop:~/Drones$ sudo apt install python-pip
```

### PX4 Source Code

```sh
user@workstation:~/Drones$ sudo sh ubuntu_sim_nuttx.sh
```

### QGroundControl App Image

```sh
user@workstation:~/Drones$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
user@workstation:~/Drones$ chmod +x QGroundControl.AppImage
user@workstation:~/Drones$ ./QGroundControl.AppImage
```

### PX4 Build

```sh
user@workstation:~/Drones$ git clone https://github.com/PX4/Firmware.git
user@workstation:~/Drones$ cd Firmware
user@workstation:~/Drones/Firmware$ make posix jmavsim
```

### Demo

```sh
user@workstation:~/Drones/Firmware$ make posix gazebo_typhoon_h480
user@workstation:~/Drones$ ./QGroundControl.AppImage
```



