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

```
hochob@server:~$ pacmd list-sources | grep -e device.string -e 'name:'
	name: <alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1.monitor>
		device.string = "0"
	name: <alsa_input.usb-Microsoft_Microsoft___LifeCam_Studio_TM_-02.analog-mono>
		device.string = "hw:2"
	name: <alsa_input.pci-0000_00_1b.0.analog-stereo>
		device.string = "front:1"
	name: <hochob_chromecast.2.monitor>
	name: <mkchromecast.monitor>
	name: <mkchromecast.2.monitor>
```

```
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
hochob@server:~$ pacmd move-sink-input 1 2
hochob@server:~$ 
```

# Others

```
hochob@server:~/CodeLabs/Hochob/Audio$ sudo apt-get install npm
hochob@server:~/CodeLabs/Hochob/Audio$ ln -s /usr/bin/nodejs /usr/bin/node
hochob@server:~/CodeLabs/Hochob/Audio$ sudo npm install castnow -g
```


```sh
hochob@server:~/castnow$ sudo apt-get install build-essential libavahi-compat-libdnssd-dev git
hochob@server:~/castnow$ sudo npm install mdns -g
hochob@server:~/castnow$ sudo apt-get install libpulse
hochob@server:~/castnow$ sudo npm install chromecaster-cli -g
```