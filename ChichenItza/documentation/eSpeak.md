# eSpeak

> eSpeakNG is a compact open source software speech synthesizer for Linux, Windows and other platforms. It uses a formant synthesis method, providing many languages in a small size. Much of the programming for eSpeakNG's language support is done using rule files with feedback from native speakers. [Wikipedia](https://en.wikipedia.org/wiki/ESpeakNG)

```sh
root@edison:~# espeak --voices=variant
Pty Language Age/Gender VoiceName          File          Other Languages
 5  variant        F  female2              !v/f2         
 5  variant        F  female3              !v/f3         
 5  variant        F  female4              !v/f4         
 5  variant        F  female5              !v/f5         
 5  variant        F  female_whisper       !v/whisperf   
 5  variant        -  klatt                !v/klatt      
 5  variant        -  klatt2               !v/klatt2     
 5  variant        -  klatt3               !v/klatt3     
 5  variant        -  klatt4               !v/klatt4     
 5  variant        M  male2                !v/m2         
 5  variant        M  male3                !v/m3         
 5  variant        M  male4                !v/m4         
 5  variant        M  male5                !v/m5         
 5  variant        M  male6                !v/m6         
 5  variant        M  male7                !v/m7         
 5  variant        M  whisper              !v/whisper    
 5  variant      70F  female1              !v/f1         
 5  variant      70M  croak                !v/croak      
 5  variant      70M  male1                !v/m1         
root@edison:~# 
```

```sh
root@edison:~# echo "hello world" | espeak                                                                                         
ALSA lib /export/users/neck/iotdk_3.5_dev/workdir/build_edison/tmp/work/core2-32-poky-linux/alsa-lib/1.0.28-r0/alsa-lib-1r
root@edison:~# 
```