# Node-RED Packages

> Node-RED nodes to talk to sensors supported by the UPM library

```sh
root@edison:~# cd .node-red
root@edison:~/.node-red# ls
flows_edison.json  lib  node_modules  settings.js
root@edison:~/.node-red# 
```

## node-red-contrib-u

```sh
root@edison:~/.node-red# npm install node-red-contrib-u
```

## node-red-contrib-upm

```sh
root@edison:~/.node-red# npm install -g node-red-contrib-upm
```

```sh
root@edison:~/.node-red# cd node_modules/node-red-contrib-upm/
root@edison:~/.node-red/node_modules/node-red-contrib-upm# ls
GroveStarterKit  LICENSE.md  README.md  curieimu  package.json  screenshot.png
```

### node-red-contrib-upm: package.json

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm# nano package.json
```

```javascript
  "node-red": {
    "nodes": {
      "upm-grove-button": "GroveStarterKit/grove-button.js",
      "upm-grove-led": "GroveStarterKit/grove-led.js",
      "upm-grove-light": "GroveStarterKit/grove-light.js",
      "upm-grove-relay": "GroveStarterKit/grove-relay.js",
      "upm-grove-rgb-lcd": "GroveStarterKit/grove-rgb-lcd.js",
      "upm-grove-rotary": "GroveStarterKit/grove-rotary.js",
      "upm-grove-sound": "GroveStarterKit/grove-sound.js",
      "upm-grove-temperature": "GroveStarterKit/grove-temperature.js",
      "upm-grove-servo": "GroveStarterKit/grove-servo.js",
      "upm-grove-speaker": "GroveStarterKit/grove-speaker.js",
      "upm-curieimu": "curieimu/curieimu.js"
    }
  },
```

### node-red-contrib-upm: GroveStarterKit

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm# ls 
GroveStarterKit  LICENSE.md  README.md  curieimu  package.json  screenshot.png
root@edison:~/.node-red/node_modules/node-red-contrib-upm# cd GroveStarterKit/
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# ls
grove-button.html  grove-relay.html    grove-servo.html
grove-button.js    grove-relay.js      grove-servo.js
grove-led.html     grove-rgb-lcd.html  grove-sound.html
grove-led.js       grove-rgb-lcd.js    grove-sound.js
grove-light.html   grove-rotary.html   grove-temperature.html
grove-light.js     grove-rotary.js     grove-temperature.js
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# 
```

#### node-red-contrib-upm: GroveStarterKit: grove-speaker.html

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# cp grove-relay.html grove-speaker.html
```

Make modifications to grove-speaker.html

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# nano grove-speaker.html
```

#### node-red-contrib-upm: GroveStarterKit: grove-speaker.js

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# cp grove-relay.js grove-speaker.js
```

Make modifications to grove-speaker.js

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# nano grove-speaker.js
```

```js
module.exports = function(RED) {

    var m = require('mraa');
    var upmSpeaker = require('jsupm_grovespeaker');

    function groveSpeaker(n) {
        //init
        RED.nodes.createNode(this,n);

        //properties
        this.name = n.name;
        this.platform = n.platform;
        this.pin = n.pin;
        this.interval = n.interval;
        this.relay = new upmSpeaker.GroveSpeaker(parseInt(this.pin) + parseInt($
        this.board = m.getPlatformName();
        this.status({});

        var node = this;

        this.timer = setInterval(function(){

        });

        this.on('input', function(msg){
            if (msg.payload == "1"){
                //upmSpeaker.playAll();
                this.relay.playSound('c', true, "med");
            }
        });

        //clear interval on exit
        this.on("close", function(){
            clearInterval(this.timer);
            //node.buzzer.off();
        });
    }
    RED.nodes.registerType('UPM-Grove-Speaker', groveSpeaker);
}
```

```sh
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# ls
grove-button.html  grove-relay.js      grove-sound.html
grove-button.js    grove-rgb-lcd.html  grove-sound.js
grove-led.html     grove-rgb-lcd.js    grove-speaker.html
grove-led.js       grove-rotary.html   grove-speaker.js
grove-light.html   grove-rotary.js     grove-temperature.html
grove-light.js     grove-servo.html    grove-temperature.js
grove-relay.html   grove-servo.js
root@edison:~/.node-red/node_modules/node-red-contrib-upm/GroveStarterKit# 
```