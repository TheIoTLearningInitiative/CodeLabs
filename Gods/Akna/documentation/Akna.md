# Sphero

- [Cylon.Js adaptors for the Intel Edison & Galileo](https://github.com/hybridgroup/cylon-intel-iot)
- [Cylon.Js Sphero](https://cylonjs.com/documentation/platforms/sphero/)

# Cylon.js Intel Edison

- [Cylon.Js Intel Edison](https://cylonjs.com/documentation/platforms/edison/)
- [Cylon.js For Intel IoT](https://github.com/hybridgroup/cylon-intel-iot)

```sh
root@edison:~# npm install cylon cylon-intel-iot cylon-gpio cylon-i2c
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
```


```sh
root@edison:~# rfcomm bind 0 68:86:E7:08:9C:BB 1
```