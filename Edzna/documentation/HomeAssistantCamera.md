# Camera

```sh
user@server:~$ nano ~/.homeassistant/configuration.yaml
```

```
camera:
  - platform: generic
    name: HikvisionCamImage
    still_image_url: http://10.0.74.78/Streaming/channels/1/picture
    username: admin
    password: 12345
  - platform: generic
    name: DlinkImage
    still_image_url: http://admin:@10.0.72.82/image/jpeg.cgi
  - platform: mjpeg
    name: DlinkVideo
    mjpeg_url: http://admin:@10.0.72.82/video/mjpg.cgi
```