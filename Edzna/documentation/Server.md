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

# Hello World

> Alright, you’re ready to make your first component. AWESOME. Don’t worry, we’ve tried hard to keep it as easy as possible [Creating Components](https://home-assistant.io/developers/creating_components/)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```
hello_state:
```

```sh
user@server:~$ mkdir ~/.homeassistant/custom_components/
```

```sh
user@server:~$ nano ~/.homeassistant/custom_components/hello_state.py
```

```sh
DOMAIN = 'hello_state'

def setup(hass, config):
    hass.states.set('hello.world', 'Paulus')

    return True
```

# MQTT

> MQTT (aka MQ Telemetry Transport) is a machine-to-machine or “Internet of Things” connectivity protocol on top of TCP/IP. It allows extremely lightweight publish/subscribe messaging transport. To integrate MQTT into Home Assistant... [MQTT](https://home-assistant.io/components/mqtt/)

```sh
mqtt:
  broker: test.mosquitto.org
  port: 1883
```

```sh
user@server:~$ nano ~/.homeassistant/custom_components/hello_mqtt.py
```

```sh
user@server:~$ 
```

```sh
user@server:~$ 
```

```sh
user@server:~$ 
```