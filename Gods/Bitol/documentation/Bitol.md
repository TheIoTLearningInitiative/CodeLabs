# Bitol

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

# Hardware

## Pixhawk

> Pixhawk is an independent, open-hardware project aiming at providing high-end autopilot hardware to the academic, hobby and industrial communities at low costs and high availability.

- [Pixhawk Homepage](https://pixhawk.org/start) 

# Communications

> Communications between the flight stack and ground control currently use MAVLink. In future protocols like RTPS are expected to provide more configurable messaging between the drone, GCS, cloud, and between processes running on the vehicle. Other comms protocols are used at different layers within the platform.

## Mavlink

> The Micro Air Vehicle Communication Protocol (MAVLink) is a lightweight, header-only message marshalling library for micro air vehicles. It is widely used for communicating commands and telemetry between ground stations and autopilots (it is also the protocol used by DroneKit to communicate with vehicles). The protocol is currently being updated to support signing/authentication and other features that are becoming increasingly important.

- [Mavlink Homepage](https://mavlink.io/en/)

## UAVCAN

> UAVCAN is a lightweight protocol designed for reliable communication in aerospace and robotic applications via CAN bus. The specification and the reference implementation are open and free to use (MIT License).

- [UAVCAN Homepage](http://uavcan.org/)

## RTPS

> The DroneCode Messaging Working Group is currently evaluating middleware solutions for communication between GCS, drone, cloud, and between processes running on the vehicle. At time of writing, the WG is enabling this via the RTPS protocol, which is also being used by the ROS2 efforts from the OSRF.

- [RTPS Homepage](https://wiki.dronecode.org/workgroup/messaging/start)

# Fligth Stacks

## Ardupilot

> ArduPilot is a open source autopilot system supporting multi-copters, traditional helicopters, fixed wing aircraft and rovers. The source code is developed by a large community of professionals and enthusiasts. New developers are always welcome! The best way to start is by joining the Developer Team Forum, which is open to all and chock-full of daily development goodness

- [Ardupilot Homepage](http://ardupilot.org/)

## Px4

> The Professional Autopilot. PX4 powers any vehicle from racing and cargo drones through to ground vehicles. The powerful and uniquely flexible core of the Dronecode Platform is open-source, and available for you to use and customise as needed.

> PX4 is used in a wide range of use-cases, from consumer drones to industrial applications. It is also the leading research platform for drones and has been successfully applied to under water vehicles and boats.

- Open Source
- Full stack
- Flexible
- World Class Devs
- Membership++
- Community

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

# Developer APIs

> Developer APIs enable developers to create advanced flight modes outside of the flight stack. The main developer APIs are discussed below.

## Robot Operating System (ROS)



# Software

## NuttX Real-Time Operating System

> NuttX is a real-time operating system (RTOS) with an emphasis on standards compliance and small footprint. Scalable from 8-bit to 32-bit microcontroller environments, the primary governing standards in NuttX are Posix and ANSI standards.

- [NuttX Homepage](http://nuttx.org/)

# Dronecode

- [Dronecode](https://www.dronecode.org/)

## QGroundControl



- [QGroundControl Documentation](https://docs.qgroundcontrol.com/en/getting_started/download_and_install.html#ubuntu-linux)

## Drone Smith

- http://dronesmith.io/
- https://www.hackster.io/dronesmith/drone-app-radiation-detection-04feb7
- https://www.facebook.com/dronesmithtech/videos/1727505054244547/


- https://404warehouse.net/2016/07/11/px4-software-in-the-loopsitl-simulation-on-gazebo/
- https://dev.px4.io/en/simulation/gazebo.html

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

# Microsoft

- [AirSim](https://github.com/Microsoft/AirSim/blob/master/docs/build_linux.md)

- skydrone https://www.skydrone.aero/