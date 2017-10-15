# Ka’an :: Cielo

```sh
user@workstation:~/CodeLabs/Gods/Bitol$ gst-launch-1.0 videotestsrc pattern=ball ! x264enc ! rtph264pay ! udpsink host=qgroundcontrolip port=5600
```

```sh
user@workstation:~/CodeLabs/Gods/Bitol$ dronekit-sitl copter --home=19.3931814,-99.1748997,30,0 --instance 3
```

```sh
user@workstation:~/CodeLabs/Gods/Bitol$ cd /home/pyme/src/Firmware/
user@workstation:~/src/Firmware$ make posix gazebo_typhoon_h480 &
```

```sh
user@workstation:~/CodeLabs/Gods/Bitol$ /home/pyme/Drones/QGroundControl.AppImage &
```