# Video

```sh
hochob@server:~$ avconv -f alsa -i plughw:2,0 -f video4linux2 -i /dev/video0 out.mpg
```

```sh
hochob@server:~$ avconv -f video4linux2 -r 25 -i /dev/video0 -f alsa -i plughw:2,0 -ar 22050 -ab 64k -strict experimental -acodec aac -vcodec mpeg4 -y webcam.mp4
```

```sh
http://hamelot.io/visualization/using-ffmpeg-to-convert-a-set-of-images-into-a-video/
```

- Output
  - Image
    - FFMPEG_IMAGE
  - Image, Audio, Bulk
    - dri
      $FFMPEG_BINARY -i "$LOCAL_DIRECTORY/"%04d.jpg -i $LOCAL_AUDIO $FFMPEG_ARGUMENTS $FFMPEG_VIDEO_AUDIO
  - Image, Audio, 
      $FFMPEG_BINARY -loop 1 -i $LOCAL_IMAGE -i $LOCAL_AUDIO $FFMPEG_ARGUMENTS $LOCAL_VIDEO      
    
