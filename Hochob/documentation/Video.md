# Video

```sh
hochob@server:~$ avconv -f alsa -i plughw:2,0 -f video4linux2 -i /dev/video0 out.mpg
```

```sh
hochob@server:~$ avconv -f video4linux2 -r 25 -i /dev/video0 -f alsa -i plughw:2,0 -ar 22050 -ab 64k -strict experimental -acodec aac -vcodec mpeg4 -y webcam.mp4
```