# Dweet

Device based on Xpuhil Project

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```sh
sensor:
  - platform: dweet
    name: KitchenLuxesDweet
    device: EdznaKitchenLuxes
    value_template: '{{ value_json.luxes }}'
    unit_of_measurement: "lx"
  - platform: dweet
    name: PrincipalLuxesDweet
    device: EdznaPrincipalLuxes
    value_template: '{{ value_json.luxes }}'
    unit_of_measurement: "lx"
```