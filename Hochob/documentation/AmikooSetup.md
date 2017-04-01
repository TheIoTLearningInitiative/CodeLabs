# Setup

```sh
[  OK  ] Started Redis Server.

Poky (Yocto Project Reference Distro) 1.7.3 edison ttyMFD2

edison login: 
```

# Password

Set "inteledison" as password

```sh
root@edison:~# configure_edison --password

Configure Edison: Device Password

Enter a new password (leave empty to abort)
This will be used to connect to the access point and login to the device.
Password:       ******
Please enter the password again:        ******

The device password must be between 8 and 63 characters long. Please try again.

Enter a new password (leave empty to abort)
This will be used to connect to the access point and login to the device.
Password:       ***********
Please enter the password again:        ***********
First-time root password setup complete. Enabling SSH on WiFi interface.
The device password has been changed.

root@edison:~# 
```

# WiFi

```sh
root@edison:~# configure_edison --wifi

Configure Edison: WiFi Connection

Scanning: 1 seconds left  

0 :     Rescan for networks
1 :     Exit WiFi Setup
2 :     Manually input a hidden SSID
3 :     Guest
..
10 :    IOT-Lab
11 :    HP-Print-45-Officejet Pro 8600


Enter 0 to rescan for networks.
Enter 1 to exit.
Enter 2 to input a hidden network SSID.
Enter a number between 3 to 11 to choose one of the listed network SSIDs: 
Is IOT-Lab correct? [Y or N]: Y
Password must be between 8 and 63 characters.
What is the network password?: *****************
Initiating connection to IOT-Lab. Please wait...
Attempting to enable network access, please check 'wpa_cli status' after a minute to confirm.
Done. Please connect your laptop or PC to the same network as this device and go to http://192.168.1.130 or http://edison.local in your browser.
```
