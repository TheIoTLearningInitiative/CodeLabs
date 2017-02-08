# SpeechRecognition

> Library for performing speech recognition, with support for several engines and APIs, online and offline. [Github](https://github.com/Uberi/speech_recognition)

> Speech recognition engine/API support:
> - CMU Sphinx (works offline)
> - Google Speech Recognition
> - Google Cloud Speech API
> - Wit.ai
> - Microsoft Bing Voice Recognition
> - Houndify API
> - IBM Speech to Text

```sh
root@edison:~# python -m pip install SpeechRecognition
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