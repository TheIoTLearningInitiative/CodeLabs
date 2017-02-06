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
root@edison:~# echo "hello world" | espeak -ven+whisper
ALSA lib /export/users/neck/iotdk_3.5_dev/workdir/build_edison/tmp/work/core2-32-poky-linux/alsa-lib/1.0.28-r0/alsa-lib-1r
root@edison:~# 
```

```sh
root@edison:~# echo "hello world" | espeak -ven+m5
ALSA lib /export/users/neck/iotdk_3.5_dev/workdir/build_edison/tmp/work/core2-32-poky-linux/alsa-lib/1.0.28-r0/alsa-lib-1r
root@edison:~# 
```

# Voices

```sh
root@edison:~# espeak --voices                                                                                            
Pty Language Age/Gender VoiceName          File          Other Languages
 5  af             M  afrikaans            other/af      
 5  an             M  aragonese            europe/an     
 5  bg             -  bulgarian            europe/bg     
 5  bs             M  bosnian              europe/bs     
 5  ca             M  catalan              europe/ca     
 5  cs             M  czech                europe/cs     
 5  cy             M  welsh                europe/cy     
 5  da             M  danish               europe/da     
 5  de             M  german               de            
 5  el             M  greek                europe/el     
 5  en             M  default              default       
 2  en-gb          M  english              en            (en-uk 2)(en 2)
 5  en-sc          M  en-scottish          other/en-sc   (en 4)
 5  en-uk-north    M  english-north        other/en-n    (en-uk 3)(en 5)
 5  en-uk-rp       M  english_rp           other/en-rp   (en-uk 4)(en 5)
 5  en-uk-wmids    M  english_wmids        other/en-wm   (en-uk 9)(en 9)
 2  en-us          M  english-us           en-us         (en-r 5)(en 3)
 5  en-wi          M  en-westindies        other/en-wi   (en-uk 4)(en 10)
 5  eo             M  esperanto            other/eo      
 5  es             M  spanish              europe/es     
 5  es-la          M  spanish-latin-am     es-la         (es-mx 6)(es 6)
 5  et             -  estonian             europe/et     
 5  fa             -  persian              asia/fa       
 5  fa-pin         -  persian-pinglish     asia/fa-pin   
 5  fi             M  finnish              europe/fi     
 5  fr-be          M  french-Belgium       europe/fr-be  (fr 8)
 5  fr-fr          M  french               fr            (fr 5)
 5  ga             -  irish-gaeilge        europe/ga     
 5  grc            M  greek-ancient        other/grc     
 5  hi             M  hindi                asia/hi       
 5  hr             M  croatian             europe/hr     (hbs 5)
 5  hu             M  hungarian            europe/hu     
 5  hy             M  armenian             asia/hy       
 5  hy-west        M  armenian-west        asia/hy-west  (hy 8)
 5  id             M  indonesian           asia/id       
 5  is             M  icelandic            europe/is     
 5  it             M  italian              europe/it     
 5  jbo            -  lojban               other/jbo     
 5  ka             -  georgian             asia/ka       
 5  kn             -  kannada              asia/kn       
 5  ku             M  kurdish              asia/ku       
 5  la             M  latin                other/la      
 5  lfn            M  lingua_franca_nova   other/lfn     
 5  lt             M  lithuanian           europe/lt     
 5  lv             M  latvian              europe/lv     
 5  mk             M  macedonian           europe/mk     
 5  ml             M  malayalam            asia/ml       
 5  ms             M  malay                asia/ms       
 5  ne             M  nepali               asia/ne       
 5  nl             M  dutch                europe/nl     
 5  no             M  norwegian            europe/no     (nb 5)
 5  pa             -  punjabi              asia/pa       
 5  pl             M  polish               europe/pl     
 5  pt-br          M  brazil               pt            (pt 5)
 5  pt-pt          M  portugal             europe/pt-pt  (pt 6)
 5  ro             M  romanian             europe/ro     
 5  ru             M  russian              europe/ru     
 5  sk             M  slovak               europe/sk     
 5  sq             M  albanian             europe/sq     
 5  sr             M  serbian              europe/sr     
 5  sv             M  swedish              europe/sv     
 5  sw             M  swahili-test         other/sw      
 5  ta             M  tamil                asia/ta       
 5  tr             M  turkish              asia/tr       
 5  vi             M  vietnam              asia/vi       
 5  vi-hue         M  vietnam_hue          asia/vi-hue   
 5  vi-sgn         M  vietnam_sgn          asia/vi-sgn   
 5  zh             M  Mandarin             asia/zh       
 5  zh-yue         M  cantonese            asia/zh-yue   (yue 5)(zhy 5)
root@edison:~# 
```

```sh
root@edison:~# echo "hola mundo" | espeak -ves      
ALSA lib /export/users/neck/iotdk_3.5_dev/workdir/build_edison/tmp/work/core2-32-poky-linux/alsa-lib/1.0.28-r0/alsa-lib-1r
root@edison:~# 
```