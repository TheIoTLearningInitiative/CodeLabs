# Door Bell

> Proof of Concept

## Dependencies

- [Dasher A simple way to bridge your Amazon Dash buttons to HTTP services ](https://github.com/maddox/dasher)
- [Stream2Chromecast Chromecast media streamer for Linux ](https://github.com/Pat-Carter/stream2chromecast)

## Implementation

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
