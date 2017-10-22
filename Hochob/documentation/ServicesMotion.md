# Motion

## USBMicro Motion

    
```sh
[624260.120017] usb 3-1: new low-speed USB device number 3 using xhci_hcd
[624260.253106] usb 3-1: New USB device found, idVendor=0de7, idProduct=01a5
[624260.253117] usb 3-1: New USB device strings: Mfr=1, Product=2, SerialNumber=3
[624260.253122] usb 3-1: Product: U421
[624260.253126] usb 3-1: Manufacturer: USBmicro, L.L.C.
[624260.253130] usb 3-1: SerialNumber: 160520105512
[624260.253466] usb 3-1: ep 0x81 - rounding interval to 64 microframes, ep desc says 80 microframes
[624260.257636] hid-generic 0003:0DE7:01A5.0004: hiddev0,hidraw3: USB HID v1.00 Device [USBmicro, L.L.C. U421] on usb-0000:00:14.0-1/input0
```

```sh
0de7  USBmicro
	01a5  U421 interface card
```

```sh
pyme@pyme-desktop:~/CodeLabs$ lsusb
Bus 002 Device 004: ID 046d:c05a Logitech, Inc. M90/M100 Optical Mouse
Bus 002 Device 003: ID 046d:c31c Logitech, Inc. Keyboard K120
Bus 002 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
Bus 002 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 001 Device 003: ID 8087:07dc Intel Corp. 
Bus 001 Device 002: ID 8087:0024 Intel Corp. Integrated Rate Matching Hub
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 003 Device 003: ID 0de7:01a5 USBmicro U421 interface card
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
pyme@pyme-desktop:~/CodeLabs$ 
```

```sh
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install libudev-dev
sudo apt install libdevice-usb-perl
```
http://andrew.daviel.org/usbmicro/


