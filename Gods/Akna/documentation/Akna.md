# Akna

# Cylon.js

- [Cylon.Js Sphero](https://cylonjs.com/documentation/platforms/sphero/)

```sh
root@edison:~# npm install cylon cylon-intel-iot cylon-gpio cylon-i2c
```

# Sphero Linux API

> Simple API for sphero 1&2.0 written in c++ for bluez stack [Github](https://github.com/slock83/sphero-linux-api)


# Sphero NodeSDK

> Some examples of using Node to control Sphero and an SDK. [Github](https://github.com/sphero-atx/Sphero-NodeSDK)

# Others

- [1](https://medium.com/@Charlie__Gerard/control-the-sphero-with-the-leap-motion-using-node-js-ee6979c0fdcb)

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


