# PyAudio Record

- [To Explore](https://github.com/rhee/sam-alexa-pi)
- [To Study](http://stackoverflow.com/questions/4160175/detect-tap-with-pyaudio-from-live-mic)

```sh
root@edison:~# nano main.py
```

```python
#!/usr/bin/env python  

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
root@edison:~# 
```

## Root-Mean-Square

```sh
root@edison:~# nano main.py
```

```python
#!/usr/bin/env python  

import pyaudio
import wave
import audioop

FORMAT = pyaudio.paInt16
CHANNELS = 2
RATE = 44100
CHUNK = 1024
RECORD_SECONDS = 5
WAVE_OUTPUT_FILENAME = output.wav
 
audio = pyaudio.PyAudio()
 
# Start Recording
stream = audio.open(format=FORMAT, channels=CHANNELS,
                    rate=RATE, input=True,
                    frames_per_buffer=CHUNK)
print "recording..."
frames = []

threshold = 1000
for i in range(0, int(RATE / CHUNK * RECORD_SECONDS)):
    data = stream.read(CHUNK)
    rms = audioop.rms(data,2)
    if rms > threshold:
        print "I am hearing you now"
    frames.append(data)
print "finished recording"
 
# Stop Recording
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
root@edison:~# 
```

## Errors

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

Reboot...
