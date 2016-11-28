# Graphics

```sh
user@ubuntu:~$ xrandr -q
Screen 0: minimum 320 x 200, current 1360 x 768, maximum 4096 x 4096
VGA1 connected 1360x768+0+0 (normal left inverted right x axis y axis) 760mm x 450mm
   1360x768      60.02*+
   1280x768      59.87  
   1024x768      75.08    70.07    60.00  
   800x600       72.19    75.00    60.32  
   640x480       75.00    72.81    60.00  
   720x400       70.08  
DVI1 disconnected (normal left inverted right x axis y axis)
```

```sh
user@ubuntu:~$ xrandr --output LVDS1 --rotate right
user@ubuntu:~$ xrandr --output LVDS1 --rotate left
user@ubuntu:~$ xrandr --output LVDS1 --rotate inverted
user@ubuntu:~$ xrandr --output LVDS1 --rotate normal
```

ToDo. 