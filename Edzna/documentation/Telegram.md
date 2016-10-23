# Telegram

> The telegram platform uses Telegram to delivery notifications from Home Assistant to your Android device, your Windows phone, or your iOS device. [Documentation](https://home-assistant.io/components/notify.telegram/)

```sh
user@server:~$ sudo pip3 install telegram
user@server:~$ sudo pip3 install python-telegram-bot
```

- Chat Id

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

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
automation:
  - alias: Send message at a given time
    trigger:
      platform: time
      hours: 00
      minutes: 58
      seconds: 0
    action:
      service: notify.EdznaBot
      data:
        message: 'Time to sleep'
```