

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

### Meta Intel Aero Wiki

- [Meta Intel Aero Wiki](https://github.com/intel-aero/meta-intel-aero/wiki)

#### Network
```sh
root@intel-aero:~# nmcli c down hotspot
root@intel-aero:~# nmcli c modify hotspot connection.autoconnect nonmcli dev wifi
root@intel-aero:~# nmcli dev wifi
*  SSID               MODE   CHAN  RATE       SIGNAL  BARS  SECURITY  
   --                 Infra  6     54 Mbit/s  95      ****            
*  INFINITUMfjph      Infra  6     54 Mbit/s  62      ***   WPA1 WPA2 
   AXTEL XTREMO-B63C  Infra  2     54 Mbit/s  45      **    WPA1 WPA2 
   INFINITUM5852_2.4  Infra  11    54 Mbit/s  45      **    WPA2      
   AXTEL XTREMO-B63C  Infra  2     54 Mbit/s  42      **    WPA1 WPA2 
   INFINITUM5852_5    Infra  100   54 Mbit/s  35      **    WPA2      
   INFINITUM1211      Infra  1     54 Mbit/s  32      **    WPA2      
   INFINITUM5014      Infra  11    54 Mbit/s  30      *     WPA2      
   INFINITUM09E845    Infra  11    54 Mbit/s  30      *     WPA2      
   INFINITUM92jc      Infra  8     54 Mbit/s  29      *     WPA1 WPA2 
root@intel-aero:~# nmcli dev wifi connect INFINITUMfjph password 12345678
```

#### Network :: SSH

```sh
user@workstation:~$ ssh root@192.168.1.81
```

#### Python

- [04 Autonomous Drone Programming in Python](https://github.com/intel-aero/meta-intel-aero/wiki/04-Autonomous-drone-programming-in-Python)

#### Lspci

```sh
root@intel-aero:~# lspci
00:00.0 Host bridge: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series SoC Transaction Register (rev 34)
00:02.0 VGA compatible controller: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCI Configuration Registers (rev 34)
00:03.0 Multimedia controller: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Imaging Unit (rev ff)
00:0b.0 Signal processing controller: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Power Management Controller (rev 34)
00:14.0 USB controller: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series USB xHCI Controller (rev 34)
00:16.0 USB controller: Intel Corporation Device 22b7 (rev 34)
00:1a.0 Encryption controller: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series Trusted Execution Engine (rev 34)
00:1c.0 PCI bridge: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCI Express Port #1 (rev 34)
00:1f.0 ISA bridge: Intel Corporation Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx Series PCU (rev 34)
01:00.0 Network controller: Intel Corporation Wireless 8260 (rev 3a)
root@intel-aero:~# 
```

#### Camera

```sh
root@intel-aero:~# dmesg | grep video
[    0.505882] Linux video capture interface: v2.00
[    4.574750] uvcvideo: Found UVC 1.10 device Intel RealSense 3D Camera R200 (8086:0a80)
[    4.580628] uvcvideo: Found UVC 1.10 device Intel RealSense 3D Camera R200 (8086:0a80)
[    4.583550] uvcvideo: Unable to create debugfs 2-2 directory.
[    4.584039] uvcvideo: Found UVC 1.10 device Intel RealSense 3D Camera R200 (8086:0a80)
[    4.601469] uvcvideo: Unable to create debugfs 2-2 directory.
[    4.607479] usbcore: registered new interface driver uvcvideo
[    5.216691] uvcvideo: Found UVC 1.10 device Intel RealSense 3D Camera R200 (8086:0a80)
[    5.218887] uvcvideo: Found UVC 1.10 device Intel RealSense 3D Camera R200 (8086:0a80)
[    5.220737] uvcvideo: Unable to create debugfs 2-3 directory.
[    5.221291] uvcvideo: Found UVC 1.10 device Intel RealSense 3D Camera R200 (8086:0a80)
[    5.223015] uvcvideo: Unable to create debugfs 2-3 directory.
```

```sh
root@intel-aero:~# cat /sys/class/video4linux/video0/name 
Intel RealSense 3D Camera R200
root@intel-aero:~# cat /sys/class/video4linux/video1/name 
ATOMISP ISP CAPTURE output
root@intel-aero:~# cat /sys/class/video4linux/video2/name 
ATOMISP ISP VIEWFINDER output
root@intel-aero:~# cat /sys/class/video4linux/video3/name 
ATOMISP ISP PREVIEW output
root@intel-aero:~# cat /sys/class/video4linux/video4/name 
ATOMISP ISP VIDEO output
root@intel-aero:~# cat /sys/class/video4linux/video5/name 
ATOMISP ISP ACC
root@intel-aero:~# cat /sys/class/video4linux/video6/name 
ATOMISP ISP MEMORY input
root@intel-aero:~# cat /sys/class/video4linux/video7/name 
ATOMISP ISP CAPTURE output
root@intel-aero:~# cat /sys/class/video4linux/video8/name 
ATOMISP ISP VIEWFINDER output
root@intel-aero:~# cat /sys/class/video4linux/video9/name 
ATOMISP ISP PREVIEW output
root@intel-aero:~# cat /sys/class/video4linux/video10/name 
ATOMISP ISP VIDEO output
root@intel-aero:~# cat /sys/class/video4linux/video11/name 
ATOMISP ISP ACC
root@intel-aero:~# cat /sys/class/video4linux/video12/name 
Intel RealSense 3D Camera R200
root@intel-aero:~# cat /sys/class/video4linux/video13/name 
Intel RealSense 3D Camera R200
```

Binary

```sh
root@intel-aero:~# /usr/bin/cpp-capture
```

Gstreamer

```sh
root@intel-aero:~# export DISPLAY=:0
root@intel-aero:~# gst-launch-1.0 v4l2src device=/dev/video13 ! xvimagesink
root@intel-aero:~# gst-launch-1.0 v4l2src device=/dev/video13 ! video/x-raw,width=640,height=480,framerate=30/1  ! xvimagesink
```

UDP

```sh
root@intel-aero:~# gst-launch-1.0 v4l2src device=/dev/video12 ! video/x-h264,width=1920,height=1080,framerate=24/1 ! h264parse ! rtph264pay ! udpsink host=192.168.1.79 port=5000
````

- [06 Computer Vision 3D AI](https://github.com/intel-aero/meta-intel-aero/wiki/06-Computer-Vision-3D-AI)
- [Code Sample: Broadcast RGB and Depth Data from an Intel® Aero Compute Board](https://software.intel.com/en-us/articles/intel-aero-realsense-streaming-rgb-depth-data)

##### x86

```sh
user@workstation:~$ dmesg
[15188.037023] usb 3-1: new high-speed USB device number 3 using xhci_hcd
[15189.275664] usb 3-1: New USB device found, idVendor=046d, idProduct=082d
[15189.275670] usb 3-1: New USB device strings: Mfr=0, Product=2, SerialNumber=1
[15189.275674] usb 3-1: Product: HD Pro Webcam C920
[15189.275677] usb 3-1: SerialNumber: B3F6983F
[15189.466747] media: Linux media interface: v0.10
[15189.490663] Linux video capture interface: v2.00
[15189.668967] usbcore: registered new interface driver snd-usb-audio
[15189.668970] uvcvideo: Found UVC 1.00 device HD Pro Webcam C920 (046d:082d)
[15189.673264] input: HD Pro Webcam C920 as /devices/pci0000:00/0000:00:14.0/usb3/3-1/3-1:1.0/input/input12
[15189.674771] usbcore: registered new interface driver uvcvideo
[15189.674775] USB Video Class driver (1.1.1)
```

```sh
user@workstation:~$ sudo apt-get install gstreamer1.0-plugins-bad
user@workstation:~$ sudo apt install gstreamer-tools
user@workstation:~$ gst-inspect | grep -i "rtsp"
user@workstation:~$ apt-cache search -n rtsp
gir1.2-gst-rtsp-server-1.0 - GObject introspection data for the GStreamer RTSP Server
kpartsplugin - Netscape-compatible plugin to embed KDE file-viewers into browser
libgstrtspserver-1.0-0 - GStreamer RTSP Server (shared library)
libgstrtspserver-1.0-0-dbg - GStreamer RTSP Server (debug symbols)
libgstrtspserver-1.0-dev - GStreamer RTSP Server (development files)
libgstrtspserver-1.0-doc - GStreamer RTSP Server (documentation)
nat-rtsp-dkms - Connection tracking and NAT support for RTSP
```

Good

```sh
user@workstation:~$ sudo apt install gstreamer1.0-plugins-ugly
user@workstation:~$ sudo apt install gstreamer1.0-libav
user@workstation:~$ gst-launch-1.0 videotestsrc pattern=ball ! x264enc ! rtph264pay ! udpsink host=127.0.0.1 port=5600
user@workstation:~$ gst-launch-1.0 udpsrc port=5600 caps='application/x-rtp, media=(string)video, clock-rate=(int)90000, encoding-name=(string)H264' ! rtph264depay ! avdec_h264 ! autovideosink fps-update-interval=1000 sync=false
```

```sh
user@workstation:~$ gst-launch-1.0 v4l2src device=/dev/video0 ! x264enc ! rtph264pay ! udpsink host=127.0.0.1 port=5600
user@workstation:~$ gst-launch-1.0 v4l2src device=/dev/video0 ! x264enc speed-preset=ultrafast tune=zerolatency byte-stream=true ! rtph264pay ! udpsink host=192.168.1.69 port=5600
```

[Csd](https://github.com/01org/camera-streaming-daemon)

```sh
user@workstation:~/Drones/camera-streaming-daemon$ ./csd -c config.sample
```

#### Input

```sh
root@intel-aero:~# dmesg | grep input
[    0.629357] input: Power Button as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0C0C:00/input/input0
[    0.629480] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/input/input1
[    1.585697] input: Video Bus as /devices/LNXSYSTM:00/LNXSYBUS:00/PNP0A08:00/LNXVIDEO:00/input/input2
[    3.251740] input: gpio-keys as /devices/platform/gpio-keys.2.auto/input/input3
[    3.646627] input: ov7251 as /devices/virtual/input/input4
[    4.607009] input: Intel RealSense 3D Camera R200 as /devices/pci0000:00/0000:00:14.0/usb2/2-4/2-4:1.4/input/input5
[    4.785202] input: HP USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-1/1-1.3/1-1.3:1.0/0003:03F0:0D4A.0001/input/input6
[    4.835549] hid-generic 0003:03F0:0D4A.0001: input: USB HID v1.10 Keyboard [HP USB Keyboard] on usb-0000:00:14.0-1.3/input0
[    4.840898] input: HP USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-1/1-1.3/1-1.3:1.1/0003:03F0:0D4A.0002/input/input7
[    4.891430] hid-generic 0003:03F0:0D4A.0002: input: USB HID v1.10 Device [HP USB Keyboard] on usb-0000:00:14.0-1.3/input1
[    5.045466] input: Logitech USB Optical Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-1/1-1.4/1-1.4:1.0/0003:046D:C077.0003/input/input8
[    5.045612] hid-generic 0003:046D:C077.0003: input: USB HID v1.11 Mouse [Logitech USB Optical Mouse] on usb-0000:00:14.0-1.4/input0
[    5.223221] input: Intel RealSense 3D Camera R200 as /devices/pci0000:00/0000:00:14.0/usb2/2-4/2-4:1.4/input/input9
[    5.885133] input: Logitech USB Optical Mouse as /devices/pci0000:00/0000:00:14.0/usb1/1-1/1-1.4/1-1.4:1.0/0003:046D:C077.0004/input/input10
[    5.885456] hid-generic 0003:046D:C077.0004: input: USB HID v1.11 Mouse [Logitech USB Optical Mouse] on usb-0000:00:14.0-1.4/input0
[    5.891143] input: HP USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-1/1-1.3/1-1.3:1.1/0003:03F0:0D4A.0005/input/input11
[    5.993137] hid-generic 0003:03F0:0D4A.0005: input: USB HID v1.10 Device [HP USB Keyboard] on usb-0000:00:14.0-1.3/input1
[    6.001700] input: HP USB Keyboard as /devices/pci0000:00/0000:00:14.0/usb1/1-1/1-1.3/1-1.3:1.0/0003:03F0:0D4A.0006/input/input12
[    6.053771] hid-generic 0003:03F0:0D4A.0006: input: USB HID v1.10 Keyboard [HP USB Keyboard] on usb-0000:00:14.0-1.3/input0

```

#### Yum Packages

- [Intel Aero package repository](https://download.01.org/aero/repo/1.5/)

```sh
root@intel-aero:~# rpm --import https://download.01.org/aero/repo/intel-aero-key.pub
root@intel-aero:~# yum install gstreamer1.0-plugins-good-rtsp
```

#### Mavlink

- [01org/mavlink-router](https://github.com/01org/mavlink-router/tree/master/examples)
- [90 (References) Enabling LTE Modems](https://github.com/intel-aero/meta-intel-aero/wiki/90-(References)-Enabling-LTE-Modems)

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
user@workstation:~/Drones$ sudo apt-get install python-pip python-dev
user@workstation:~/Drones$ sudo pip install dronekit
user@workstation:~/Drones$ sudo pip install dronekit-sitl
user@workstation:~/Drones$ sudo pip install dronekit-sitl -UI
user@workstation:~/Drones$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0
user@workstation:~/Drones$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0 --instance 0
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


