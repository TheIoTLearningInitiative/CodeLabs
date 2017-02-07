# Voice RSS

> Lately the Text-to-Speech (TTS) technology is becoming available via mobile, WEB and desktop applications. This technology provides new level of interaction between the applications and the users, allowing users to consume information via the auditory senses. It allows users with or without disabilities to receive information more easily and frees the visual sense for other tasks. Today, already many applications provide Text-to-Speech (TTS) technology. Voice RSS provides free text-to-speech online service Voice RSS Text-to-Speech (TTS) API without any software installation! [Homepage](http://www.voicerss.org/)

- [Voice RSS Documentation](http://www.voicerss.org/api/documentation.aspx)
- [Voice RSS API](http://www.voicerss.org/api/)

## Languages

```sh
root@edison:~# nano main.py
```

```python
#!/usr/bin/python
from urllib import urlretrieve

filename = 'speech.wav'
urlretrieve("http://api.voicerss.org/?key=04f49802d32d442ca997d4d2ea76d3d5&hl=en-us&c=wav&src=Hello World", filename)
```

```sh
root@edison:~# python main.py
```

```python
#!/usr/bin/python
from urllib import urlretrieve

filename = 'speech.wav'
urlretrieve("http://api.voicerss.org/?key=04f49802d32d442ca997d4d2ea76d3d5&hl=es-mx&c=wav&src=Hola Mundo", filename)
```
