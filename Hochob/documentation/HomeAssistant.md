# Home Assistant

- [1](http://ratonland.org/tag/yaml/)

# Modules

- [Conversation](https://home-assistant.io/components/conversation/)
- [Cast](https://home-assistant.io/components/media_player.cast/)
- [Alexa](https://home-assistant.io/components/alexa/)
- []()
- []()
- []()

# Installation

```sh
user@server:~$ sudo apt-get install python3-setuptools
user@server:~$ sudo apt-get install python3-pip
user@server:~$ sudo pip3 install homeassistant
```

# .homeassistant/configuration.yaml General

```sh
media_player:
  - platform: plex

switch:
  platform: command_line
  switches:
    main:
      command_on: "cvlc --fullscreen /home/xe1gyq/Videos/Pigeon.mp4 vlc://quit &"
      command_off: "sudo pkill vlc"
```

# .homeassistant/configuration.yaml Switches

```
switch:
  platform: command_line
  switches:
    luperobot:
      command_on: "cvlc -f /home/xe1gyq/Videos/Pigeon.mp4 vlc://quit &"
      command_off: "sudo pkill vlc"
    edison:
      command_on: "echo"
      command_off: "echo"
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
   switch.luperobot:
    friendly_name: Lupe Robot Station
    icon: mdi:video
   switch.edison:
    friendly_name: Edison Station
    icon: mdi:video
```