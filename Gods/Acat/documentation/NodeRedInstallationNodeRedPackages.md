# Node-RED Packages

> Node-RED nodes to talk to sensors supported by the UPM library

```sh
root@edison:~# cd .node-red
root@edison:~/.node-red# ls
flows_edison.json  lib  node_modules  settings.js
root@edison:~/.node-red# 
```

## node-red-dashboard

```sh
root@edison:~/.node-red# npm install node-red-dashboard
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

```html
<script type="text/x-red" data-template-name="UPM-Grove-Speaker">
    <div class="form-row">
        <label for="node-input-name"><i class="fa fa-tag"></i> Name</label>
        <input type="text" id="node-input-name" placeholder="Name">
    </div>
    <div class="form-row">
        <label for="node-input-platform"><i class="fa fa fa-wrench"></i> Platfrom</label>
	<select type="text" id="node-input-platform">
	    <option value="0" selected="selected">Native</option>
	    <option value="512">Firmata</option>
        </select>
    </div>
    <div class="form-row">
        <label for="node-input-pin"><i class="fa fa-map-pin"></i> Pin</label>
        <select type="text" id="node-input-pin">
            <option value="0" selected="selected">D0</option>
            <option value="1">D1</option>
            <option value="2">D2</option>
            <option value="3">D3</option>
            <option value="4">D4</option>
            <option value="5">D5</option>
            <option value="6">D6</option>
            <option value="7">D7</option>
            <option value="8">D8</option>
            <option value="9">D9</option>
            <option value="10">D10</option>
            <option value="11">D11</option>
            <option value="12">D12</option>
            <option value="13">D13</option>
        </select>
    </div>    
    
    <div id="interval-row" class="form-row">
        <label for="node-input-interval"><i class="fa fa-refresh"></i> Interval (ms)</label>
        <input type="text" id="node-input-interval" placeholder="1000">
    </div>    
</script>

<script type="text/x-red" data-help-name="UPM-Grove-Relay">
    <h2>Grove Speaker</h2>
    <br>
    <p>This node will toggle the Grove Speaker based on the msg.payload input (1 or 0).</p>
    <br>
    <p>Learn More:
        <a href="https://software.intel.com/en-us/iot/hardware/sensors/grove-relay" target="_blank">Grove Speaker</a>
    </p>
    <br>
    <img src="https://raw.githubusercontent.com/intel-iot-devkit/upm/master/docs/images/grovespeaker.jpg" />
</script>


<script type="text/javascript">

    RED.nodes.registerType('UPM-Grove-Speaker', {
        category: 'UPM Sensors',
        defaults: {
            name: {
                value: ''
            },
            platform: {
                value: '0'
	    },		    
            pin:  {
                value: '0',
                required: true,
                validate:RED.validators.number()
            },
            interval: {
                value: 1000,
                required: true,
                validate: RED.validators.number()
            }
        },
        color: '#a6bbcf',
        paletteLabel: 'Grove Speaker',
        inputs: 1,
        outputs: 0,
        icon: 'debug.png',
        align: 'right',
        label: function(){
            return this.name || 'Grove Relay';
        },
    });
</script>
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