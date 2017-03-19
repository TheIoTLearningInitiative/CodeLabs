# Home Assistant: Automatic Startup

```sh
root@server:~# ps -p 1 -o comm=
systemd
root@server:~# 
```

```sh
root@server:~# cd /lib/systemd/system/
root@server:/lib/systemd/system# ls /etc/systemd/system/
bluetooth.target.wants                      default.target.wants           hibernate.target.wants       printer.target.wants  timers.target.wants
dbus-org.bluez.service                      display-manager.service        hybrid-sleep.target.wants    sockets.target.wants
dbus-org.freedesktop.Avahi.service          display-manager.service.wants  multi-user.target.wants      suspend.target.wants
dbus-org.freedesktop.ModemManager1.service  getty.target.wants             network-online.target.wants  sysinit.target.wants
dbus-org.freedesktop.nm-dispatcher.service  graphical.target.wants         paths.target.wants           syslog.service
```

```sh
root@server:/lib/systemd/system# nano /lib/systemd/system/home-assistant.service
```

```sh
[Unit]
Description=Home Assistant
Requires=docker.service
After=docker.service

[Service]
Restart=always
RestartSec=3
ExecStart=/usr/bin/docker run --name="home-assistant-%i" -v /home/%i/.homeassistant/:/config -v /etc/localtime:/etc/localtime:ro --net=host homeassistant/home-assistant
ExecStop=/usr/bin/docker stop -t 2 home-assistant-%i
ExecStopPost=/usr/bin/docker rm -f home-assistant-%i

[Install]
WantedBy=multi-user.target
```

```sh
root@server:/lib/systemd/system# sudo ln -s /lib/systemd/system/home-assistant.service /etc/systemd/system/home-assistant.service
root@server:/lib/systemd/system# 
```

```sh
root@server:/lib/systemd/system# sudo systemctl --system daemon-reload
root@server:/lib/systemd/system# sudo systemctl enable home-assistant.service
Created symlink /etc/systemd/system/multi-user.target.wants/home-assistant.service → /lib/systemd/system/home-assistant.service.
root@server:/lib/systemd/system# 
```