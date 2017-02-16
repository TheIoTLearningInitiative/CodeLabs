# Alexa Voice Service Intel Edison\

Based on [Amazon Echo in Edison with Hand Gesture Trigger](https://software.intel.com/en-us/blogs/2016/06/07/amazon-echo-in-edison-with-hand-gesture-trigger)

- [Github Sammachin Turn a Raspberry Pi into an Alexa Client](https://github.com/sammachin/AlexaPi)
- [Github Alexa-Pi Alexa client for all your devices!](https://github.com/alexa-pi/AlexaPi)
- [Intel Edison as an Alexa IOT Gateway](https://www.hackster.io/LorenzoK/intel-edison-as-iot-gateway-with-alexa-support-39aa1d)
- [Intel Edison as an Alexa IOT Gateway @ Hackster](https://devmesh.intel.com/projects/ikea-smartbulb-with-alexa-integration)

## Setup

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
