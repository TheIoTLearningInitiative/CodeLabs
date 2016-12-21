
```sh
Ubilinux, Picture Streaming
# apt-get install apache2 php5 libapache2-mod-php5
# apt-get install libjpeg-dev
# apt-get install libv4l-dev
# apt-get install install make git
# apt-get install fswebcam
# wget http://terzo.acmesystems.it/download/webcam/mjpg-streamer.tar.gz
# ln -s /usr/include/libv4l1-videodev.h /usr/include/linux/videodev.h
# nano Makefile # Comment out the line below
PLUGINS += input_gspcav1.so
# cd mjpg-streamer
# make
# ./mjpg_streamer -i "./input_uvc.so -f 15 -r 640x480" -o "./output_http.so -w ./www"
# ./mjpg_streamer -i "./input_uvc.so -f 15 -r 1280x720" -o "./output_http.so -w ./www"
# ./mjpg_streamer -i "input_uvc.so -y -n -f 30 -r 320x240" -o "output_http.so -p 8080 -n -w /www/webcam"
```

```sh
pip install pyTelegramBotAPI
```

http://forums.dlink.com/index.php?topic=57131.0

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