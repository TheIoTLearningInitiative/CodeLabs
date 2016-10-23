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

```sh
user@server:~$ mkdir ~/.homeassistant/custom_components/
```

```
hello_state:
```

<config_dir>/custom_components/hello_state.py with the below code to test it locally.

```sh
DOMAIN = 'hello_state'

def setup(hass, config):
    hass.states.set('hello.world', 'Paulus')

    return True
```   

```sh
mqtt:
  broker: test.mosquitto.org
  port: 1883
  port: 8883
  certificate: /home/paulus/downloads/mosquitto.org.crt
```