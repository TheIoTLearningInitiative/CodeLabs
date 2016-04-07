Audio Capture Playback
==

```sh
# opkg install alsa-utils mpg123 espeak
# arecord -f cd -D plughw:2,0 -d 20 test.wav
Recording WAVE 'test.wav' : Signed 16 bit Little Endian, Rate 44100 Hz, Stereo
^CAborted by signal Interrupt...
# aplay -D hw:3,0 test.wav # USB
Playing WAVE 'test.wav' : Signed 16 bit Little Endian, Rate 44100 Hz, Stereo
```

