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

