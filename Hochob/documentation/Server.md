# Server

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