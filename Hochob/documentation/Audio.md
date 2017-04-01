# Audio

- ToDo Implement Pause and Continue

# Software Components

- [Library for Python 2 and 3 to communicate with the Google Chromecast](https://github.com/xe1gyq/pychromecast)
- [Chromecast media streamer for Linux](https://github.com/xe1gyq/stream2chromecast)

# Lame

```sh
hochob@server:~$ sudo apt-get install lame
```

# Text To Speech

```sh
hochob@server:~/CodeLabs/ChichenItza/tts# nano mainvrss.py
```

```python
# -*- coding: utf-8 -*- 

import voicerssurllib
import subprocess

voice = voicerssurllib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a07',
	'hl': 'es-mx',
	'src': 'Hace mucho tiempo existieron civilizaciones muy inteligentes que lograron hacer descubrimientos que cambiaron la forma de vivir y desarrollaron tecnología que aún hoy en día utilizamos. Entre esas civilizaciones importantes  como Babilonia, India y China se encontraban los mayas. ¿Quién de ustedes sabe que hicieron los mayas?',
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
})

file = 'audio.wav'

newFile = open (file, "wb")
newFile.write(voice['response'])
newFile.close()

player = subprocess.Popen(["aplay", file])
```

```sh
root@kali:~/CodeLabs/ChichenItza/tts# python mainvrss.py
Playing WAVE 'audio.wav' : Signed 16 bit Little Endian, Rate 44100 Hz, Stereo
root@kali:~/CodeLabs/ChichenItza/tts# 
```

# Wav to Mp3

```sh
hochob@server:~/CodeLabs/ChichenItza/tts# lame -V2 audio.wav audio.mp3
LAME 3.99.5 64bits (http://lame.sf.net)
Using polyphase lowpass filter, transition band: 18671 Hz - 19205 Hz
Encoding audio.wav to audio.mp3
Encoding as 44.1 kHz j-stereo MPEG-1 Layer III VBR(q=2)
    Frame          |  CPU time/estim | REAL time/estim | play/CPU |    ETA 
   859/859   (100%)|    0:00/    0:00|    0:00/    0:00|   68.263x|    0:00 
 32 [100] *********************************************
 40 [  0] 
 48 [  0] 
 56 [ 21] **********
 64 [152] ********************************************************************
 80 [321] **********************************************************************************************************************************************
 96 [167] **************************************************************************
112 [ 59] ***************************
128 [ 27] ************
160 [ 10] *****
192 [  1] *
224 [  1] *
256 [  0] 
320 [  0] 
--------------------------------------------------------------------------------------------------------------------------------------------------------
   kbps        MS  %     long switch short %
   79.0      100.0        85.2   8.0   6.8
Writing LAME Tag...done
ReplayGain: -1.5dB
hochob@server:~/CodeLabs/ChichenItza/tts# 
```