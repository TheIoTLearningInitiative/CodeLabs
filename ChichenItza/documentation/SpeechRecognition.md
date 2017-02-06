# SpeechRecognition

```python
>>> buf = stream.read(1024)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/lib/python2.7/site-packages/pyaudio.py", line 608, in read
    return pa.read_stream(self._stream, num_frames, exception_on_overflow)
TypeError: function takes exactly 2 arguments (3 given)
>>> buf = stream.read(1024)
```

```sh
pip install SpeechRecognition --upgrade
pip install pyaudio --upgrade
pip install wheel --upgrade
```