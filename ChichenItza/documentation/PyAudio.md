# PyAudio

> PyAudio provides Python bindings for PortAudio, the cross-platform audio I/O library. With PyAudio, you can easily use Python to play and record audio on a variety of platforms, such as GNU/Linux, Microsoft Windows, and Apple Mac OS X / macOS. [Homepage](https://people.csail.mit.edu/hubert/pyaudio/)

- [For Reference Only](http://stackoverflow.com/questions/33513522/when-installing-pyaudio-pip-cannot-find-portaudio-h-in-usr-local-include)

## Installation

```sh
root@edison:~# python -m pip install pyaudio
```

## Play

```sh
root@edison:~# nano main.py 
```

```python
#!usr/bin/env python  
#coding=utf-8  

import pyaudio  
import wave  

#define stream chunk   
chunk = 1024  

#open a wav format music  
f = wave.open(r"/usr/share/sounds/alsa/Rear_Center.wav","rb")  
#instantiate PyAudio  
p = pyaudio.PyAudio()  
#open stream  
stream = p.open(format = p.get_format_from_width(f.getsampwidth()),  
                channels = f.getnchannels(),  
                rate = f.getframerate(),  
                output = True)  
#read data  
data = f.readframes(chunk)  

#play stream  
while data:  
    stream.write(data)  
    data = f.readframes(chunk)  

#stop stream  
stream.stop_stream()  
stream.close()  

#close PyAudio  
p.terminate()
```

```sh
root@edison:~# python main.py 
```

## Record

```sh
root@edison:~# nano main.py 
...
```

```python
import pyaudio
import wave

CHUNK = 1024
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 44100
RECORD_SECONDS = 5
WAVE_OUTPUT_FILENAME = "output.wav"

p = pyaudio.PyAudio()

stream = p.open(format=FORMAT,
                channels=CHANNELS,
                rate=RATE,
                input=True,
                frames_per_buffer=CHUNK)

print("* recording")

frames = []

for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
    data = stream.read(CHUNK)
    frames.append(data)

print("* done recording")

stream.stop_stream()
stream.close()
p.terminate()

wf = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
wf.setnchannels(CHANNELS)
wf.setsampwidth(p.get_sample_size(FORMAT))
wf.setframerate(RATE)
wf.writeframes(b''.join(frames))
wf.close()
```

```sh
root@edison:~# python main.py 
...
recording...
...
Traceback (most recent call last):
  File "main.py", line 21, in <module>
    data = stream.read(CHUNK)
  File "/usr/lib/python2.7/site-packages/pyaudio.py", line 608, in read
    return pa.read_stream(self._stream, num_frames, exception_on_overflow)
IOError: [Errno -9981] Input overflowed
```