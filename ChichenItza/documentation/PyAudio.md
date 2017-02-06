# PyAudio

> PyAudio provides Python bindings for PortAudio, the cross-platform audio I/O library. With PyAudio, you can easily use Python to play and record audio on a variety of platforms, such as GNU/Linux, Microsoft Windows, and Apple Mac OS X / macOS. [Homepage](https://people.csail.mit.edu/hubert/pyaudio/)

Demos

- Play
- Record
- Wire
- Play (Callback)
- Wire (Callback)

- [PyAudio Documentation](https://people.csail.mit.edu/hubert/pyaudio/docs/)
- [For Reference Only](http://stackoverflow.com/questions/33513522/when-installing-pyaudio-pip-cannot-find-portaudio-h-in-usr-local-include)
- [For Reference Only](https://jfraj.github.io/2015/06/17/recording_audio.html)

## Installation

```sh
root@edison:~# python -m pip install pyaudio
```


## Record

```sh
root@edison:~# nano main.py 
...
```

```python
import pyaudio
import wave
 
FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 44100
CHUNK = 1024
RECORD_SECONDS = 5
WAVE_OUTPUT_FILENAME = "file.wav"
 
audio = pyaudio.PyAudio()
 
# start Recording
stream = audio.open(format=FORMAT, channels=CHANNELS,
                rate=RATE, input=True,
                frames_per_buffer=CHUNK)
print "recording..."
frames = []
 
for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
    data = stream.read(CHUNK)
    frames.append(data)
print "finished recording"
 
 
# stop Recording
stream.stop_stream()
stream.close()
audio.terminate()
 
waveFile = wave.open(WAVE_OUTPUT_FILENAME, 'wb')
waveFile.setnchannels(CHANNELS)
waveFile.setsampwidth(audio.get_sample_size(FORMAT))
waveFile.setframerate(RATE)
waveFile.writeframes(b''.join(frames))
waveFile.close()
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