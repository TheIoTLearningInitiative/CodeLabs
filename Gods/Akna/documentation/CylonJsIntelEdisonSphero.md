# Cylon.js Intel Edison Sphero

```sh
root@edison:~# npm install cylon cylon-intel-iot cylon-sphero
```

```sh
root@edison:~# rfkill unblock bluetooth                                         
root@edison:~# bluetoothctl                                                     
[NEW] Controller 98:4F:EE:04:1A:8C edison [default]                             
[NEW] Device 68:86:E7:08:9C:BB Sphero-RWB                                       
[bluetooth]# agent on                                                           
Agent registered                                                                
[bluetooth]# scan on                                                            
Discovery started                                                               
[CHG] Controller 98:4F:EE:04:1A:8C Discovering: yes                             
[CHG] Device 68:86:E7:08:9C:BB RSSI: -40                                        
[CHG] Device 68:86:E7:08:9C:BB UUIDs: 00001101-0000-1000-8000-00805f9b34fb      
[CHG] Device 68:86:E7:08:9C:BB UUIDs: ffcacade-afde-cade-defa-cade00000000      
[bluetooth]# scan off                                                           
[CHG] Device 68:86:E7:08:9C:BB RSSI is nil                                      
Discovery stopped                                                               
[CHG] Controller 98:4F:EE:04:1A:8C Discovering: no                              
[bluetooth]# pair 68:86:E7:08:9C:BB                                             
Attempting to pair with 68:86:E7:08:9C:BB                                       
Failed to pair: org.bluez.Error.ConnectionAttemptFailed                         
[bluetooth]# connect 68:86:E7:08:9C:BB                                          
Attempting to connect to 68:86:E7:08:9C:BB                                      
[CHG] Device 68:86:E7:08:9C:BB Class: 0x240448                                  
[CHG] Device 68:86:E7:08:9C:BB Icon: audio-card                                 
[CHG] Device 68:86:E7:08:9C:BB Connected: yes                                   
[CHG] Device 68:86:E7:08:9C:BB UUIDs: 00000000-deca-fade-deca-deafdecacaff      
[CHG] Device 68:86:E7:08:9C:BB UUIDs: 00001101-0000-1000-8000-00805f9b34fb      
Failed to connect: org.bluez.Error.NotAvailable                                 
[CHG] Device 68:86:E7:08:9C:BB Connected: no                                    
[bluetooth]# pair 68:86:E7:08:9C:BB                                             
Attempting to pair with 68:86:E7:08:9C:BB                                       
[CHG] Device 68:86:E7:08:9C:BB Connected: yes                                   
[CHG] Device 68:86:E7:08:9C:BB Paired: yes                                      
Pairing successful                                                              
[CHG] Device 68:86:E7:08:9C:BB Connected: no                                    
[bluetooth]# exit
[DEL] Controller 98:4F:EE:04:1A:8C edison [default]
root@edison:~# 
```

```sh
[bluetooth]# info 68:86:E7:08:9C:BB
Device 68:86:E7:08:9C:BB
        Name: Sphero-RWB
        Alias: Sphero-RWB
        Paired: no
        Trusted: no
        Blocked: no
        Connected: no                                                           
        LegacyPairing: no                                                       
        UUID: Serial Port               (00001101-0000-1000-8000-00805f9b34fb)  
        UUID: Vendor specific           (ffcacade-afde-cade-defa-cade00000000)  
[bluetooth]# 
```

```sh
root@edison:~# rfkill unblock bluetooth                                         
root@edison:~# bluetoothctl                                                     
[NEW] Controller 98:4F:EE:04:1A:8C edison [default]                             
[NEW] Device 68:86:E7:08:9C:BB Sphero-RWB                                       
[bluetooth]# exit
[DEL] Controller 98:4F:EE:04:1A:8C edison [default]
root@edison:~# 
```

```sh
root@edison:~# rfcomm bind 0 68:86:E7:08:9C:BB 1                                
root@edison:~# 
```

# Cylon.js 02

```sh
root@edison:~# nano cylonjs03.js
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
root@edison:~# node cylonjs03.js 
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

