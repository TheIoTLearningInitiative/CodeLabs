# WiFi

```sh
user@ubilinux:~/CodeLabs/Caracol$ sudo ifdown wlan0
Killed old client process
Internet Systems Consortium DHCP Client 4.3.1
Copyright 2004-2014 Internet Systems Consortium.
All rights reserved.
For info, please visit https://www.isc.org/software/dhcp/

Listening on LPF/wlan0/68:7f:74:ba:6d:7d
Sending on   LPF/wlan0/68:7f:74:ba:6d:7d
Sending on   Socket/fallback
```

```sh
user@ubilinux:~/CodeLabs/Caracol$ sudo ifup wlan0
Internet Systems Consortium DHCP Client 4.3.1
Copyright 2004-2014 Internet Systems Consortium.
All rights reserved.
For info, please visit https://www.isc.org/software/dhcp/

Listening on LPF/wlan0/68:7f:74:ba:6d:7d
Sending on   LPF/wlan0/68:7f:74:ba:6d:7d
Sending on   Socket/fallback
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 6
DHCPDISCOVER on wlan0 to 255.255.255.255 port 67 interval 10
DHCPREQUEST on wlan0 to 255.255.255.255 port 67
DHCPOFFER from 192.168.1.1
DHCPACK from 192.168.1.1
bound to 192.168.1.131 -- renewal in 38455 seconds.
user@ubilinux:~/CodeLabs/Caracol$ 
```