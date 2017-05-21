# Cylon.js Intel Edison

> Cylon module for Intel-IoT platforms
> > This repository contains the Cylon adaptor for the Intel Edison and Intel Galileo IoT platforms. It uses the MRAA node module (https://github.com/intel-iot-devkit/mraa)

- [Cylon.Js Intel Edison](https://cylonjs.com/documentation/platforms/edison/)
- [Cylon.js For Intel IoT](https://github.com/hybridgroup/cylon-intel-iot)

```sh
root@edison:~# npm install cylon cylon-intel-iot cylon-gpio cylon-i2c
```

```sh
root@edison:~# nano cylonjs01.js
```

```js
var Cylon = require('cylon');

Cylon.robot({
  connections: {
    edison: { adaptor: 'intel-iot' }
  },

  devices: {
    led: { driver: 'led', pin: 13 }
  },

  work: function(my) {
    every((1).second(), my.led.toggle);
  }
}).start();
```

```sh
root@edison:~# node cylonjs01.js                                                
2017-05-21T16:41:25.486Z : [Robot 1] - Starting connections.                    
2017-05-21T16:41:25.612Z : [Robot 1] - Starting connection 'edison'.            
2017-05-21T16:41:25.705Z : [Robot 1] - Starting devices.                        
2017-05-21T16:41:25.707Z : [Robot 1] - Starting device 'led' on pin 13.         
2017-05-21T16:41:25.708Z : [Robot 1] - Working.                                 
^CTerminated                                                                    
root@edison:~# 
```

