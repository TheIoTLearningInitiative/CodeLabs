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

```python
DOMAIN = 'hello_state'

def setup(hass, config):
    hass.states.set('hello.world', 'Paulus')

    return True
```

# MQTT

> MQTT (aka MQ Telemetry Transport) is a machine-to-machine or “Internet of Things” connectivity protocol on top of TCP/IP. It allows extremely lightweight publish/subscribe messaging transport. To integrate MQTT into Home Assistant... [MQTT](https://home-assistant.io/components/mqtt/)


```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
mqtt:
  broker: test.mosquitto.org
  port: 1883
```

## 

```sh
user@server:~$ nano ~/.homeassistant/custom_components/hello_mqtt.py
```

```python
import homeassistant.loader as loader

# The domain of your component. Should be equal to the name of your component.
DOMAIN = "hello_mqtt"

# List of component names (string) your component depends upon.
DEPENDENCIES = ['mqtt']


CONF_TOPIC = 'topic'
DEFAULT_TOPIC = 'home-assistant/hello_mqtt'


def setup(hass, config):
    """Setup the Hello MQTT component."""
    mqtt = loader.get_component('mqtt')
    topic = config[DOMAIN].get('topic', DEFAULT_TOPIC)
    entity_id = 'hello_mqtt.last_message'

    # Listener to be called when we receive a message.
    def message_received(topic, payload, qos):
        """A new MQTT message has been received."""
        hass.states.set(entity_id, payload)

    # Subscribe our listener to a topic.
    mqtt.subscribe(hass, topic, message_received)

    # Set the intial state
    hass.states.set(entity_id, 'No messages')

    # Service to publish a message on MQTT.
    def set_state_service(call):
        """Service to send a message."""
        mqtt.publish(hass, topic, call.data.get('new_state'))

    # Register our service with Home Assistant.
    hass.services.register(DOMAIN, 'set_state', set_state_service)

    # Return boolean to indicate that initialization was successfully.
    return True
```

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
hello_mqtt:
  topic: edzna/demo/light
```