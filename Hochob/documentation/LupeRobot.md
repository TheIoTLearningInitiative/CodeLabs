# Lupe Robot

Shell Command

- https://community.home-assistant.io/t/passing-dynamic-info-to-shell-command/4212/2
- https://community.home-assistant.io/t/pass-value-to-command-line/587
- https://hub.docker.com/r/balloob/home-assistant/builds/bacthg3u3vo63yzw8jotjna/
- https://libraries.io/github/augmify/home-assistant

User Input

- https://github.com/PyUserInput/PyUserInput#dependencies
- https://home-assistant.io/components/keyboard/
- Sliders?
- https://github.com/PyUserInput/PyUserInput#dependencies

```sh
hochob@server:~$ sudo pip3 install pyuserinput
The directory '/home/hochob/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/hochob/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting pyuserinput
  Downloading PyUserInput-0.1.11.tar.gz
Collecting python-xlib (from pyuserinput)
  Downloading python_xlib-0.19-py2.py3-none-any.whl (119kB)
    100% |████████████████████████████████| 122kB 774kB/s 
Requirement already satisfied: six>=1.10.0 in /usr/lib/python3/dist-packages (from python-xlib->pyuserinput)
Installing collected packages: python-xlib, pyuserinput
  Running setup.py install for pyuserinput ... done
Successfully installed python-xlib-0.19 pyuserinput-0.1.11
hochob@server:~$ 
```

# Speech To Text

```sh
hochob@server:~/CodeLabs/ChichenItza/stt$ sudo apt-get install python-dev
```

```sh
hochob@server:~/CodeLabs/ChichenItza/stt$ sudo pip install SpeechRecognition
The directory '/home/hochob/.cache/pip/http' or its parent directory is not owned by the current user and the cache has been disabled. Please check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
The directory '/home/hochob/.cache/pip' or its parent directory is not owned by the current user and caching wheels has been disabled. check the permissions and owner of that directory. If executing pip with sudo, you may want sudo's -H flag.
Collecting SpeechRecognition
  Downloading SpeechRecognition-3.6.3-py2.py3-none-any.whl (31.8MB)
    100% |████████████████████████████████| 31.8MB 52kB/s 
Installing collected packages: SpeechRecognition
Successfully installed SpeechRecognition-3.6.3
hochob@server:~/CodeLabs/ChichenItza/stt$ 
```

# Sync

- https://ubuntuforums.org/showthread.php?t=1371622


```sh
cvlc --no-video-title-show --start-time 1 --stop-time 5 /home/hochob/Videos/BigBuckBunny.mp4 vlc://pause &
echo "hola mundo" | espeak -ves-la
cvlc vlc://play &
```

```sh
(cvlc --no-video-title-show --start-time 1 --stop-time 5 /home/hochob/Videos/BigBuckBunny.mp4 vlc://pause &) && (sleep 5 && cvlc vlc://play) &
echo "Hola a todos, bienvenidos a Intel" | espeak -v es-la -a 200
cvlc vlc://play &
```

```sh
#!/bin/sh

cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
echo "Hola a todos, bienvenidos a Intel" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
echo "Como pueden ver, por lo que traigo en el pecho" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
echo "Yo funciono con la plataforma Intel Édison, que es una de las tantas cosas que hacemos en Intel" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
echo "Espero que les guste el recorrido tanto como a mí" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
echo "Por lo pronto, le cederé la palabra a mis compañeros humanos" | espeak -v es-la -a 200
cvlc --no-video-title-show --fullscreen /home/hochob/Selfies/latest.mp4 &
echo "No, gracias a ti" | espeak -v es-la -a 200
pkill vlc
```

### Development

- https://www.gitbook.com/book/maquirog/rob/details
- https://github.com/maquirog/MotorsAndServos

## Eclipse Compilation

Same as Wrist Band

## Apps

- Putty
- Bluetooth SPP Tools Pro

## Intel IoT SDK

- [Installing the Intel® System Studio IoT Edition on Linux*](https://software.intel.com/en-us/node/705841)
   
```sh
pymelab@workstation:~/Descargas/l_iss_iot_p_2016.4.008$ export PATH=$PATH:/home/pymelab/Descargas/jdk1.8.0_121/bin/
pymelab@workstation:~/Descargas/l_iss_iot_p_2016.4.008$ /opt/intel/ISS/iss-iot-launcher
```

## Usability

•	Easy Guide (Pending)
o	Robot

### Connection
1. USB Cable
2. Mario Robot 192.168.1.102
   - Ssh: root, inteledison

3 modes

1. Arms, Legs
2. Predetermined Movements English
3. Predetermined Movements Spanish

MoveStop to restart Mario Robot

Files
1.	MotorsandServos Binary
2.	SPP-Loopback.py (Only Testing)
3.	btup.sh (Bluetooth Pair Process Always)
4.	SPP-pipe-out.py (Used by btup.sh)

OS Version

1.	User Yocto 2.1, 3.5 has an issue with Bluetooth

Sequence

1. Battery turn on arms (switch located at the right side of the robot)
   - Edison powered on
2. Turn on Speakers
3. Turn on Tablet Bluetooth
4. Run btup.sh under Intel Edison
   - Make btup.sh
5. Run Bluetooth SPP Pro under Tablet
   - Connect to Edison Bluetooth Device
   - Go to Keyboard Mode
6. Run MotorsandServos Binary under Intel Edison
7. Battery turn on legs (Left side of the robot)
8. Insert Heart
8. Tablet	

# Automation

- https://home-assistant.io/components/switch.command_line/
- https://www.youtube.com/watch?v=kaoLIE-LnRs
- https://home-assistant.io/components/alexa/


# One Time Configuration

## Pair Intel Edison and Mobile Device

```sh
Poky (Yocto Project Reference Distro) 1.6.1 edison ttyMFD2

edison login: root
Password:
root@edison:~# python SPP-loopback.py &
[1] 327
root@edison:~# rfkill unblock bluetooth
root@edison:~# bluetoothctl
[NEW] Controller 98:4F:EE:03:78:89 edison [default]
[NEW] Device 00:16:D4:FA:F6:20 Project Tango Tablet Developmen
[bluetooth]# agent KeyboardDisplay
Agent registered
[bluetooth]# default-agent
Default agent request successful
[bluetooth]# scan on
Discovery started
[CHG] Controller 98:4F:EE:03:78:89 Discovering: yes
[NEW] Device 40:78:6A:26:4A:C2 XT1008
[bluetooth]# pair 40:78:6A:26:4A:C2
Attempting to pair with 40:78:6A:26:4A:C2
[CHG] Device 40:78:6A:26:4A:C2 Connected: yes
Request confirmation
[agent] Confirm passkey 160981 (yes/no): yes
[CHG] Device 40:78:6A:26:4A:C2 Modalias: bluetooth:v001Dp1200d1436
[CHG] Device 40:78:6A:26:4A:C2 UUIDs:
        00001105-0000-1000-8000-00805f9b34fb
        0000110a-0000-1000-8000-00805f9b34fb
        0000110c-0000-1000-8000-00805f9b34fb
        0000110e-0000-1000-8000-00805f9b34fb
        00001112-0000-1000-8000-00805f9b34fb
        00001116-0000-1000-8000-00805f9b34fb
        0000111f-0000-1000-8000-00805f9b34fb
        0000112f-0000-1000-8000-00805f9b34fb
        00001132-0000-1000-8000-00805f9b34fb
        00001200-0000-1000-8000-00805f9b34fb
        00001800-0000-1000-8000-00805f9b34fb
        00001801-0000-1000-8000-00805f9b34fb
[CHG] Device 40:78:6A:26:4A:C2 Paired: yes
Pairing successful
[bluetooth]# discoverable on
Changing discoverable on succeeded
[CHG] Controller 98:4F:EE:03:78:89 Discoverable: yes
[bluetooth]# trust 40:78:6A:26:4A:C2
[CHG] Device 40:78:6A:26:4A:C2 Trusted: yes
Changing 40:78:6A:26:4A:C2 trust succeeded
[CHG] Device 40:78:6A:26:4A:C2 RSSI: -55
[bluetooth]# exit
```

## Start SPP pro and connect

```
root@edison:~# NewConnection(/org/bluez/hci0/dev_40_78_6A_26_4A_C2, 10)
root@edison:~# 
```

# Demo Configuration

## Configuration

```sh
root@edison:~# opkg update
root@edison:~# opkg install git
```


```sh
root@edison:~/CodeLabs/Hochob/LupeRobot# bluetoothctl 
root@edison:~/CodeLabs/Hochob/LupeRobot# cd /lib/systemd/system
root@edison:/lib/systemd/system# vi luperobot.service  
```

```sh
[Unit]
Description=Lupe Robot 
After=sys-subsystem-net-devices-%i.device
 
[Service]
ExecStart=/bin/bash /home/root/CodeLabs/Hochob/LupeRobot/bluetoothlt.sh  
Restart=always
RestartSec=10 
             
[Install]
Alias=LupeRobot 
WantedBy=multi-user.target
```

```sh
root@edison:/lib/systemd/system# systemctl daemon-reload
root@edison:/lib/systemd/system# systemctl --system enable luperobot
root@edison:/lib/systemd/system# systemctl start luperobot
```


```sh
root@edison:~# sdptool browse F8:CF:C5:D4:CB:BC | grep Channel
    Channel: 2
    Channel: 3
    Channel: 4
    Channel: 19
    Channel: 5
    Channel: 12
root@edison:~# 
```



## Bluetooth Configuration

```sh
root@edison:~# ./btup.sh 
[NEW] Controller 98:4F:EE:03:78:89 edison [default]
[NEW] Device 40:78:6A:26:4A:C2 XT1008
[NEW] Device F8:CF:C5:D4:CB:BC Nexus 6
[NEW] Device 00:16:D4:FA:F6:20 Project Tango Tablet Developmen
[bluetooth]# discoverable on
[bluetooth]# quit
[DEL] Controller 98:4F:EE:03:78:89 edison [default]
[NEW] Controller 98:4F:EE:03:78:89 edison [default]
[NEW] Device 40:78:6A:26:4A:C2 XT1008
[NEW] Device F8:CF:C5:D4:CB:BC Nexus 6
[NEW] Device 00:16:D4:FA:F6:20 Project Tango Tablet Developmen
[bluetooth]# connect 40:78:6A:26:4A:C2
Attempting to connect to 40:78:6A:26:4A:C2
[bluetooth]# quit
[DEL] Controller 98:4F:EE:03:78:89 edison [default]
root@edison:~# removing pipe file

making pipe

NewConnection(/org/bluez/hci0/dev_F8_CF_C5_D4_CB_BC, 10)
waiting to open pipe


root@edison:~# 
```

```
root@edison:~# ./MotorsAndServos 
1
enter recv loop

resetAll
servosStop
moveStop
Asking in 7... 
Asking in 6... 
Asking in 5... 
Asking in 4... 
Asking in 3... 
Asking in 2... 
Asking in 1... 
Go!
resetAll
servosStop
moveStop
Heart connected 
received: 00
```

# Backup

```sh
#!/bin/sh
rfkill unblock bluetooth
sleep 2
bluetoothctl << EOF
discoverable on
EOF
sleep 2
bluetoothctl << EOF
connect 40:78:6A:26:4A:C2
EOF
sleep 2

amixer -c 2 cset numid=5 30

python SPP-pipe-out.py &
```

```sh
root@edison:~# amixer -c 2 cset numid=5 30
numid=5,iface=MIXER,name='Speaker Playback Volume'
  ; type=INTEGER,access=rw---R--,values=2,min=0,max=37,step=0
  : values=30,30
  | dBminmax-min=-37.00dB,max=0.00dB
root@edison:~#
```


```sh
root@edison:~# bluetoothctl
[NEW] Controller 98:4F:EE:03:78:89 edison [default]
[NEW] Device 00:16:D4:FA:F6:20 Project Tango Tablet Developmen
[bluetooth]# scan on
Discovery started
[CHG] Controller 98:4F:EE:03:78:89 Discovering: yes
[bluetooth]# reboot
Invalid command
[NEW] Device 40:78:6A:26:4A:C2 XT1008
[bluetooth]# eit
Invalid command
[bluetooth]#
```


```sh
[DEL] Device 40:78:6A:26:4A:C2 XT1008
[NEW] Device 40:78:6A:26:4A:C2 XT1008
[bluetooth]# connect 40:78:6A:26:4A:C2
Attempting to connect to 40:78:6A:26:4A:C2
[CHG] Device 40:78:6A:26:4A:C2 Connected: yes
[CHG] Device 40:78:6A:26:4A:C2 Modalias: bluetooth:v001Dp1200d1436
[CHG] Device 40:78:6A:26:4A:C2 UUIDs:
        00001105-0000-1000-8000-00805f9b34fb
        0000110a-0000-1000-8000-00805f9b34fb
        0000110c-0000-1000-8000-00805f9b34fb
        0000110e-0000-1000-8000-00805f9b34fb
        00001112-0000-1000-8000-00805f9b34fb
        00001116-0000-1000-8000-00805f9b34fb
        0000111f-0000-1000-8000-00805f9b34fb
        0000112f-0000-1000-8000-00805f9b34fb
        00001132-0000-1000-8000-00805f9b34fb
        00001200-0000-1000-8000-00805f9b34fb
        00001800-0000-1000-8000-00805f9b34fb
        00001801-0000-1000-8000-00805f9b34fb
[CHG] Device 40:78:6A:26:4A:C2 Paired: yes
Connection successful
[NEW] Device 08:DF:1F:E6:A2:3E 08-DF-1F-E6-A2-3E
[bluetooth]#
[DEL] Device 40:78:6A:26:4A:C2 XT1008
[NEW] Device 40:78:6A:26:4A:C2 XT1008
[bluetooth]# connect 40:78:6A:26:4A:C2
Attempting to connect to 40:78:6A:26:4A:C2
[CHG] Device 40:78:6A:26:4A:C2 Connected: yes
[CHG] Device 40:78:6A:26:4A:C2 Modalias: bluetooth:v001Dp1200d1436
[CHG] Device 40:78:6A:26:4A:C2 UUIDs:
        00001105-0000-1000-8000-00805f9b34fb
        0000110a-0000-1000-8000-00805f9b34fb
        0000110c-0000-1000-8000-00805f9b34fb
        0000110e-0000-1000-8000-00805f9b34fb
        00001112-0000-1000-8000-00805f9b34fb
        00001116-0000-1000-8000-00805f9b34fb
        0000111f-0000-1000-8000-00805f9b34fb
        0000112f-0000-1000-8000-00805f9b34fb
        00001132-0000-1000-8000-00805f9b34fb
        00001200-0000-1000-8000-00805f9b34fb
        00001800-0000-1000-8000-00805f9b34fb
        00001801-0000-1000-8000-00805f9b34fb
[CHG] Device 40:78:6A:26:4A:C2 Paired: yes
Connection successful
[NEW] Device 08:DF:1F:E6:A2:3E 08-DF-1F-E6-A2-3E
[bluetooth]#
```