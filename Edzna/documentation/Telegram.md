# Telegram

> The telegram platform uses Telegram to delivery notifications from Home Assistant to your Android device, your Windows phone, or your iOS device. [Documentation](https://home-assistant.io/components/notify.telegram/)

```sh
user@server:~$ sudo pip3 install telegram
user@server:~$ sudo pip3 install python-telegram-bot
```

- Chat Id

- https://api.telegram.org/bot<token>/getUpdates

```sh
{"ok":true,"result":[{"update_id":776736904,
"message":{"message_id":1,"from":{"id":166426424,"first_name":"Abraham","last_name":"Arce","username":"Xe1Gyq"},"chat":{"id":166426424,"first_name":"Abraham","last_name":"Arce","username":"Xe1Gyq","type":"private"},"date":1489859878,"text":"/start","entities":[{"type":"bot_command","offset":0,"length":6}]}},{"update_id":776736905,
"message":{"message_id":2,"from":{"id":166426424,"first_name":"Abraham","last_name":"Arce","username":"Xe1Gyq"},"chat":{"id":166426424,"first_name":"Abraham","last_name":"Arce","username":"Xe1Gyq","type":"private"},"date":1489859880,"text":"hi"}}]}
```

## notify

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
notify:
  - name: Bot
    platform: telegram
    api_key: 
    chat_id: 
```

## sensor

```sh
sensor:
  - platform: worldclock
    time_zone: America/Mexico_City
```

## automation

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
      service: notify.Bot
      data:
        message: 'Time to sleep'
```