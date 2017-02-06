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

```python
INFO: ngram_search_fwdtree.c(338): after: 3 root, 4 non-root channels, 11 single-phone words
INFO: ngram_search_fwdflat.c(156): fwdflat: min_ef_width = 4, max_sf_win = 25
* recording
Traceback (most recent call last):
  File "ts.py", line 34, in <module>
    data = stream.read(CHUNK)
  File "/usr/lib/python2.7/site-packages/pyaudio.py", line 608, in read
    return pa.read_stream(self._stream, num_frames, exception_on_overflow)
IOError: [Errno -9981] Input overflowed
INFO: ngram_search_fwdtree.c(430): TOTAL fwdtree 0.00 CPU -nan xRT
INFO: ngram_search_fwdtree.c(433): TOTAL fwdtree 0.00 wall -nan xRT
INFO: ngram_search_fwdflat.c(174): TOTAL fwdflat 0.00 CPU -nan xRT
INFO: ngram_search_fwdflat.c(177): TOTAL fwdflat 0.00 wall -nan xRT
INFO: ngram_search.c(317): TOTAL bestpath 0.00 CPU -nan xRT
INFO: ngram_search.c(320): TOTAL bestpath 0.00 wall -nan xRT
```