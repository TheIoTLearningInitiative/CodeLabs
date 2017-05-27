# Speech Synthetizer

1. Record and Play

```sh
espeak --stdout "hello world" | tee -a hello.wav | aplay -
```

2. Record Only

```sh
espeak --stdout "hello world" | tee -a hello.wav
```