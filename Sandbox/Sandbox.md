
```
dcs-2121   MJPEG   http://IPADDRESS/video/mjpg.cgi   No   None      
DCS-2121   JPEG   http://IPADDRESS/image/jpeg.cgi   No   None
```

```python
import pyupm_th02
sensor = pyupm_th02.TH02()
sensor.getTemperature()
print "Temperatura: " + str(sensor.getTemperature()) + " Humedad: " + str(sensor.getHumidity())
```

```python
import pyupm_hcsr04
sensor = pyupm_hcsr04.HCSR04(5, 6);
print sensor.getDistance(5)
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

## Giekis

```sh
git clone https://github.com/xe1gyq/giekis.git
cd giekis/
pip install -r requirements.pip
sh requirements.opkg
git clone https://github.com/xe1gyq/core.git
```

```sh
curl https://bootstrap.pypa.io/ez_setup.py -o - | python
```