# Visitor Center: Edison Station

> ...

# Setup

```sh
root@edison:~# git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
root@edison:~# cd CodeLabs
root@edison:~/CodeLabs# sh scripts/setup.sh Acat
```

```sh
root@edison:~# /usr/bin/node-red --max-old-space-size=256
28 Mar 16:12:56 - [info]

Welcome to Node-RED
===================

28 Mar 16:12:56 - [info] Node-RED version: v0.16.2
28 Mar 16:12:56 - [info] Node.js  version: v4.4.3
28 Mar 16:12:56 - [info] Linux 3.10.98-poky-edison+ ia32 LE
28 Mar 16:12:58 - [info] Loading palette nodes
28 Mar 16:13:09 - [warn] ------------------------------------------------------
28 Mar 16:13:09 - [warn] [rpi-gpio] Info : Ignoring Raspberry Pi specific node
28 Mar 16:13:09 - [warn] ------------------------------------------------------
28 Mar 16:13:09 - [info] Settings file  : /home/root/.node-red/settings.js
28 Mar 16:13:09 - [info] User directory : /home/root/.node-red
28 Mar 16:13:09 - [info] Flows file     : /home/root/.node-red/flows_edison.json
28 Mar 16:13:09 - [info] Creating new flow file
28 Mar 16:13:09 - [info] Starting flows
28 Mar 16:13:09 - [info] Started flows
28 Mar 16:13:09 - [info] Server now running at http://127.0.0.1:1880/
```

```sh
root@edison:~# ls
CodeLabs
root@edison:~# cd ~/.node-red/
root@edison:~/.node-red# ls
flows_edison.json  lib  node_modules  settings.js
root@edison:~/.node-red# cd node_modules/
root@edison:~/.node-red/node_modules# ls
node-red-contrib-upm  node-red-dashboard
root@edison:~/.node-red/node_modules#
```

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
