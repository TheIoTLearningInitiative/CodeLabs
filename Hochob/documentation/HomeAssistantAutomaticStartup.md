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

```