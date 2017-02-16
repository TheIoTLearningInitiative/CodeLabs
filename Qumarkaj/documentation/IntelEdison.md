# Alexa Voice Service Intel Edison\

Basd on [Amazon Echo in Edison with Hand Gesture Trigger](https://software.intel.com/en-us/blogs/2016/06/07/amazon-echo-in-edison-with-hand-gesture-trigger)
  - [Alexa client for all your devices!](https://github.com/alexa-pi/AlexaPi)


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
root@board:~# opkg install mpg123
```
