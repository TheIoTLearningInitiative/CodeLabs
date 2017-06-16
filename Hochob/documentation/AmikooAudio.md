# Audio


```sh
root@edison:~# cat ~/.asoundrc 

pcm.!default {
        type asym
        playback.pcm {
                type plug
                slave.pcm "hw:2,0"
        }
        capture.pcm {
                type plug
                slave.pcm "hw:2,0"
        }
}
root@edison:~# 
```

```sh
root@edison:~# opkg install espeak
Installing espeak (1.37-r0) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/espeak_1.37-r0_core2-32.ipk.
Installing libportaudio2 (v19+svnr1387-r0) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/libportaudio2_v19+svnr1387-r0_core2-32.ipk.
Installing libjack (0.121.0-r0) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/libjack_0.121.0-r0_core2-32.ipk.
Installing libsamplerate0 (0.1.8-r1) on root.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/libsamplerate0_0.1.8-r1_core2-32.ipk.
Configuring libsamplerate0.
Configuring libjack.
Configuring libportaudio2.
Configuring espeak.
root@edison:~# 
```

```sh
root@edison:~# echo hi | espeak
```

```sh
root@edison:~# ls
CodeLabs
root@edison:~# cd CodeLabs/ChichenItza/tts/
root@edison:~/CodeLabs/ChichenItza/tts# ls
audio.wav  mainpyttsx.py  mainvrss.py  voicerssurllib.py  voicerssurllib.pyc
root@edison:~/CodeLabs/ChichenItza/tts# 
```

