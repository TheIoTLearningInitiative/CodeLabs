# Home Assistant

- [1](http://ratonland.org/tag/yaml/)

# Modules

- [Conversation](https://home-assistant.io/components/conversation/)
- [Cast](https://home-assistant.io/components/media_player.cast/)
- [Alexa](https://home-assistant.io/components/alexa/)
- [Device Tracker](https://home-assistant.io/components/device_tracker/)

# Installation

```sh
user@server:~$ sudo apt-get install python3-setuptools
user@server:~$ sudo apt-get install python3-pip
user@server:~$ sudo pip3 install homeassistant
```

# .homeassistant/configuration.yaml Switches

```sh
switch:
  platform: command_line
  switches:
    main:
      command_on: "cvlc --no-video-title-show --fullscreen /home/xe1gyq/Videos/Pigeon.mp4 vlc://quit &"
      command_off: "sudo pkill vlc"
    edison:
      command_on: "echo"
      command_off: "echo"
```

# .homeassistant/configuration.yaml Telegram

```sh
notify:
- name: Bot
platform: telegram
api_key: 301796470:AAHTZ7pYgjqVwOAzBDIIHfGziMvCrIFc_co
chat_id: 166426424
```

# .homeassistant/configuration.yaml Automation

```
automation:
  trigger:
    platform: state
    entity_id: switch.main
  action:
    service: notify.hochobbot
    data:
      message: "Lupe Robot Station has been activated..."
```

# .homeassistant/configuration.yaml Customization

```sh
homeassistant:
  # Name of the location where Home Assistant is running
  name: Home
  # Location required to calculate the time the sun rises and sets
  latitude: 20.3
  longitude: -103.2
  # Impacts weather/sunrise data (altitude above sea level in meters)
  elevation: 1579
  # metric for Metric, imperial for Imperial
  unit_system: metric
  # Pick yours from here: http://en.wikipedia.org/wiki/List_of_tz_database_time_zones
  time_zone: America/Mexico_City
  customize:
   switch.main:
    friendly_name: Lupe Robot Station
    icon: mdi:video
   switch.edison:
    friendly_name: Edison Station
    icon: mdi:video
```
