Text To Speech
==
```sh
# vi ~/.asoundrc
```

```sh
pcm.!default {
        type asym
        playback.pcm {
                type plug
                slave.pcm "hw:3,0"
        }
        capture.pcm {
                type plug
                slave.pcm "hw:2,0"  
        }
}
```

```sh
# mkdir configuration
# vi configuration/voicerss.ak
# vi configuration/voicerss.mk
# vi VoiceRss.sh
# vi TextToSpeech.py
```

