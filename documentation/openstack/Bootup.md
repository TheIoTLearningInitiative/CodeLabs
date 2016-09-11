# Bootup

Intel® Edison Official Get Started Guide

- [Intel® Edison Board Get Started Guide](https://software.intel.com/en-us/iot/library/edison-getting-started)

Community Get Started Guides

- [Sparkfun Edison Getting Started](https://learn.sparkfun.com/tutorials/edison-getting-started-guide)
- [Instructables A Comprehensive Intel Edison Getting Started Guide](http://www.instructables.com/id/A-Comprehensive-Intel-Edison-Getting-Started-Guide/)
- [Codefoster Setting up an Intel Edison](http://www.codefoster.com/edison-setup/)
- [Edison Mini Breakout: The Real Getting Started Guide](http://blog.microcasts.tv/2014/10/16/edison-mini-breakout-the-real-getting-started-guide)

## Drivers Setup

Might be a difficult journey

- Windows® 64-bit
- Windows® 32-bit
- OS X®
- Linux® (Used when building BSP)

### Windows USB Serial Driver

So Intel Edison can be recognized as a COM port, please install [this driver](http://downloadmirror.intel.com/24909/eng/IntelEdisonDriverSetup1.2.1.exe)

[Other driver](http://www.ftdichip.com/Drivers/CDM/CDM21216_Setup.exe)

### Linux

```sh
    user@host:~$ dmesg
    [11940.538090] ftdi_sio 6-1:1.0: FTDI USB Serial Device converter detected
    [11940.538137] usb 6-1: Detected FT232RL
    [11940.538139] usb 6-1: Number of endpoints 2
    [11940.538142] usb 6-1: Endpoint 1 MaxPacketSize 64
    [11940.538144] usb 6-1: Endpoint 2 MaxPacketSize 64
    [11940.538147] usb 6-1: Setting MaxPacketSize 64
    [11940.540185] usb 6-1: FTDI USB Serial Device converter now attached to ttyUSB0
    user@host:~$ sudo minicom -D /dev/ttyUSB0 115200
```

### OS X

    :(

## Serial Communication Application

> PuTTY is an SSH and telnet client, developed originally by Simon Tatham for the Windows platform. PuTTY is open source software that is available with source code and is developed and supported by a group of volunteers.

Use [Putty](http://www.putty.org/)

> Minicom

## Yocto @ Edison

> Connect your development board (Intel Edison/Intel Galileo) to your Development Workstation using the registered COM / TTY device and boot up

```sh
Poky (Yocto Project Reference Distro) 1.7.3 edison ttyMFD2                      
                                                                                
edison login: root                                                              
Last login: Mon Jun  6 21:33:16 UTC 2016 on ttyMFD2
```

Check your kernel version

```sh
root@edison:~# uname -r                                                         
3.10.98-poky-edison+                                                            
root@edison:~# 

```

Configure your Edison WiFi network

```sh
root@edison:~# configure_edison --wifi
```

```sh
Configure Edison: WiFi Connection

Scanning: 1 seconds left  

0 :     Rescan for networks
1 :     Exit WiFi Setup
2 :     Manually input a hidden SSID
3 :     CACUNAT
4 :     INFINITUMf89t
5 :     INFINITUM09E845
6 :     17057Abril
7 :     INFINITUMndjj
8 :     INFINITUMfjph


Enter 0 to rescan for networks.
Enter 1 to exit.
Enter 2 to input a hidden network SSID.
Enter a number between 3 to 8 to choose one of the listed network SSIDs: 8
Is INFINITUMfjph correct? [Y or N]: Y
Password must be between 8 and 63 characters.
What is the network password?: **********
Initiating connection to INFINITUMfjph. Please wait...                          
Attempting to enable network access, please check 'wpa_cli status' after a minu.
Done. Please connect your laptop or PC to the same network as this device and g.
Warning: SSH is not yet enabled on the wireless interface. To enable SSH access.
root@edison:~# 
```

```sh
root@edison:~# ping -c 2 8.8.8.8                                                
PING 8.8.8.8 (8.8.8.8): 56 data bytes                                           
64 bytes from 8.8.8.8: seq=0 ttl=59 time=151.659 ms                             
64 bytes from 8.8.8.8: seq=1 ttl=59 time=43.713 ms                              
                                                                                
--- 8.8.8.8 ping statistics ---                                                 
2 packets transmitted, 2 packets received, 0% packet loss                       
round-trip min/avg/max = 43.713/97.686/151.659 ms                               
root@edison:~# 
```

Shutdown usb0 interface and check IP address assigned

```sh
    root@edison:~# ifconfig usb0 down
```

```sh
    root@edison:~# ifconfig
    lo        Link encap:Local Loopback  
              inet addr:127.0.0.1  Mask:255.0.0.0
              ...
              ...
    wlan      Link encap:Ethernet  HWaddr 00:1C:C0:AE:B5:E6  
              inet addr:192.168.1.74  Bcast:192.168.0.255  Mask:255.255.255.0
              ...
              ...
```

```sh
    root@edison:~# configure_edison --password
    Configure Edison: Device Password
    
    Enter a new password (leave empty to abort)
    This will be used to connect to the access point and login to the device.
    Password:       ********
    Please enter the password again:        ********
    First-time root password setup complete. Enabling SSH on WiFi interface.
    The device password has been changed.
```