# Server

```sh
user@server:~$ sudo apt-get install python3-pip
user@server:~$ sudo pip3 install homeassistant
```

```sh
user@server:/etc/init.d# wget https://raw.githubusercontent.com/home-assistant/home-assistant/dev/script/hass-daemon
--2016-10-24 03:02:12--  https://raw.githubusercontent.com/home-assistant/home-assistant/dev/script/hass-daemon
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.32.133
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|151.101.32.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2783 (2.7K) [text/plain]
Saving to: ‘hass-daemon’

100%[===========================================================================================================>] 2,783       --.-K/s   in 0s      

2016-10-24 03:02:12 (25.6 MB/s) - ‘hass-daemon’ saved [2783/2783]

user@server:/etc/init.d# sudo service hass-daemon start
hass-daemon: unrecognized service
user@server:/etc/init.d# chmod +x /etc/init.d/hass-daemon
user@server:/etc/init.d# sudo update-rc.d hass-daemon defaults
 Adding system startup for /etc/init.d/hass-daemon ...
   /etc/rc0.d/K20hass-daemon -> ../init.d/hass-daemon
   /etc/rc1.d/K20hass-daemon -> ../init.d/hass-daemon
   /etc/rc6.d/K20hass-daemon -> ../init.d/hass-daemon
   /etc/rc2.d/S20hass-daemon -> ../init.d/hass-daemon
   /etc/rc3.d/S20hass-daemon -> ../init.d/hass-daemon
   /etc/rc4.d/S20hass-daemon -> ../init.d/hass-daemon
   /etc/rc5.d/S20hass-daemon -> ../init.d/hass-daemon
user@server:/etc/init.d# sudo service hass-daemon install
Installing Home Assistant Daemon (hass-daemon)
chown: invalid user: ‘USER’
chown: invalid user: ‘USER’
user@server:/etc/init.d# nano hass-daemon 
user@server:/etc/init.d# sudo update-rc.d hass-daemon defaults
 System start/stop links for /etc/init.d/hass-daemon already exist.
user@server:/etc/init.d# sudo service hass-daemon install
Installing Home Assistant Daemon (hass-daemon)
user@server:/etc/init.d# 
```

```sh
user@server:~$ hass --open-ui
```

Go to http://192.168.1.70:8123/

```sh
user@server:~$ ls ~/.homeassistant
configuration.yaml  deps  home-assistant.db  home-assistant.log
```

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

# Mqtt Broker

```sh
user@server:~$ sudo apt-get update
user@server:~$ sudo apt-get install mosquitto
user@server:~$ sudo update-rc.d mosquitto defaults
user@server:~$ sudo /etc/init.d/mosquitto start
```

```sh
user@server:~$ sudo apt-get install mosquitto-clients
```
