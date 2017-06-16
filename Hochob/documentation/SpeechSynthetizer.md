# Speech Synthetizer

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