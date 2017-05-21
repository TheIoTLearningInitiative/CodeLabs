# Cylon.js 02

```sh
root@edison:~# nano cylonjs02.js
```

```js
var Cylon = require('cylon');

Cylon.robot({
  connections: {
    sphero: { adaptor: 'sphero', port: '/dev/rfcomm0' }
  },

  devices: {
    sphero: { driver: 'sphero' }
  },

  work: function(my) {
    every((1).second(), function() {
      my.sphero.roll(60, Math.floor(Math.random() * 360));
    });
  }
}).start();
```

```sh
root@edison:~# node cylonjs02.js 
2017-05-21T16:56:02.018Z : [Robot 1] - Starting connections.                    
2017-05-21T16:56:02.044Z : [Robot 1] - Starting connection 'edison'.            
2017-05-21T16:56:02.138Z : [Robot 1] - Starting connection 'sphero' on port /de.
The method Logger#info has been deprecated.                                     
It will be removed in Cylon 2.0.0.                                              
Please switch to using the #log or #debug Logger methods                        
2017-05-21T16:56:02.143Z : Connecting to Sphero 'sphero'...                     
2017-05-21T16:56:02.199Z : [Robot 1] - Starting devices.                        
2017-05-21T16:56:02.202Z : [Robot 1] - Starting device 'led' on pin 13.         
2017-05-21T16:56:02.204Z : [Robot 1] - Starting device 'sphero'.                
2017-05-21T16:56:02.236Z : [Robot 1] - Working.                                 
[  788.805660] BUG: sleeping function called from invalid context at /export/us5
[  788.805783] in_atomic(): 1, irqs_disabled(): 0, pid: 79, name: krfcommd      
^C2017-05-21T16:56:32.112Z : Disconnecting from Sphero 'sphero'...              
Terminated                                                                      
root@edison:~# 
```

# Cylon.js 03

```sh
root@edison:~# nano cylonjs03.js
```

```js
var Cylon = require('cylon');

Cylon.robot({
  connections: {
    edison: { adaptor: 'intel-iot'},
    sphero: { adaptor: 'sphero', port: '/dev/rfcomm0' }
  },

  devices: {
    led: { driver: 'led', pin: 13, connection: 'edison' },
    sphero: { driver: 'sphero', connection: 'sphero' }
  },

  work: function(my) {
    console.log("Setting up Collision Detection...");
    my.sphero.stop();
    my.sphero.detectCollisions();

    my.sphero.on('collision', function() {
      console.log("Collision");
      my.led.toggle();
    });
  }
}).start();
```

```
root@edison:~# node cylonjs03.js 
2017-05-21T16:52:45.104Z : [Robot 1] - Starting connections.
2017-05-21T16:52:45.129Z : [Robot 1] - Starting connection 'edison'.
2017-05-21T16:52:45.245Z : [Robot 1] - Starting connection 'sphero' on port /de.
The method Logger#info has been deprecated.
It will be removed in Cylon 2.0.0.
Please switch to using the #log or #debug Logger methods
2017-05-21T16:52:45.249Z : Connecting to Sphero 'sphero'...
2017-05-21T16:52:45.305Z : [Robot 1] - Starting devices.
2017-05-21T16:52:45.307Z : [Robot 1] - Starting device 'led' on pin 13.
2017-05-21T16:52:45.308Z : [Robot 1] - Starting device 'sphero'.
2017-05-21T16:52:45.340Z : [Robot 1] - Working.
Setting up Collision Detection...
```

