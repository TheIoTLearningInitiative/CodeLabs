# Photography

# Camera

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

# Dependencies

```sh
hochob@server:~$ sudo apt-get update
hochob@server:~$ sudo apt-get install libav-tools
hochob@server:~$ sudo apt-get install ffmpeg
hochob@server:~$ sudo apt-get install fswebcam
hochob@server:~$ sudo apt-get install git
```

# CodeLabs Github

```sh
hochob@server:~$ git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 14611, done.
remote: Compressing objects: 100% (170/170), done.
remote: Total 14611 (delta 88), reused 0 (delta 0), pack-reused 14398
Receiving objects: 100% (14611/14611), 10.13 MiB | 4.21 MiB/s, done.
Resolving deltas: 100% (8377/8377), done.
Checking connectivity... done.
hochob@server:~$ 
```

```sh
hochob@server:~$ cd CodeLabs/Hochob/Photography/
hochob@server:~/CodeLabs/Hochob/Photography$ ls
Media  selfie.py  xcamera.py
```

