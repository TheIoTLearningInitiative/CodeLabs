# Advanced Linux Sound Architecture

```sh
root@edison:~# opkg install alsa-utils libportaudio2 libasound2 bison espeak alsa-lib-dev alsa-utils-dev alsa-dev python-numpy
```

```sh
root@edison:~# aplay -l
...
...
card 1: dummyaudio [dummy-audio], device 0: 14 []
  Subdevices: 1/1
  Subdevice #0: subdevice #0
card 2: Device [USB PnP Sound Device], device 0: USB Audio [USB Audio]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
root@edison:~# 
```

# One Single Device, Play & Capture

E.g. 

```sh
root@edison:~# nano ~/.asoundrc
pcm.!default sysdefault:Device
```

```sh
root@edison:~# aplay /usr/share/sounds/alsa/Front_Center.wav
```

```sh
root@edison:~# arecord ~/test.wav
```

```sh
root@edison:~# aplay ~/test.wav
```



