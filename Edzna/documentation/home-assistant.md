# Server

# HomeAssistant Installation

```sh
user@server:~$ sudo apt-get install python3-setuptools
user@server:~$ sudo apt-get install python3-pip
user@server:~$ sudo pip3 install homeassistant
```

# HomeAssistant Configuration

```sh
user@server:~$ ls ~/.homeassistant
configuration.yaml  deps  home-assistant.db  home-assistant.log
```

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

# HomeAssistant Automatic Startup Debian Jessie

```sh
user@server:/etc/init.d# wget https://raw.githubusercontent.com/home-assistant/home-assistant/dev/script/hass-daemon
--2016-10-24 03:02:12--  https://raw.githubusercontent.com/home-assistant/home-assistant/dev/script/hass-daemon
Resolving raw.githubusercontent.com (raw.githubusercontent.com)... 151.101.32.133
Connecting to raw.githubusercontent.com (raw.githubusercontent.com)|151.101.32.133|:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 2783 (2.7K) [text/plain]
Saving to: ‘hass-daemon’

100%[===========================================================================================================>] 2,783       --.-K/s   in 0s      

2016-10-24 03:02:12 (25.6 MB/s) - ‘hass-daemon’ saved [2783/2783]

user@server:/etc/init.d# sudo service hass-daemon start
hass-daemon: unrecognized service
user@server:/etc/init.d# chmod +x /etc/init.d/hass-daemon
user@server:/etc/init.d# sudo update-rc.d hass-daemon defaults
 Adding system startup for /etc/init.d/hass-daemon ...
   /etc/rc0.d/K20hass-daemon -> ../init.d/hass-daemon
   /etc/rc1.d/K20hass-daemon -> ../init.d/hass-daemon
   /etc/rc6.d/K20hass-daemon -> ../init.d/hass-daemon
   /etc/rc2.d/S20hass-daemon -> ../init.d/hass-daemon
   /etc/rc3.d/S20hass-daemon -> ../init.d/hass-daemon
   /etc/rc4.d/S20hass-daemon -> ../init.d/hass-daemon
   /etc/rc5.d/S20hass-daemon -> ../init.d/hass-daemon
user@server:/etc/init.d# sudo service hass-daemon install
Installing Home Assistant Daemon (hass-daemon)
chown: invalid user: ‘USER’
chown: invalid user: ‘USER’
user@server:/etc/init.d# nano hass-daemon 
user@server:/etc/init.d# sudo update-rc.d hass-daemon defaults
 System start/stop links for /etc/init.d/hass-daemon already exist.
user@server:/etc/init.d# sudo service hass-daemon install
Installing Home Assistant Daemon (hass-daemon)
user@server:/etc/init.d# 
```

```sh
sudo nano /etc/init.d/hass-daemon
```

```sh
#!/bin/sh
### BEGIN INIT INFO
# Provides:          hass
# Required-Start:    $local_fs $network $named $time $syslog
# Required-Stop:     $local_fs $network $named $time $syslog
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Description:       Home\ Assistant
### END INIT INFO

# /etc/init.d Service Script for Home Assistant
# Created with: https://gist.github.com/naholyr/4275302#file-new-service-sh
#
# Installation:
#   1) If any commands need to run before executing hass (like loading a
#      virutal environment), put them in PRE_EXEC. This command must end with
#      a semicolon.
#   2) Set RUN_AS to the username that should be used to execute hass.
#   3) Copy this script to /etc/init.d/
#       sudo cp hass-daemon /etc/init.d/hass-daemon
#       sudo chmod +x /etc/init.d/hass-daemon
#   4) Register the daemon with Linux
#       sudo update-rc.d hass-daemon defaults
#   5) Install this service
#       sudo service hass-daemon install
#   6) Restart Machine
#
# After installation, HA should start automatically. If HA does not start,
# check the log file output for errors.
#       /var/opt/homeassistant/home-assistant.log

PRE_EXEC=""
RUN_AS="root"
PID_FILE="/var/run/hass.pid"
#CONFIG_DIR="/var/opt/homeassistant"
CONFIG_DIR="/root/.homeassistant/"
FLAGS="-v --config $CONFIG_DIR --pid-file $PID_FILE --daemon"
REDIRECT="> $CONFIG_DIR/home-assistant.log 2>&1"

start() {
  if [ -f $PID_FILE ] && kill -0 $(cat $PID_FILE) 2> /dev/null; then
    echo 'Service already running' >&2
    return 1
  fi
  echo 'Starting service…' >&2
  local CMD="$PRE_EXEC hass $FLAGS $REDIRECT;"
  su -c "$CMD" $RUN_AS
  echo 'Service started' >&2
}

stop() {
    if [ ! -f "$PID_FILE" ] || ! kill -0 $(cat "$PID_FILE") 2> /dev/null; then
    echo 'Service not running' >&2
    return 1
  fi
  echo 'Stopping service…' >&2
  kill $(cat "$PID_FILE")
  while ps -p $(cat "$PID_FILE") > /dev/null 2>&1; do sleep 1;done;
  echo 'Service stopped' >&2
}

install() {
    echo "Installing Home Assistant Daemon (hass-daemon)"
    echo "999999" > $PID_FILE
    chown $RUN_AS $PID_FILE
    mkdir -p $CONFIG_DIR
    chown $RUN_AS $CONFIG_DIR
}

uninstall() {
  echo -n "Are you really sure you want to uninstall this service? That cannot be undone. [yes|No] "
  local SURE
  read SURE
  if [ "$SURE" = "yes" ]; then
    stop
    rm -fv "$PID_FILE"
    echo "Notice: The config directory has not been removed"
    echo $CONFIG_DIR
    update-rc.d -f hass-daemon remove
    rm -fv "$0"
    echo "Home Assistant Daemon has been removed. Home Assistant is still installed."
  fi
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  install)
    install
    ;;
  uninstall)
    uninstall
    ;;
  restart)
    stop
    start
    ;;
  *)
    echo "Usage: $0 {start|stop|restart|install|uninstall}"
esac
```

```sh
sudo chmod 755 /etc/init.d/hass-daemon
sudo chown root:root /etc/init.d/hass-daemon
sudo update-rc.d hass-daemon defaults
sudo update-rc.d hass-daemon enable
sudo service hass-daemon status
sudo service hass-daemon start
```

```sh
user@server:~$ hass --open-ui
```

Go to http://192.168.1.70:8123/

1. xe1gyq.sytes.net
2. Install noip client
3. whatismyip.org
