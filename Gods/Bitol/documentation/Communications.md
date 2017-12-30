# Communications

> Communications between the flight stack and ground control currently use MAVLink. In future protocols like RTPS are expected to provide more configurable messaging between the drone, GCS, cloud, and between processes running on the vehicle. Other comms protocols are used at different layers within the platform.

- [PX4 Middleware](https://dev.px4.io/en/middleware/)

## Mavlink

> The Micro Air Vehicle Communication Protocol (MAVLink) is a lightweight, header-only message marshalling library for micro air vehicles. It is widely used for communicating commands and telemetry between ground stations and autopilots (it is also the protocol used by DroneKit to communicate with vehicles). The protocol is currently being updated to support signing/authentication and other features that are becoming increasingly important.

- [Mavlink Homepage](https://mavlink.io/en/)

## Dronecore

> DroneCore is the best way to integrate with PX4 over MAVLink! Use the simple core API to access vehicle information and control missions and movement. Extend the library with plugins to integrate with custom hardware or add new features. Run the library on mobile devices, companion computers and even the cloud. The sky's the limit!

- [Dronecore](http://dronecore.io/)

## UAVCAN

> UAVCAN is a lightweight protocol designed for reliable communication in aerospace and robotic applications via CAN bus. The specification and the reference implementation are open and free to use (MIT License).

- [UAVCAN Homepage](http://uavcan.org/)
- [UAVCAN Github Source Code](https://github.com/ArduPilot/uavcan)

## RTPS

> The DroneCode Messaging Working Group is currently evaluating middleware solutions for communication between GCS, drone, cloud, and between processes running on the vehicle. At time of writing, the WG is enabling this via the RTPS protocol, which is also being used by the ROS2 efforts from the OSRF.

- [RTPS Homepage](https://wiki.dronecode.org/workgroup/messaging/start)
- [Fast RTPS](https://github.com/eProsima/Fast-RTPS)

