# Home Assistant

- [1](http://ratonland.org/tag/yaml/)

# Modules

- [Conversation](https://home-assistant.io/components/conversation/)
- [Cast](https://home-assistant.io/components/media_player.cast/)
- []()
- []()
- []()
- []()

# Installation

```sh
user@server:~$ sudo apt-get install python3-setuptools
user@server:~$ sudo apt-get install python3-pip
user@server:~$ sudo pip3 install homeassistant
```

# .homeassistant/configuration.yaml

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