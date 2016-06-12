Introduction
==

```sh
root@edison:~# git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
Cloning into 'CodeLabs'...
remote: Counting objects: 323, done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 323 (delta 0), reused 0 (delta 0), pack-reused 320
Receiving objects: 100% (323/323), 142.55 KiB | 0 bytes/s, done.
Resolving deltas: 100% (136/136), done.
Checking connectivity... done.
root@edison:~# cd CodeLabs/
root@edison:~/CodeLabs# 
```

```sh
root@edison:~/CodeLabs# git clone https://github.com/xe1gyq/core.git
Cloning into 'core'...
remote: Counting objects: 1294, done.
remote: Compressing objects: 100% (166/166), done.
remote: Total 1294 (delta 95), reused 0 (delta 0), pack-reused 1125
Receiving objects: 100% (1294/1294), 596.34 KiB | 595.00 KiB/s, done.
Resolving deltas: 100% (716/716), done.
Checking connectivity... done.
root@edison:~/CodeLabs# 
```

```sh
root@edison:~/CodeLabs# ls
AudioCapturePlayback         LICENSE              TelegramBotSensors
FaceRecognitionWebStreaming  PictureWebStreaming  TextToSpeech
ImageCaptureOpenCV           README.md            WebServerFlask
ImageWebpageFlask            SUMMARY.md           core                          
Introduction.md              SpeechToText                                       
root@edison:~/CodeLabs# 
```


```sh
git clone https://github.com/TheIoTLearningInitiative/CodeLabs.git
cd CodeLabs
git clone https://github.com/xe1gyq/core.git
pip install -r requirements.pip
```

## Giekis

```sh
git clone https://github.com/xe1gyq/giekis.git
cd giekis/
pip install -r requirements.pip
git clone https://github.com/xe1gyq/core.git
sh requirements.opkg
```