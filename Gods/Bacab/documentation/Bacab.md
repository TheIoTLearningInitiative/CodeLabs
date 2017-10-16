# Bacab

> Bacab Home

## Accounts

- Amazon
  - Country Mexico
    - Amazon Prime
  - Country United Stated
    - Amazon Prime
- Google
  - Name: Bacab
  - Last Name: Home
  - Email
  - Password
  - Activities
    - Upload Photo taking Home icon from [Material Design Icon](https://materialdesignicons.com/)  
- Twitter
  - Name
  - Email
  - Username: BacabHome
  - Url: http://twitter.com/BacabHome
  - Activities
    - Upload Photo taking Home icon from [Material Design Icon](https://materialdesignicons.com/)

## Applications

- Games
  - Several
- Shop
  - Amazon
- Smart Home
  - Automation
    - Stringify
    - If This The That
  - Assistant
    - Alexa
      - Smart Home Skills
        - Hue
        - Stringify
        - Tuya Smart
        - Wemo
        - Smart Life
      - Steps
        - Changed Android App Installations settings
    - Home
  - Light
    - Hue
    - Huey - Ambient Light Effects
- Social Media
  - Twitter
  - Pinterest
- Video
  - Amazon Prime Video
  - Netflix
  - YT Kids

### Under Review

- [Hue Widget](https://play.google.com/store/apps/details?id=com.apekoppen.huewidget&hl=en) __Under Review__

# Door Bell

## Proof Of Concept Implementation

- [Dasher A simple way to bridge your Amazon Dash buttons to HTTP services ](https://github.com/maddox/dasher)
- [Stream2Chromecast Chromecast media streamer for Linux ](https://github.com/Pat-Carter/stream2chromecast)

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
