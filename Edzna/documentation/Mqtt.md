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

## Custom Component Hello MQTT

> MQTT example componen

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
DEFAULT_TOPIC = 'edzna/hello_mqtt'


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

## Topic

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
hello_mqtt:
  topic: edzna/demo/light
```

```sh
user@server:~$ mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/hello_mqtt -m "ThisIsIt"
```

# Edzna Light

- [Open Home Automation Github](https://github.com/mertenats/open-home-automation/tree/master/openhome)

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
light:
  platform: mqtt
  name: Edzna Light'
  state_topic: 'edzna/light/status'
  command_topic: 'edzna/light/switch'
  optimistic: false
```