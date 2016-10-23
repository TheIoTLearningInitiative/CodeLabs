# Telegram

>  [Documentation](https://home-assistant.io/components/notify.telegram/)

```sh
user@server:~$ sudo pip3 install telegram
user@server:~$ sudo pip install python-telegram-bot
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
