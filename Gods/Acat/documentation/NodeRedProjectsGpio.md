# GPIO 

## @ Node-Red Flow Space

- Intel GPIO Digital Input
  - D8
  - Interrupt Both

- Intel GPIO Digital Input
  - D2
  - Set Initial Level of Pin to 0 Low

## Source

```js
[{"id":"1595ea2d.68d426","type":"mraa-gpio-din","z":"ad6ab99f.842178","name":"","pin":"8","interrupt":"b","x":230,"y":160,"wires":[["202dab13.c26284"]]},{"id":"202dab13.c26284","type":"mraa-gpio-dout","z":"ad6ab99f.842178","name":"","pin":"2","set":true,"level":"0","x":550,"y":160,"wires":[]}]
```

