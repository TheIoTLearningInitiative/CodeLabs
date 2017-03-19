# Lupe Robot

# Lupe Robot

Development

- https://www.gitbook.com/book/maquirog/rob/details
- https://github.com/maquirog/MotorsAndServos

## Eclipse Compilation

Same as Wrist Band

## Apps

- Putty
- Bluetooth SPP Tools Pro

## Intel IoT SDK

1. Install Java
   1.1 Java SE Development Kit 8u121

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