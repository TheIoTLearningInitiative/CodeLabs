# Setup

```sh
[  OK  ] Reached target Multi-User System.
         Starting Redis Server...
[  OK  ] Started Redis Server.

Poky (Yocto Project Reference Distro) 1.7.3 edison ttyMFD2

edison login: root
root@edison:~# 
```

```sh
root@edison:~# configure_edison --wifi
Configure Edison: WiFi Connection

Scanning: 9 seconds left

Configure Edison: WiFi Connection

Scanning: 1 seconds left

0 :     Rescan for networks
1 :     Exit WiFi Setup
2 :     Manually input a hidden SSID
3 :     Guest
..
11 :    IOT-Lab


Enter 0 to rescan for networks.
Enter 1 to exit.
Enter 2 to input a hidden network SSID.
Enter a number between 3 to 11 to choose one of the listed network SSIDs: 11
Is IOT-Lab correct? [Y or N]: Y
Password must be between 8 and 63 characters.
What is the network password?: *****************
Initiating connection to IOT-Lab. Please wait...
Attempting to enable network access, please check 'wpa_cli status' after a minute to confirm.
Done. Please connect your laptop or PC to the same network as this device and go to http://192.168.1.148 or http://edison.local in your browser.
Warning: SSH is not yet enabled on the wireless interface. To enable SSH access to this device via wireless run configure_edison --password first.
root@edison:~#


```

