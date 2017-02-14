```sh
root@board:~# echo > /etc/opkg/base-feeds.conf
root@board:~# cat << EOT >> /etc/opkg/base-feeds.conf
src/gz all http://repo.opkg.net/edison/repo/all
src/gz edison http://repo.opkg.net/edison/repo/edison
src/gz core2-32 http://repo.opkg.net/edison/repo/core2-32
EOT
root@board:~# 
```

```sh
root@board:~# pip install numpy
root@board:~# opkg install python-dev opencv python-opencv python-numpy
root@board:~# 
```
