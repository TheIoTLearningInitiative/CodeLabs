# Server

# Issues

- Make server not ask for password with sudo

# Devices

- Camera

```sh
hochob@server:~$ dmesg
...
[  588.834683] usb 2-1: new high-speed USB device number 5 using xhci_hcd
[  590.097213] usb 2-1: New USB device found, idVendor=046d, idProduct=082d
[  590.097218] usb 2-1: New USB device strings: Mfr=0, Product=2, SerialNumber=1
[  590.097221] usb 2-1: Product: HD Pro Webcam C920
[  590.097224] usb 2-1: SerialNumber: B3F6983F
[  590.110729] media: Linux media interface: v0.10
[  590.117591] Linux video capture interface: v2.00
[  590.296342] usbcore: registered new interface driver snd-usb-audio
[  590.296371] uvcvideo: Found UVC 1.00 device HD Pro Webcam C920 (046d:082d)
[  590.297581] uvcvideo 2-1:1.0: Entity type for entity Processing 3 was not initialized!
[  590.297591] uvcvideo 2-1:1.0: Entity type for entity Extension 6 was not initialized!
[  590.297598] uvcvideo 2-1:1.0: Entity type for entity Extension 12 was not initialized!
[  590.297603] uvcvideo 2-1:1.0: Entity type for entity Camera 1 was not initialized!
[  590.297609] uvcvideo 2-1:1.0: Entity type for entity Extension 8 was not initialized!
[  590.297615] uvcvideo 2-1:1.0: Entity type for entity Extension 9 was not initialized!
[  590.297620] uvcvideo 2-1:1.0: Entity type for entity Extension 10 was not initialized!
[  590.297626] uvcvideo 2-1:1.0: Entity type for entity Extension 11 was not initialized!
[  590.298032] input: HD Pro Webcam C920 as /devices/pci0000:00/0000:00:14.0/usb2/2-1/2-1:1.0/input/input15
[  590.298886] usbcore: registered new interface driver uvcvideo
[  590.298888] USB Video Class driver (1.1.1)
hochob@server:~$ 
```

# Operating System: Lubuntu

> Lubuntu is a fast, energy saving and lightweight variant of Ubuntu using LXDE. It is popular with PC and laptop users running on low-spec hardware. [Homepage](http://lubuntu.me/)

```sh
hochob@server:~$ /sbin/ifconfig
enp0s25: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether f4:4d:30:61:f4:2a  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 20  memory 0xaa100000-aa120000  

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1  (Local Loopback)
        RX packets 6178  bytes 3092794 (3.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6178  bytes 3092794 (3.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.138  netmask 255.255.255.0  broadcast 192.168.10.255
        inet6 fe80::a2a0:f0e3:8daf:9684  prefixlen 64  scopeid 0x20<link>
        ether 94:65:9c:a1:2c:6e  txqueuelen 1000  (Ethernet)
        RX packets 275175  bytes 364234831 (364.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 52986  bytes 7347203 (7.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

hochob@server:~$ 
```

# PATH

- Export directories into path to allow killing processes easily

# Power Management

- Preferences
  - Power Manager
    - Display
      - Handle Display Power Management
    - Security
      - Automatically Lock The Session Never

# Sudo Privileges

Not Working!

```sh
# User alias specification
hochob ALL=(ALL) NOPASSWD:ALL
```

# Extras

- Cheese, not able to interact through command line