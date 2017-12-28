# Door Bell

> Proof of Concept

## Dependencies

- [Dasher A simple way to bridge your Amazon Dash buttons to HTTP services ](https://github.com/maddox/dasher)
- [Stream2Chromecast Chromecast media streamer for Linux ](https://github.com/Pat-Carter/stream2chromecast)

## Implementation

```sh
user@workstation:~$ sudo apt-get install nodejs-legacy
```

```sh
user@workstation:~$ git clone https://github.com/maddox/dasher.git
Cloning into 'dasher'...
remote: Counting objects: 290, done.
remote: Total 290 (delta 0), reused 0 (delta 0), pack-reused 290
Receiving objects: 100% (290/290), 47.94 KiB | 320.00 KiB/s, done.
Resolving deltas: 100% (139/139), done.
user@workstation:~$ cd dasher/
user@workstation:~/dasher$ 
```

```sh
user@workstation:~/dasher$ nano config/config.json
```

```json
{"buttons":[
  {
    "name": "Debug Dash Button",
    "address": "XX:XX:XX:XX:XX:XX",
    "debug": true
  },
  {
    "name": "Command Exec Button",
    "address": "XX:XX:XX:XX:XX:XX",
    "cmd": "/home/user/dasher/dashbutton.sh"
  }
]}
```

```sh
user@workstation:~/dasher$ nano doorbell.sh
```

```sh
#!/bin/sh

echo "Amazon IoT Button!"
python /home/pyme/dasher/stream2chromecast/stream2chromecast.py -devicename Juum -setvol 1.0
python /home/pyme/dasher/stream2chromecast/stream2chromecast.py -devicename Juum /home/pyme/dasher/Monster.wav
```
