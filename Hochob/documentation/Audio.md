# Audio

- ToDo Implement Pause and Continue

# Software Components

## Python Libraries

- [Library for Python 2 and 3 to communicate with the Google Chromecast](https://github.com/xe1gyq/pychromecast)
- [Chromecast media streamer for Linux](https://github.com/xe1gyq/stream2chromecast)

## Lame

```sh
hochob@server:~$ sudo apt-get install lame
```

# Text To Speech

```sh
ChichenItza/tts/mainvrss.py
```

```sh
hochob@server:~/CodeLabs/ChichenItza/tts$ ls
audio.mp3  audio.wav  mainpyttsx.py  mainvrss.py  voicerssurllib.py  voicerssurllib.pyc
hochob@server:~/CodeLabs/ChichenItza/tts$ 
```

```
hochob@server:~/CodeLabs/ChichenItza/tts$ python mainvrss.py
hochob@server:~/CodeLabs/ChichenItza/tts$ Playing WAVE 'audio.wav' : Signed 16 bit Little Endian, Rate 44100 Hz, Stereo
```

# WAV to MP3

```sh
hochob@server:~/CodeLabs/ChichenItza/tts$ lame audio.wav audio.mp3
LAME 3.99.5 64bits (http://lame.sf.net)
Using polyphase lowpass filter, transition band: 16538 Hz - 17071 Hz
Encoding audio.wav to audio.mp3
Encoding as 44.1 kHz j-stereo MPEG-1 Layer III (11x) 128 kbps qval=3
    Frame          |  CPU time/estim | REAL time/estim | play/CPU |    ETA 
   202/202   (100%)|    0:00/    0:00|    0:00/    0:00|   66.776x|    0:00 
-------------------------------------------------------------------------------------------------------------------------------------------------
   kbps        MS  %     long switch short %
  128.0      100.0        96.3   2.0   1.7
Writing LAME Tag...done
ReplayGain: -1.8dB
hochob@server:~/CodeLabs/ChichenItza/tts$ 
```
