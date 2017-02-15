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

## Kernel Modules

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

# Userspace Interfaces

## DevFs

```sh
    root@edison:~# ls -l /dev/video0
    crw-rw----    1 root     video      81,   0 Mar 21 18:21 /dev/video0
```
