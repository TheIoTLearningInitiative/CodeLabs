# SpeechRecognition

> Python library for performing speech recognition, with support for several engines and APIs, online and offline. [Github](https://github.com/Uberi/speech_recognition)

> Speech recognition engine/API support:
> - CMU Sphinx (works offline)
> - Google Speech Recognition
> - Google Cloud Speech API
> - Wit.ai
> - Microsoft Bing Voice Recognition
> - Houndify API
> - IBM Speech to Text

```sh
root@edison:~# pip install SpeechRecognition
```

# Examples

> See the examples/ directory in the repository root for usage examples:
> - Recognize speech input from the microphone
> - Transcribe an audio file
> - Save audio data to an audio file
> - Show extended recognition results
> - Calibrate the recognizer energy threshold for ambient noise levels (see recognizer_instance.energy_threshold for details)
> - Listening to a microphone in the background
> - Various other useful recognizer features

```sh
root@edison:~# nano main.py
```

```python
#!/usr/bin/python

# NOTE: this example requires PyAudio because it uses the Microphone class

import speech_recognition as sr

# obtain audio from the microphone
r = sr.Recognizer()
with sr.Microphone() as source:
    print("Say something!")
    audio = r.listen(source)

# recognize speech using Sphinx
try:
    print("Sphinx thinks you said " + r.recognize_sphinx(audio))
except sr.UnknownValueError:
    print("Sphinx could not understand audio")
except sr.RequestError as e:
    print("Sphinx error; {0}".format(e))

# recognize speech using Google Speech Recognition
try:
    # for testing purposes, we're just using the default API key
    # to use another API key, use `r.recognize_google(audio, key="GOOGLE_SPEECH_RECOGNITION_API_KEY")`
    # instead of `r.recognize_google(audio)`
    print("Google Speech Recognition thinks you said " + r.recognize_google(audio))
except sr.UnknownValueError:
    print("Google Speech Recognition could not understand audio")
except sr.RequestError as e:
    print("Could not request results from Google Speech Recognition service; {0}".format(e))
```

```sh
root@edison:~# python main.py
```

## Another Example

```sh
root@edison:~# nano main.py
```

```python
import speech_recognition as sr

r = sr.Recognizer()
m = sr.Microphone()

try:
    print("A moment of silence, please...")
    with m as source: r.adjust_for_ambient_noise(source)
    print("Set minimum energy threshold to {}".format(r.energy_threshold))
    while True:
        print("Say something!")
        with m as source: audio = r.listen(source)
        print("Got it! Now to recognize it...")
        try:
            # recognize speech using Google Speech Recognition
            value = r.recognize_google(audio)

            # we need some special handling here to correctly print unicode characters to standard output
            if str is bytes:  # this version of Python uses bytes for strings (Python 2)
                print(u"You said {}".format(value).encode("utf-8"))
            else:  # this version of Python uses unicode for strings (Python 3+)
                print("You said {}".format(value))
        except sr.UnknownValueError:
            print("Oops! Didn't catch that")
        except sr.RequestError as e:
            print("Uh oh! Couldn't request results from Google Speech Recognition service; {0}".format(e))
except KeyboardInterrupt:
    pass
```

```sh
root@edison:~# python main.py
```
