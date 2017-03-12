
# Home Clean Up

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Scripts/clean.sh -o - | sh
```

```sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   239  100   239    0     0    195      0  0:00:01  0:00:01 --:--:--   217

Welcome to The IoT Learning Initiative Code Labs Playground

Removing all files under Home directory...
rm: cannot remove '/lib/modules/3.10.98-poky-edison+/build': No such file or directory

Happy Hacking'ing!

root@edison:~# 
```

# CodeLabs Not Available, Setup Up

```sh
root@board:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Scripts/setup.sh -o - | sh
```

```sh
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   469  100   469    0     0    437      0  0:00:01  0:00:01 --:--:--   489

Welcome to The IoT Learning Initiative Code Labs Playground

Cloning into 'CodeLabs'...
remote: Counting objects: 2114, done.
remote: Compressing objects: 100% (13/13), done.
remote: Total 2114 (delta 4), reused 0 (delta 0), pack-reused 2101
Receiving objects: 100% (2114/2114), 325.17 KiB | 212.00 KiB/s, done.
Resolving deltas: 100% (1111/1111), done.
Checking connectivity... done.
Downloading http://iotdk.intel.com/repos/3.5/intelgalactic/opkg/i586//Packages.
Updated list of available packages in /var/lib/opkg/iotkit.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/all/Packages.
Updated list of available packages in /var/lib/opkg/iotdk-all.
Downloading http://iotdk.intel.com/repos/3.5/iotdk/edison/core2-32/Packages.
...
...
...
Successfully installed dweepy-0.2.0

Now go to CodeLabs/Xpuhil directory to get started!

Happy Xpuhil'ing!


Happy Hacking'ing!
```

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