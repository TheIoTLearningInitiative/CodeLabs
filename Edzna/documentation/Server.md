# Server

```sh
user@server:~$ pip3 install homeassistant
user@server:~$ hass --open-ui
```

http://192.168.1.70:8123/

```sh
user@server:~$ ls ~/.homeassistant
configuration.yaml  deps  home-assistant.db  home-assistant.log
```

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
mqtt:
  broker: test.mosquitto.org
  port: 1883
  port: 8883
  certificate: /home/paulus/downloads/mosquitto.org.crt
```