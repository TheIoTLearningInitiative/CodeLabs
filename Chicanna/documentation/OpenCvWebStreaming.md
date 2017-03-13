# Web Streaming

> OpenCV Camera Web Streaming [Github Smoyerman Live Stream Processed](https://raw.githubusercontent.com/smoyerman/EdisonWebVideoProcessed/master/LiveStreamProcessed.py)

## Hardware Requirements

- Camera UVC Compatible

## Software Requirements

```sh
root@board:~# echo > /etc/opkg/base-feeds.conf
root@board:~# cat << EOT >> /etc/opkg/base-feeds.conf
src/gz all http://repo.opkg.net/edison/repo/all
src/gz edison http://repo.opkg.net/edison/repo/edison
src/gz core2-32 http://repo.opkg.net/edison/repo/core2-32
EOT
root@board:~# 
```

```sh
root@board:~# opkg install python-dev
root@board:~# opkg install http://repo.opkg.net/edison/repo/core2-32/python-numpy_1.7.0-r1_core2-32.ipk
root@board:~# opkg install http://repo.opkg.net/edison/repo/core2-32/python-opencv_2.4.11+git0+2c9547e314-r0_core2-32.ipk
```

```sh
root@board:~# pip install pip --upgrade
root@board:~# pip install flask numpy
```

## Code

```sh
root@board:~/CodeLabs/Uxmal# vi ocvwebstreaming.py
```

```python
from flask import Flask, Response
import cv2
import numpy as np

class Camera(object):
    def __init__(self):
        self.cap = cv2.VideoCapture(0)
	    self.cap.set(3,480)
	    self.cap.set(4,360)

    def get_frame(self):
	    ret, frame = self.cap.read()
	    laplacian = cv2.Laplacian(frame,cv2.CV_64F)
	    cv2.imwrite('imagewritten.jpg',np.hstack((frame,laplacian)))
	    return open('imagewritten.jpg', 'rb').read()

app = Flask(__name__)

def gen(camera):
    while True:
        frame = camera.get_frame()
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + frame + b'\r\n')

@app.route('/')
def video_feed():
    return Response(gen(Camera()),
                    mimetype='multipart/x-mixed-replace; boundary=frame')

if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)
```

## Execution

```sh
root@board:~/CodeLabs/Chicanna/webstreaming# python ocvwebstreaming.py 
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger pin code: 775-529-825
```

Go to your IntelEdisonBoardIp:5000