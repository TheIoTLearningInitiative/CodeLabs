# Xcambo

> Mqtt Sensor Data 

## Hardware Requirements

- None

## Software Requirements

```sh
root@board:~# pip install psutil paho-mqtt
root@board:~# opkg install python-dev
root@board:~# wget https://launchpad.net/python-weather-api/trunk/0.3.8/+download/pywapi-0.3.8.tar.gz
root@board:~# tar zxvf pywapi-0.3.8.tar.gz
root@board:~# cd pywapi-0.3.8
root@board:~# python setup.py build
root@board:~# python setup.py install
root@board:~# cd ..
root@board:~# rm -rf pywapi-0.3.8*
```

## Setup

```sh
root@edison:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/uxmal/setup.sh -o - | sh
```

## Code

```sh
root@board:~# vi LiveStreamProcessed.py
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
root@board:~# python LiveStreamProcessed.py 
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger pin code: 775-529-825
```

