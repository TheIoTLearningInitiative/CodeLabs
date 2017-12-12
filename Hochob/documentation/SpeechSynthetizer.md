# Speech Synthetizer

## Espeak

```sh
hochob@server:~$ sudo apt install espeak tee
```

1. Record and Play

```sh
hochob@server:~$ espeak --stdout "hello world" | tee -a hbsSoundSsEspeakOutput.wav | aplay -
```

2. Record Only

```sh
hochob@server:~$ espeak -w hbsSoundSsEspeakOutput.wav "hello world"
```

## Festival

```sh
sudo apt-get install festival festival-doc festvox-kdlpc16k festvox-ellpc11k
```

## Pico

```sh
sudo apt-get install libttspico0 libttspico-utils libttspico-data
```

- https://web.archive.org/web/20070615221707/http://cslu.cse.ogi.edu/tts/flinger/
- https://web.archive.org/web/20060831005215/http://speech.bme.ogi.edu/cgi-bin/flinger/show_jukebox.pl?all
- http://tcts.fpms.ac.be/synthesis/mbrola/mbrcopybin.html