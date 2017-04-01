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
root@edison:~# ls
CodeLabs
root@edison:~# cd CodeLabs/ChichenItza/tts/
root@edison:~/CodeLabs/ChichenItza/tts# ls
audio.wav  mainpyttsx.py  mainvrss.py  voicerssurllib.py  voicerssurllib.pyc
root@edison:~/CodeLabs/ChichenItza/tts# 
```

