# Weather

> The darksky platform uses the Dark Sky web service as a source for meteorological data for your location. [Documentation](https://home-assistant.io/components/sensor.darksky/)

## sensor

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: darksky
    api_key: 
    monitored_conditions:
      - summary
      - precip_probability
      - temperature
      - apparent_temperature
```