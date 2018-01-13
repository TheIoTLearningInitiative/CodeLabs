# Ardupilot Flight Controller

From [Ardupilot Setting up SITL on Linux](http://ardupilot.org/dev/docs/setting-up-sitl-on-linux.html)

Dependencies

```sh
user@workstation:~$ sudo apt-get install python-matplotlib python-serial python-wxgtk3.0 python-wxtools python-lxml
user@workstation:~$ sudo apt-get install python-scipy python-opencv ccache gawk git python-pip python-pexpect
user@workstation:~$ sudo pip install future pymavlink MAVProxy
```

Configuration

```sh
user@workstation:~$ nano ~/.bashrc
export PATH=$PATH:$HOME/src/ardupilot/Tools/autotest
export PATH=/usr/lib/ccache:$PATH
user@workstation:~$ . ~/.bashrc
```

Source Code

```sh
user@workstation:~$ cd src/
user@workstation:~/src$ 
user@workstation:~/src$ git clone git://github.com/ArduPilot/ardupilot.git
user@workstation:~/src$ cd ardupilot
user@workstation:~/src/ardupilot$ git submodule update --init --recursive
```

