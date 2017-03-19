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
After=network.target

[Service]
Type=simple
User=%i
ExecStart=/usr/bin/hass

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
```

```sh
root@server:/lib/systemd/system# sudo systemctl start home-assistant.service
root@server:/lib/systemd/system# sudo systemctl status home-assistant.service
● home-assistant.service - Home Assistant
   Loaded: loaded (/lib/systemd/system/home-assistant.service; enabled; vendor preset: enabled)
   Active: active (running) since dom 2017-03-19 11:11:47 CST; 3s ago
 Main PID: 13429 (hass)
    Tasks: 11 (limit: 4915)
   CGroup: /system.slice/home-assistant.service
           ├─13429 /usr/bin/python3 /usr/local/bin/hass
           └─13441 /usr/bin/python3 -m pip install --quiet aiohttp_cors==0.5.0 --upgrade --target /root/.homeassistant/deps

mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded tts from homeassistant.components.tts
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded tts.google from homeassistant.components.tts.google
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded updater from homeassistant.components.updater
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded history from homeassistant.components.history
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded conversation from homeassistant.components.conversation
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded discovery from homeassistant.components.discovery
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.loader:Loaded config from homeassistant.components.config
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.core:Bus:Handling <Event service_registered[L]: service=set_visibility, domain=group>
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.core:Bus:Handling <Event service_registered[L]: service=reload, domain=group>
mar 19 11:11:49 server hass[13429]: INFO:homeassistant.core:Bus:Handling <Event component_loaded[L]: component=group>
root@server:/lib/systemd/system# 
```