# Sphero


```sh
root@edison:~# rfkill unblock bluetooth
root@edison:~# bluetoothctl
[NEW] Controller 98:4F:EE:04:1A:8C edison [default]
[bluetooth]# scan on
Discovery started
[CHG] Controller 98:4F:EE:04:1A:8C Discovering: yes
[NEW] Device 68:86:E7:08:9C:BB Sphero-RWB
[bluetooth]# scan off
[CHG] Device 68:86:E7:08:9C:BB RSSI is nil
[CHG] Controller 98:4F:EE:04:1A:8C Discovering: no
Discovery stopped
[bluetooth]# 
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