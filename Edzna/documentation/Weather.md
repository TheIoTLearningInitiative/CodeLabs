# Weather

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