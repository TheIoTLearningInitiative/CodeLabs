# Demo

```sh
pyme@pyme-desktop:~/CodeLabs/Gods/Bitol$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0
pyme@pyme-desktop:~/CodeLabs/Gods/Bitol$ mavproxy.py --master=tcp:127.0.0.1:5760 --out=udpout:192.168.1.79:14550 --out=udpout:127.0.0.1:14550 --out=udpout:127.0.0.1:14549
```