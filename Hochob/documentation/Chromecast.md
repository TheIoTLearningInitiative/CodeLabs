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