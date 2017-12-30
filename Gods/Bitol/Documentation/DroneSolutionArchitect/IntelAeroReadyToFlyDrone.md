# Intel® Aero Ready to Fly Drone

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

## Meta Intel Aero Wiki

- [Meta Intel Aero Wiki](https://github.com/intel-aero/meta-intel-aero/wiki)

### Network
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

### Network :: SSH

```sh
user@workstation:~$ ssh root@192.168.1.81
```

### Python

- [04 Autonomous Drone Programming in Python](https://github.com/intel-aero/meta-intel-aero/wiki/04-Autonomous-drone-programming-in-Python)

### Lspci

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

### Camera

> __Intel® RealSense™__ A platform for implementing gesture-based human-computer interaction techniques. It consists of series of consumer grade 3D cameras together with an easy to use machine perception library that simplifies supporting the cameras for third-party software developers  [Intel® RealSense™](https://github.com/IntelRealSense)

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
- [OpenCV + Python tests using raspberry pi, camera module and usb cameras ](https://github.com/alduxvm/rpi-opencv)

#### x86

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

```
[Mavlink]
Port=14550
System_ID=42
Component_ID=100
Rtsp_Server_Addr=0.0.0.0
Broadcast_Addr=255.255.255.255

[Gstreamer]
Muxer=rtpjpegpay
Converter=videoconvert
Encoder=jpegenc

[V4L2]
Default=video100
```

```sh
user@workstation:~$ vlc rtsp://127.0.0.1:8554/video0
```

### Input

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

### Yum Packages

- [Intel Aero package repository](https://download.01.org/aero/repo/1.5/)

```sh
root@intel-aero:~# rpm --import https://download.01.org/aero/repo/intel-aero-key.pub
root@intel-aero:~# yum install gstreamer1.0-plugins-good-rtsp
```

### Mavlink

- [01org/mavlink-router](https://github.com/01org/mavlink-router/tree/master/examples)
- [90 (References) Enabling LTE Modems](https://github.com/intel-aero/meta-intel-aero/wiki/90-(References)-Enabling-LTE-Modems)

