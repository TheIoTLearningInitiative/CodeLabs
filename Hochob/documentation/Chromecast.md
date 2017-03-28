# Chromecast

# Issues

- Make package to start

# Audio

```sh
hochob@server:~$ sudo apt-get install pulseaudio-dlna
```

```sh
hochob@server:~$ pulseaudio-dlna -e ogg
```

```sh
hochob@server:~$ pacmd list-sinks | grep -e 'name:' -e 'index'
  * index: 0
	name: <alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1>
    index: 1
	name: <alsa_output.pci-0000_00_1b.0.analog-stereo>
    index: 2
	name: <hochob_chromecast>
hochob@server:~$ 
```

```sh
hochob@server:~$ pacmd list-sink-inputs
1 sink input(s) available.
    index: 1
	driver: <protocol-native.c>
	flags: START_CORKED 
	state: RUNNING
	sink: 0 <alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1>
	volume: front-left: 65536 / 100% / 0.00 dB,   front-right: 65536 / 100% / 0.00 dB
	        balance 0.00
	muted: no
	current latency: 75.02 ms
	requested latency: 25.00 ms
	sample spec: float32le 2ch 48000Hz
	channel map: front-left,front-right
	             Stereo
	resample method: speex-float-1
	module: 8
	client: 5 <Firefox>
	properties:
		media.name = "AudioStream"
		application.name = "Firefox"
		native-protocol.peer = "UNIX socket client"
		native-protocol.version = "31"
		application.process.id = "1808"
		application.process.user = "hochob"
		application.process.host = "server"
		application.process.binary = "plugin-container"
		application.language = "en_US.UTF-8"
		window.x11.display = ":0.0"
		application.process.machine_id = "113ccc1687214a70ae6c3ecee5fd153f"
		application.process.session_id = "c1"
		module-stream-restore.id = "sink-input-by-application-name:Firefox"
```

```sh
hochob@server:~$ pacmd move-sink-input 1 2
```

# stream2chromecast

```sh
hochob@server:~$ cd CodeLabs/Hochob/Audio/
hochob@server:~/CodeLabs/Hochob/Audio$ ls
SectionOne.sh  SectionThree.sh  SectionTwo.sh
hochob@server:~/CodeLabs/Hochob/Audio$ git clone https://github.com/Pat-Carter/stream2chromecast
Cloning into 'stream2chromecast'...
remote: Counting objects: 317, done.
remote: Total 317 (delta 0), reused 0 (delta 0), pack-reused 317
Receiving objects: 100% (317/317), 129.82 KiB | 0 bytes/s, done.
Resolving deltas: 100% (172/172), done.
Checking connectivity... done.
hochob@server:~/CodeLabs/Hochob/Audio$ 
```

```sh
hochob@server:~/CodeLabs/Hochob/Audio$ cd stream2chromecast/
hochob@server:~/CodeLabs/Hochob/Audio/stream2chromecast$ ls
cc_device_finder.py  cc_media_controller.py  cc_message.py  LICENSE  README.md  stream2chromecast.py
hochob@server:~/CodeLabs/Hochob/Audio/stream2chromecast$ 
```

```sh
hochob@server:~/stream2chromecast$ python stream2chromecast.py ~/Audio/SectionOne.mp3 

-----------------------------------------

Stream2Chromecast version:0.6.3

Copyright (C) 2014-2016 Pat Carter
GNU General Public License v3.0
https://www.gnu.org/licenses/gpl-3.0.html

-----------------------------------------

searching the network for a Chromecast device
device name: Hochob
source is file: /home/hochob/Audio/SectionOne.mp3
local ip address: 192.168.1.109
OS identifies the mimetype as : audio/mpeg
URL & content-type:  http://192.168.1.109:38801?/home/hochob/Audio/SectionOne.mp3 audio/mpeg
loading media...
192.168.1.101 - - [28/Mar/2017 11:53:15] "GET /?/home/hochob/Audio/SectionOne.mp3 HTTP/1.1" 200 -
sending data
waiting for player to finish - press ctrl-c to stop...
done
hochob@server:~/CodeLabs/Hochob/Audio/stream2chromecast$ 
```

## Create MP3 Files

```sh
ChichenItza/tts/mainvrss.py
```

```sh
hochob@server:~/CodeLabs$ git diff
diff --git a/ChichenItza/tts/mainvrss.py b/ChichenItza/tts/mainvrss.py
index b36f687..2a7d105 100644
--- a/ChichenItza/tts/mainvrss.py
+++ b/ChichenItza/tts/mainvrss.py
@@ -3,8 +3,8 @@ import subprocess
 
 voice = voicerssurllib.speech({
        'key': '9fbff2d35eb54b62998515ccbc656a07',
-       'hl': 'en-us',
-       'src': 'Hello World! Now we are talking!',
+       'hl': 'es-mx',
+       'src': 'Bienvenidos a la seccion tress, disfruta de una serie de demos',
        'r': '0',
        'c': 'wav',
        'f': '44khz_16bit_stereo',
hochob@server:~/CodeLabs$ 
```

```sh
hochob@server:~/CodeLabs/ChichenItza/tts$ ls
audio.mp3  audio.wav  mainpyttsx.py  mainvrss.py  voicerssurllib.py  voicerssurllib.pyc
hochob@server:~/CodeLabs/ChichenItza/tts$ 
```