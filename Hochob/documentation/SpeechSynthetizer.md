# Speech Synthetizer

```sh
hochob@server:~# apt install espeak tee
```

1. Record and Play

```sh
hochob@server:~$ espeak --stdout "hello world" | tee -a hello.wav | aplay -
```

2. Record Only

```sh
hochob@server:~$ espeak -w temp.wav "hello world"
```