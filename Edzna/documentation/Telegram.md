# Telegram

> The telegram platform uses Telegram to delivery notifications from Home Assistant to your Android device, your Windows phone, or your iOS device. [Documentation](https://home-assistant.io/components/notify.telegram/)

```sh
user@server:~$ sudo pip3 install telegram
user@server:~$ sudo pip3 install python-telegram-bot
```

- Chat Id

## Notify

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
notify:
  - name: EdznaBot
    platform: telegram
    api_key: 
    chat_id: 
```

## Sensor

```sh
sensor:
  - platform: mqtt
    name: EdznaLightSensor
    state_topic: "edzna/light/sensor"
  - platform: worldclock
    time_zone: America/Mexico_City
```

## Automation

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
automation:
  - alias: Alarm Notification          
    trigger:
      platform: time
      hours: 00
      minutes: 00
      seconds: 00
    action:
      service: notify.EdznaBot
      data:
        message: 'Time to sleep'
```