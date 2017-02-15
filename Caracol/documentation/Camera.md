# Camera

> USB Video Device Class Webcam UVC-compatible. The USB video device class (also USB video class or UVC) is a USB device class that describes devices capable of streaming video like webcams, digital camcorders, transcoders, analog video converters and still-image cameras. [Wikipedia](https://en.wikipedia.org/wiki/List_of_USB_video_class_devices)

# Required Hardware

USB Camera HD Webcam

# Kernel Integration

## Kernel Display Message

```sh
root@edison:~# dmesg
...
[ 1857.820461] usb 1-1: new high-speed USB device number 3 using dwc3-host
[ 1858.108224] usb 1-1: New USB device found, idVendor=046d, idProduct=0826
[ 1858.108256] usb 1-1: New USB device strings: Mfr=0, Product=2, SerialNumber=1
[ 1858.108277] usb 1-1: Product: HD Webcam C525
[ 1858.108296] usb 1-1: SerialNumber: 99DB4F90
[ 1858.458453] set resolution quirk: cval->res = 384
[ 1858.568064] uvcvideo: Found UVC 1.00 device HD Webcam C525 (046d:0826)
[ 1858.582220] input: HD Webcam C525 as /devices/pci0000:00/0000:00:11.0/dwc3-host.2/usb1/1-1/1-1:1.2/input/input3
[ 1858.582896] usbcore: registered new interface driver uvcvideo
[ 1858.582915] USB Video Class driver (1.1.1)
```

```sh
root@edison:~# dmesg
...
[31587.442854] usb 1-1: new high-speed USB device number 4 using dwc3-host
[31587.498763] usb 1-1: New USB device found, idVendor=0458, idProduct=708a
[31587.498795] usb 1-1: New USB device strings: Mfr=1, Product=2, SerialNumber=0
[31587.498816] usb 1-1: Product: FaceCam 320X
[31587.498835] usb 1-1: Manufacturer: KYE Systems Corp.
[31587.510744] uvcvideo: Found UVC 1.00 device FaceCam 320X (0458:708a)
[31587.518655] input: FaceCam 320X as /devices/pci0000:00/0000:00:11.0/dwc3-host.2/usb1/1-1/1-1:1.0/input/input6
root@edison:~# 
```

```sh
Driver Info (not using libv4l2):
        Driver name   : uvcvideo
        Card type     : FaceCam 320X
        Bus info      : usb-dwc3-host.2-1
        Driver version: 3.10.98
        Capabilities  : 0x84000001
                Video Capture
                Streaming
                Device Capabilities
        Device Caps   : 0x04000001
                Video Capture
                Streaming
Priority: 2
Video input : 0 (Camera 1: ok)
Format Video Capture:
        Width/Height  : 640/480
        Pixel Format  : 'YUYV'
        Field         : None
        Bytes per Line: 1280
        Size Image    : 614400
        Colorspace    : SRGB
Crop Capability Video Capture:
        Bounds      : Left 0, Top 0, Width 640, Height 480
        Default     : Left 0, Top 0, Width 640, Height 480
        Pixel Aspect: 1/1
Streaming Parameters Video Capture:
        Capabilities     : timeperframe
        Frames per second: 5.000 (5/1)
        Read buffers     : 0
                     brightness (int)    : min=-255 max=255 step=1 default=0 va
lue=0
                       contrast (int)    : min=0 max=30 step=1 default=15 value
=15
                     saturation (int)    : min=0 max=127 step=1 default=32 valu
e=32
                            hue (int)    : min=-16000 max=16000 step=1 default=
0 value=0
 white_balance_temperature_auto (bool)   : default=1 value=1
                          gamma (int)    : min=20 max=250 step=1 default=100 va
lue=100
           power_line_frequency (menu)   : min=0 max=2 default=1 value=1
      white_balance_temperature (int)    : min=2800 max=6500 step=1 default=500
0 value=5000 flags=inactive
                      sharpness (int)    : min=0 max=31 step=1 default=16 value
=16
         backlight_compensation (int)    : min=0 max=2 step=1 default=0 value=0        
```

### Kernel Modules

```sh
    root@edison:~# lsmod
    Module                  Size  Used by
    uvcvideo               71516  0 
    videobuf2_vmalloc      13003  1 uvcvideo
    videobuf2_memops       13001  1 videobuf2_vmalloc
    videobuf2_core         37707  1 uvcvideo
    ...
    root@edison:~# find /lib/modules/* -name 'uvc'
    /lib/modules/3.10.17-poky-edison+/kernel/drivers/media/usb/uvc
```

## Userspace Interfaces

### DevFs

```sh
    root@edison:~# ls -l /dev/video0
    crw-rw----    1 root     video      81,   0 Mar 21 18:21 /dev/video0
```
