# Pyttsx - Text-to-speech x-platform

> pyttsx is a Python package supporting common text-to-speech engines on Mac OS X, Windows, and Linux. [Homepage](https://pypi.python.org/pypi/pyttsx)

- [Pyttsx Documentation](http://pyttsx.readthedocs.io/en/latest/)

```sh
root@edison:~# pip install pyttsx
Downloading/unpacking pyttsx
  Downloading pyttsx-1.1.tar.gz
  Running setup.py egg_info for package pyttsx
    
Installing collected packages: pyttsx
  Running setup.py install for pyttsx
    
Successfully installed pyttsx
Cleaning up...
root@edison:~# 
```

```sh
root@edison:~# nano main.py
```

```python
import pyttsx

engine = pyttsx.init()
engine.say('Hello World Python Text To Speech X Platform')
engine.runAndWait()
```

```sh
root@edison:~# python main.py
```