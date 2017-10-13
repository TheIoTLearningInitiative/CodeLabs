# Bitol

> A sky god and one of the creator deities who participated in the last two attempts at creating humanity.

# Complete UAV solution

1. Flight-controller hardware
2. Autopilot software
3. Ground control station
4. Developer APIs for enhanced/advanced use cases.

Applications

- Cargo/delivery
- Surveying & inspections
- Fun
- Aerial photography
- Search, rescue, law enforcement
- Scientific research & exploration

The active Working Groups are:

- Camera API WG
- Code Quality WG
- Messaging WG
- Safety WG
- User experience (UX) WG
- Dronecode SDK WG

Links to archived Working Groups (Inactive):

- Airspace Management WG
- Autopilot Connector Definitions WG
- MAVLINK Camera WG
- Documentation WG

# Hardware

## Intel® Aero Ready to Fly Drone

- [Aerial Technology Overview](https://www.intel.com/content/www/us/en/technology-innovation/aerial-technology-overview.html)
- [Intel® Aero Ready to Fly Drone](https://click.intel.com/intel-aero-ready-to-fly-drone.html)
- [Intel® Aero Ready to Fly Drone Getting Started](https://www.intel.com/content/dam/support/us/en/documents/boardsandkits/aero/intel-aero-rtf-drone-getting-started.pdf)
- [Aero Wiki](https://GitHub.com/intel-aero)
- [Aero Wiki](https://github.com/intel-aero/meta-intel-aero/wiki)
  - About Intel Aero
  - Initial setup
  - First flight
  - Autonomous drone programming in Python
  - Autonomous drone programming with ROS
  - Computer Vision, 3D, Artificial Intelligence
  - Network and System Administration
  - Intel Aero Ecosystem

## Pixhawk

> Pixhawk is an independent, open-hardware project aiming at providing high-end autopilot hardware to the academic, hobby and industrial communities at low costs and high availability.

- [Pixhawk Homepage](https://pixhawk.org/start) 

# Communications

> Communications between the flight stack and ground control currently use MAVLink. In future protocols like RTPS are expected to provide more configurable messaging between the drone, GCS, cloud, and between processes running on the vehicle. Other comms protocols are used at different layers within the platform.

## Mavlink

> The Micro Air Vehicle Communication Protocol (MAVLink) is a lightweight, header-only message marshalling library for micro air vehicles. It is widely used for communicating commands and telemetry between ground stations and autopilots (it is also the protocol used by DroneKit to communicate with vehicles). The protocol is currently being updated to support signing/authentication and other features that are becoming increasingly important.

- [Mavlink Homepage](https://mavlink.io/en/)

## Dronecore

> DroneCore is the best way to integrate with PX4 over MAVLink! Use the simple core API to access vehicle information and control missions and movement. Extend the library with plugins to integrate with custom hardware or add new features. Run the library on mobile devices, companion computers and even the cloud. The sky's the limit!

- [Dronecore](http://dronecore.io/)

## UAVCAN

> UAVCAN is a lightweight protocol designed for reliable communication in aerospace and robotic applications via CAN bus. The specification and the reference implementation are open and free to use (MIT License).

- [UAVCAN Homepage](http://uavcan.org/)

## RTPS

> The DroneCode Messaging Working Group is currently evaluating middleware solutions for communication between GCS, drone, cloud, and between processes running on the vehicle. At time of writing, the WG is enabling this via the RTPS protocol, which is also being used by the ROS2 efforts from the OSRF.

- [RTPS Homepage](https://wiki.dronecode.org/workgroup/messaging/start)

# Flight Stacks

## Paparazzi UAV

- [Paparazzi UAV Homepage](http://wiki.paparazziuav.org/wiki/Main_Page)

## Ardupilot

> ArduPilot is a open source autopilot system supporting multi-copters, traditional helicopters, fixed wing aircraft and rovers. The source code is developed by a large community of professionals and enthusiasts. New developers are always welcome! The best way to start is by joining the Developer Team Forum, which is open to all and chock-full of daily development goodness

- [Ardupilot Homepage](http://ardupilot.org/)

## Px4

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

## Setup

### Dependencies

```sh
pyme@pyme-desktop:~/Drones$ sudo apt update
pyme@pyme-desktop:~/Drones$ sudo apt install git
pyme@pyme-desktop:~/Drones$ sudo apt install python-pip
```

### PX4

```sh
pyme@pyme-desktop:~/Drones$ sudo sh ubuntu_sim_nuttx.sh
```

### QGroundControl

```sh
pyme@pyme-desktop:~/Drones$ wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage
```

### Technology

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
xe1gyq@kali:~/Drones/Px4/Firmware$ make posix gazebo_typhoon_h480
xe1gyq@kali:~/Downloads/qgroundcontrol$ sh qgroundcontrol-start.sh
```

## uaventure

- [uaventure Homepage](http://uaventure.com/)

# Developer APIs

> Developer APIs enable developers to create advanced flight modes outside of the flight stack. The main developer APIs are discussed below.

## Robot Operating System (ROS)

> ROS is a partner/complementary project of Dronecode that delivers a set of software libraries and developer tools for building and simulating robot applications.  PX4 can integrate with ROS via two different APIs — either where native PX4 applications are ROS nodes or where ROS nodes communicate with PX4 via MAVLink (using mavros, a MAVLink to ROS gateway, with UDP proxy for Ground Control Station).

## DroneKit

> DroneKit is a set of developer tools for drones. It includes Python and Android APIs that automatically aggregate drone information sent over MAVLink and simplify sending common commands over MAVLink. There is also a separate tool for analysing different types of logs.

- [DroneKit Homepage](http://python.dronekit.io/about/index.html)

```sh
$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0
```

# DroneCore

- [DroneCore Homepage](https://docs.dronecore.io/en/)

# Software

## NuttX Real-Time Operating System

> NuttX is a real-time operating system (RTOS) with an emphasis on standards compliance and small footprint. Scalable from 8-bit to 32-bit microcontroller environments, the primary governing standards in NuttX are Posix and ANSI standards.

- [NuttX Homepage](http://nuttx.org/)

## QGroundControl

> Intuitive and Powerful Ground Control Station for PX4 and ArduPilot UAVs. QGroundControl provides full flight control and mission planning for any MAVLink enabled drone. It provides configuration for ArduPilot or PX4 Pro powered vehicles. Its primary goal is ease of use for first time and professional users. All the code is open-source source, so you can contribute and evolve it as you want.

- [QGroundControl Homepage](http://qgroundcontrol.com/)
- [QGroundControl User Guide](https://docs.qgroundcontrol.com/en/)
- [QGroundControl Developer Guide](https://dev.qgroundcontrol.com/en/)
- [QGroundControl Github Source Code](https://github.com/mavlink/qgroundcontrol)

Architecture

- Platforms
  - QGroundControl runs on Windows, OS X, Linux, iOS and Android
- Autopilots
  - Supports multiple autopilots: PX4 Pro, ArduPilot or any vehicle that communicates using the MAVLink protocol
- Vehicles
  - Works with all vehicle types supported by PX4 Pro and ArduPilot (multi-rotor, fixed-wing, VTOL, etc.)

## Camera Streaming Daemon

- [Camera Streaming Daemon](https://github.com/01org/camera-streaming-daemon)

# Projects

## Dronecode

> The Dronecode project delivers a collaborative and shared Open Source Platform for unmanned aerial vehicles (UAVS). A neutral place where industry and community developers can contribute technology in order to reduce costs and time to market

- [Dronecode](https://www.dronecode.org/)

# Drone Application Development SDK

> This SDK should allow developers to create drone “applications” that can run on mobile devices (tablets, phones) and on-board companion computers, and that can also seamlessly integrate drones with cloud-based services. The SDK should ideally support Python, C++ and Android Developer APIs, including options like ROS, Cloud etc., and also integration with any simulation environment.

## Mobile SDK

- DJI
- Parrot
- FlytOS
- DroneKit

## OnBoard SDK

- DJI
- Parrot
- FlytOS
- DroneKit
- AirLib, Microsoft AirSim

# Companies

## AirMap

> The airspace intelligence platform for drones and drone operators.

- [AirMap Homepage](https://www.airmap.com/)

## SitOnAir

> Unlocking connected aircraft value. We empower the air transport industry through tailored ‘nose-to-tail’ connectivity solutions that deliver true value. This is connected aircraft innovation you can trust

- [SitOnAir Homepage](http://www.sitaonair.aero/)

## Drone Smith

- http://dronesmith.io/
- https://www.hackster.io/dronesmith/drone-app-radiation-detection-04feb7
- https://www.facebook.com/dronesmithtech/videos/1727505054244547/


- https://404warehouse.net/2016/07/11/px4-software-in-the-loopsitl-simulation-on-gazebo/
- https://dev.px4.io/en/simulation/gazebo.html

## Sky Drone

- [Sky Drone Homepage](https://www.skydrone.aero/)

## ToInstall Gazebo

- http://diydrones.com/profiles/blogs/idiot-s-guide-to-dronekit-python-a-journey-to-whoz-chillin

## ToInstall FlyTBase

- flytbase.com
- https://www.youtube.com/watch?v=ly424ZqgOTg

### Linux

1. Install Docker
2. Install QGC

### cloud

1. https://flytbase.com/cloud/
https://github.com/UAVenture



# AirSim

> Open source simulator based on Unreal Engine for autonomous vehicles from Microsoft AI & Research

- [AirSim](https://github.com/Microsoft/AirSim/blob/master/docs/build_linux.md)

- skydrone https://www.skydrone.aero/

# Intel

- [Aerial Technology Overview](https://www.intel.com/content/www/us/en/technology-innovation/aerial-technology-overview.html)

- [Intel® Aero Ready to Fly Drone](https://click.intel.com/intel-aero-ready-to-fly-drone.html)
- [Intel® Aero Ready to Fly Drone Getting Started](https://www.intel.com/content/dam/support/us/en/documents/boardsandkits/aero/intel-aero-rtf-drone-getting-started.pdf)
- [Aero Wiki](https://GitHub.com/intel-aero)
- [Aero Wiki](https://github.com/intel-aero/meta-intel-aero/wiki)
  - About Intel Aero
  - Initial setup
  - First flight
  - Autonomous drone programming in Python
  - Autonomous drone programming with ROS
  - Computer Vision, 3D, Artificial Intelligence
  - Network and System Administration
  - Intel Aero Ecosystem
  - 
- [Aero Source Code](https://github.com/intel-aero/meta-intel-aero)
- [Aero Technical Support](https://communities.intel.com/community/tech/intel-aero)
- [Intel® RealSense™ Technology](https://software.intel.com/en-us/forums/realsense)
- [Video Preview of the Aero Ready to Fly Drone](https://software.intel.com/en-us/videos/preview-of-the-intel-aero-ready-to-fly-drone)
- [Video Introduction to the Aero Compute Board and Vision Accessory Kit](https://software.intel.com/en-us/videos/introduction-to-the-intel-aero-compute-board-and-vision-accessory-kit-for-uavs)
- Set Up a Simulation Environment with the Intel® Aero Compute Board Developer Guide
- [What is the Intel® Aero Platform for UAVs](https://software.intel.com/en-us/articles/what-is-the-intel-aero-platform-for-uavs)
- https://www.intel.com/content/www/us/en/drones/aero-ready-to-fly-start-guide.html

