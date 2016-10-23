# Weather

```sh
sensor:
  - platform: darksky
    api_key: c07694254ea2fa73d657db1cd700971c
    monitored_conditions:
      - summary
      - precip_probability
      - temperature
      - apparent_temperature
```