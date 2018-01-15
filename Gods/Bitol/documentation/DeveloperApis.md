# Developer APIs

> Developer APIs enable developers to create advanced flight modes outside of the flight stack. The main developer APIs are discussed below.

# Drone Application Development SDK

> This SDK should allow developers to create drone “applications” that can run on mobile devices (tablets, phones) and on-board companion computers, and that can also seamlessly integrate drones with cloud-based services. The SDK should ideally support Python, C++ and Android Developer APIs, including options like ROS, Cloud etc., and also integration with any simulation environment.

Mobile SDK

- DJI
- Parrot
- FlytOS
- DroneKit

OnBoard SDK

- DJI
- Parrot
- FlytOS
- DroneKit
- AirLib, Microsoft AirSim

# Robot Operating System (ROS)

> ROS is a partner/complementary project of Dronecode that delivers a set of software libraries and developer tools for building and simulating robot applications.  PX4 can integrate with ROS via two different APIs — either where native PX4 applications are ROS nodes or where ROS nodes communicate with PX4 via MAVLink (using mavros, a MAVLink to ROS gateway, with UDP proxy for Ground Control Station).

- [HelloWorld](https://www.youtube.com/playlist?list=PL39WpgKDjDfVfiNVG47DBi93wsh2XHKVO)

# DroneCore

- [DroneCore Homepage](https://docs.dronecore.io/en/)

# FlytOS

> _FlytOS provides developers a vast array of language options when it comes to building their custom drone applications._ [Homepage](http://docs.flytbase.com/docs/FlytOS/Developers/BuildingCustomApps/OnboardPython.html#write-onboard-python)

- Onboard Apps
  - Onboard C++
  - Onboard Python
  - ROSCPP
  - ROSPY

- Remote Apps
  - Remote Web
  - Remote Mobile


# DroneKit

- [1](https://wiki.dronecode.org/_media/u10.droneapi_structure_and_usage_-_kevin_hester.pdf)
- [2](https://www.youtube.com/watch?v=C3kk4XMpFjs)

```sh
user@workstation:~$ git clone https://github.com/dronekit/dronekit-python.git
user@workstation:~$ cd dronekit-python
user@workstation:~/dronekit-python$ ls
appveyor.yml  CONTRIBUTING.md  dronekit.egg-info  requirements.txt  windows
build	      dist	       examples		  scripts
CHANGELOG.md  docs	       LICENSE		  setup.py
circle.yml    dronekit	       README.md	  Vagrantfile
```

```sh
user@workstation:~/dronekit-python$ cd examples
user@workstation:~/dronekit-python/examples$ 
```

```sh
user@workstation:~/dronekit-python/examples$ mavproxy.py --master=udp:127.0.0.1:6000
Connect udp:127.0.0.1:6000 source_system=255
Log Directory: 
Telemetry log: mav.tlog
Waiting for heartbeat from 127.0.0.1:6000
 MAV> 
```