# VLC Media Player

## VLC UI

```sh
user@server:~$ vlc
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[000055ea6fed00e8] core libvlc: Running vlc with the default interface. Use 'cvlc' to use vlc without interface.
QObject::~QObject: Timers cannot be stopped from another thread
user@server:~$ 
```

## VLC Command Line

```sh
user@server:~$ cvlc 
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[000055d0e7c69808] dummy interface: using the dummy interface module...
```

```sh
user@server:~$ cvlc Pigeon.mp4 
VLC media player 2.2.4 Weatherwax (revision 2.2.3-37-g888b7e89)
[0000558ca75bd078] dummy interface: using the dummy interface module...
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
Failed to open VDPAU backend libvdpau_i965.so: cannot open shared object file: No such file or directory
[00007f08bc001d78] xcb_window window error: X server failure

^C
user@server:~$ 
```
