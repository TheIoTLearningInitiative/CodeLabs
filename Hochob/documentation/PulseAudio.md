# Pulse Audio


```sh
pacmd set-card-profile 0 output:hdmi-stereo-extra1
pacmd set-card-profile 0 output:hdmi-stereo-extra2
```

# Issues

- Latency when playing through HDMI

```sh
hochob@server:~/CodeLabs/Hochob/LupeRobot$ pacmd set-sink-volume 0 65537
hochob@server:~/CodeLabs/Hochob/LupeRobot$ pacmd set-sink-mute 0 0
```


```
apt-get install vorbis-tools
apt-get install mpg123
apt-get install sox
hochob@server:~/CodeLabs/Hochob/LupeRobot$ pacmd set-default-sink 0
hochob@server:~/CodeLabs/Hochob/LupeRobot$ espeak "hello world" --stdout | sox - -t vorbis - | ogg123 - 
```

# Espeak

```sh
sudo apt-get install automake
sudo apt-get install libtool
```

```
apt-get install festival festvox-ellpc11k
apt-get install festival
echo "hola mundo" | festival --tts --language spanish
```
# Pulse Audio


```sh
hochob@server:~$ pacmd
Welcome to PulseAudio 9.0! Use "help" for usage information.
>>> list-sinks
```

```sh
2 sink(s) available.
  * index: 0
	name: <alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1>
	driver: <module-alsa-card.c>
	flags: HARDWARE DECIBEL_VOLUME LATENCY DYNAMIC_LATENCY
	state: SUSPENDED
	suspend cause: IDLE 
	priority: 9950
	volume: front-left: 65536 / 100% / 0.00 dB,   front-right: 65536 / 100% / 0.00 dB
	        balance 0.00
	base volume: 65536 / 100% / 0.00 dB
	volume steps: 65537
	muted: no
	current latency: 0.00 ms
	max request: 0 KiB
	max rewind: 0 KiB
	monitor source: 0
	sample spec: s16le 2ch 44100Hz
	channel map: front-left,front-right
	             Stereo
	used by: 0
	linked by: 0
	configured latency: 0.00 ms; range is 0.50 .. 371.52 ms
	card: 0 <alsa_card.pci-0000_00_03.0>
	module: 6
	properties:
		alsa.resolution_bits = "16"
		device.api = "alsa"
		device.class = "sound"
		alsa.class = "generic"
		alsa.subclass = "generic-mix"
		alsa.name = "HDMI 1"
		alsa.id = "HDMI 1"
		alsa.subdevice = "0"
		alsa.subdevice_name = "subdevice #0"
		alsa.device = "7"
		alsa.card = "0"
		alsa.card_name = "HDA Intel HDMI"
		alsa.long_card_name = "HDA Intel HDMI at 0xaa134000 irq 49"
		alsa.driver_name = "snd_hda_intel"
		device.bus_path = "pci-0000:00:03.0"
		sysfs.path = "/devices/pci0000:00/0000:00:03.0/sound/card0"
		device.bus = "pci"
		device.vendor.id = "8086"
		device.vendor.name = "Intel Corporation"
		device.product.id = "160c"
		device.product.name = "Broadwell-U Audio Controller"
		device.form_factor = "internal"
		device.string = "hdmi:0,1"
		device.buffering.buffer_size = "65536"
		device.buffering.fragment_size = "32768"
		device.access_mode = "mmap+timer"
		device.profile.name = "hdmi-stereo-extra1"
		device.profile.description = "Digital Stereo (HDMI 2)"
		device.description = "Built-in Audio Digital Stereo (HDMI 2)"
		alsa.mixer_name = "Intel Broadwell HDMI"
		alsa.components = "HDA:80862808,80860101,00100000"
		module-udev-detect.discovered = "1"
		device.icon_name = "audio-card-pci"
	ports:
		hdmi-output-1: HDMI / DisplayPort 2 (priority 5800, latency offset 0 usec, available: yes)
			properties:
				device.icon_name = "video-display"
				device.product.name = "X551S"
	active port: <hdmi-output-1>
    index: 1
	name: <alsa_output.pci-0000_00_1b.0.analog-stereo>
	driver: <module-alsa-card.c>
	flags: HARDWARE HW_MUTE_CTRL HW_VOLUME_CTRL DECIBEL_VOLUME LATENCY DYNAMIC_LATENCY
	state: SUSPENDED
	suspend cause: IDLE 
	priority: 9959
	volume: front-left: 57962 /  88% / -3.20 dB,   front-right: 57962 /  88% / -3.20 dB
	        balance 0.00
	base volume: 65536 / 100% / 0.00 dB
	volume steps: 65537
	muted: no
	current latency: 0.00 ms
	max request: 0 KiB
	max rewind: 0 KiB
	monitor source: 1
	sample spec: s16le 2ch 44100Hz
	channel map: front-left,front-right
	             Stereo
	used by: 0
	linked by: 0
	configured latency: 0.00 ms; range is 0.50 .. 371.52 ms
	card: 1 <alsa_card.pci-0000_00_1b.0>
	module: 20
	properties:
		alsa.resolution_bits = "16"
		device.api = "alsa"
		device.class = "sound"
		alsa.class = "generic"
		alsa.subclass = "generic-mix"
		alsa.name = "ALC283 Analog"
		alsa.id = "ALC283 Analog"
		alsa.subdevice = "0"
		alsa.subdevice_name = "subdevice #0"
		alsa.device = "0"
		alsa.card = "1"
		alsa.card_name = "HDA Intel PCH"
		alsa.long_card_name = "HDA Intel PCH at 0xaa130000 irq 47"
		alsa.driver_name = "snd_hda_intel"
		device.bus_path = "pci-0000:00:1b.0"
		sysfs.path = "/devices/pci0000:00/0000:00:1b.0/sound/card1"
		device.bus = "pci"
		device.vendor.id = "8086"
		device.vendor.name = "Intel Corporation"
		device.product.id = "9ca0"
		device.product.name = "Wildcat Point-LP High Definition Audio Controller"
		device.form_factor = "internal"
		device.string = "front:1"
		device.buffering.buffer_size = "65536"
		device.buffering.fragment_size = "32768"
		device.access_mode = "mmap+timer"
		device.profile.name = "analog-stereo"
		device.profile.description = "Analog Stereo"
		device.description = "Built-in Audio Analog Stereo"
		alsa.mixer_name = "Realtek ALC283"
		alsa.components = "HDA:10ec0283,80862058,00100003"
		module-udev-detect.discovered = "1"
		device.icon_name = "audio-card-pci"
	ports:
		analog-output-headphones: Headphones (priority 9000, latency offset 0 usec, available: yes)
			properties:
				device.icon_name = "audio-headphones"
	active port: <analog-output-headphones>
>>> 

```

```sh
>>> list-samples
0 cache entrie(s) available.
>>> set-default-sink 0
>>> 
```

```sh
pacmd << EOF
set-default-sink 0
EOF
```

# Set Default

```sh
hochob@server:~$ pacmd list-sources | grep -e device.string -e 'name:'
	name: <alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1.monitor>
		device.string = "0"
	name: <alsa_input.usb-Microsoft_Microsoft___LifeCam_Studio_TM_-02.analog-mono>
		device.string = "hw:1"
	name: <alsa_output.pci-0000_00_1b.0.analog-stereo.monitor>
		device.string = "2"
	name: <alsa_input.pci-0000_00_1b.0.analog-stereo>
		device.string = "front:2"
hochob@server:~$ 
```

```sh
hochob@server:~$ sudo nano /etc/pulse/default.pa
set-default-sink alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1.monitor
```

```sh
hochob@server:~$ pacmd "set-default-sink alsa_output.pci-0000_00_03.0.hdmi-stereo-extra1.monitor"
```

```sh
hochob@server:~$ pacmd "set-default-source alsa_input.usb-Microsoft_Microsoft___LifeCam_Studio_TM_-02.analog-mono"
hochob@server:~$ arecord hola
Recording WAVE 'hola' : Unsigned 8 bit, Rate 8000 Hz, Mono
^CAborted by signal Interrupt...
hochob@server:~$ aplay hola 
```

```sh
...
.ifexists module-udev-detect.so
load-module module-udev-detect tsched=0
.else
...
set-default-sink 0
set-default-source 3
``