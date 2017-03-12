# Web Streaming

> OpenCV Camera Web Streaming [Github Smoyerman Live Stream Processed](https://raw.githubusercontent.com/smoyerman/EdisonWebVideoProcessed/master/LiveStreamProcessed.py)

## Hardware Requirements

- Camera UVC Compatible

## Software Requirements

```sh
root@board:~# pip install flask numpy
root@board:~# opkg install python-opencv python-numpy
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