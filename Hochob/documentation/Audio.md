# Audio

# Lame

```sh
hochob@server:~$ sudo apt-get install lame
```

# Text To Speech

```sh
root@kali:~/CodeLabs/ChichenItza/tts# nano mainvrss.py
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