```sh
root@edison:~# nano /etc/opkg/base-feeds.conf
```

```sh
src/gz all http://repo.opkg.net/edison/repo/all
src/gz edison http://repo.opkg.net/edison/repo/edison
src/gz core2-32 http://repo.opkg.net/edison/repo/core2-32
```

```sh
root@edison:~# pip install numpy
root@edison:~# opkg install python-numpy opencv python-opencv
```