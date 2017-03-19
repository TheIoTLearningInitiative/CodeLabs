# Hello

> Alright, you’re ready to make your first component. AWESOME. Don’t worry, we’ve tried hard to keep it as easy as possible [Creating Components](https://home-assistant.io/developers/creating_components/)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```
hello_state:
```

## Custom Component Hello State

```sh
user@server:~$ mkdir ~/.homeassistant/custom_components/
```

```sh
user@server:~$ nano ~/.homeassistant/custom_components/hello_state.py
```

```python
DOMAIN = 'hello_state'

def setup(hass, config):
    hass.states.set('hello.world', 'Paulus')

    return True
```


## 

```sh
user@server:~$ hass --script check_config
Testing configuration at /root/.homeassistant
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up sun
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up group
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up switch
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up conversation
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up updater
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up http
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up notify
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up automation
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up recorder
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up websocket_api
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up api
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up media_player
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up tts
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up config
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up history
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up frontend
17-03-19 08:03:19 INFO (MainThread) [homeassistant.setup] Setting up logbook
user@server:~$  
```