# Server

# Issues

* Make server not ask for password with sudo

# Operating System: Lubuntu

> Lubuntu is a fast, energy saving and lightweight variant of Ubuntu using LXDE. It is popular with PC and laptop users running on low-spec hardware. [Homepage](http://lubuntu.me/)

```sh
hochob@server:~$ /sbin/ifconfig
enp0s25: flags=4099<UP,BROADCAST,MULTICAST>  mtu 1500
        ether f4:4d:30:61:f4:2a  txqueuelen 1000  (Ethernet)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
        device interrupt 20  memory 0xaa100000-aa120000  

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        inet6 ::1  prefixlen 128  scopeid 0x10<host>
        loop  txqueuelen 1  (Local Loopback)
        RX packets 6178  bytes 3092794 (3.0 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 6178  bytes 3092794 (3.0 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

wlp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 192.168.10.138  netmask 255.255.255.0  broadcast 192.168.10.255
        inet6 fe80::a2a0:f0e3:8daf:9684  prefixlen 64  scopeid 0x20<link>
        ether 94:65:9c:a1:2c:6e  txqueuelen 1000  (Ethernet)
        RX packets 275175  bytes 364234831 (364.2 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 52986  bytes 7347203 (7.3 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

hochob@server:~$
```

# Operating System: Debian

```sh
hochob@server:~$ /sbin/ifconfig
eth0      Link encap:Ethernet  HWaddr f4:4d:30:67:a3:bf  
          inet addr:192.168.1.147  Bcast:192.168.1.255  Mask:255.255.255.0
          inet6 addr: fe80::f64d:30ff:fe67:a3bf/64 Scope:Link
          UP BROADCAST RUNNING MULTICAST  MTU:1500  Metric:1
          RX packets:7159 errors:0 dropped:0 overruns:0 frame:0
          TX packets:3372 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:1000 
          RX bytes:7209784 (6.8 MiB)  TX bytes:416585 (406.8 KiB)

lo        Link encap:Local Loopback  
          inet addr:127.0.0.1  Mask:255.0.0.0
          inet6 addr: ::1/128 Scope:Host
          UP LOOPBACK RUNNING  MTU:65536  Metric:1
          RX packets:8 errors:0 dropped:0 overruns:0 frame:0
          TX packets:8 errors:0 dropped:0 overruns:0 carrier:0
          collisions:0 txqueuelen:0 
          RX bytes:480 (480.0 B)  TX bytes:480 (480.0 B)

hochob@server:~$ 
```

```sh
root@server:~# adduser hochob sudo
Adding user `hochob' to group `sudo' ...
Adding user hochob to group sudo
Done.
root@server:~# 
```

# PATH

* Export directories into path to allow killing processes easily

```sh
hochob@server:~$ nano ~/.profile
export PATH=$PATH:/home/hochob/CodeLabs/Hochob/LupeRobot
```

# Power Management

* Preferences
  * Power Manager
    * Display
      * Handle Display Power Management
    * Security
      * Automatically Lock The Session Never

# Sudo Privileges

Not Working!

```sh
# User alias specification
hochob ALL=(ALL) NOPASSWD:ALL
```

# Extras

* Cheese, not able to interact through command line



