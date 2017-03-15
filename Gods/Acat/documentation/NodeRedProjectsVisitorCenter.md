

# Visitor Center

# Big Changes

- Use node-red-dashboard instead of node-red-contrib-ui
- Use github repositories
- Remove "Grove" and "ui" words from the Nodes
- Modification to default to 1/0 instead of True/False under ui_switch
- Change from Speaker to Buzzer under UPM-Grove-Speaker

## Grove Indoor Environment Kit for Intel® Edison

## Input

### Analog

- [Grove - Light](https://www.seeedstudio.com/Grove-Light-Sensor-p-746.html)
- [Grove - Temperature](http://wiki.seeed.cc/Grove-Temperature_Sensor_V1.2/)
- [Grove - Sound Sensor](http://wiki.seeed.cc/Grove-Sound_Sensor/)

### Digital

- [Grove - Button](https://www.seeedstudio.com/Grove-Button%28P%29-p-1243.html)

## Output

- [Grove - LCD RGB Backlight](https://www.seeedstudio.com/Grove-LCD-RGB-Backlight-p-1643.html)
- [Grove - Relay](https://www.seeedstudio.com/Grove-Relay-p-769.html)
- [Grove - Buzzer](https://www.seeedstudio.com/Grove-Buzzer-p-768.html)

# Node Management

Go to Menu -> Manage Palette -> Nodes and keep enabled only the following items

- node-red
  - function
  - inject
  - watch
- node-red-contrib-ui
  - ui_chart
  - ui_gauge
  - ui_switch
  - ui_tab
  - ui_text_input
- node-red-contrib-upm
  - UPM-Grove-Button
  - upm-grove-light
  - UPM-Grove-Relay
  - upm-grove-rgb-lcd
  - upm-grove-sound
  - UPM-Grove-Speaker
  - upm-grove-temperature

