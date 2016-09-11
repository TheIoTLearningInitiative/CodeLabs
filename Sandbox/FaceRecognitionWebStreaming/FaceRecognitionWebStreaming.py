from flask import Flask, Response
import cv2
import numpy as np
import time

class Camera(object):
    def __init__(self):
        self.cap = cv2.VideoCapture(0)
	self.cap.set(3,480)
	self.cap.set(4,360)
        self.image = None
        self.temporal = "temporal.jpg"
        self.faces = "faces.jpg"

    def get_frame(self):

        ret, self.image = self.cap.read()

        cv2.imwrite(self.temporal, self.image)

        faceCascade = cv2.CascadeClassifier("classifier/haarcascade_frontalface_alt.xml")
        image = cv2.imread(self.temporal)
        gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)
        faces = faceCascade.detectMultiScale(
            gray,
            scaleFactor=1.1,
            minNeighbors=5,
            minSize=(30, 30),
            flags = cv2.cv.CV_HAAR_SCALE_IMAGE
        )
        print "Found {0} faces!".format(len(faces))

        for (x, y, w, h) in faces:
            cv2.rectangle(image, (x, y), (x+w, y+h), (0, 255, 0), 2)

	cv2.imwrite(self.faces,np.hstack((self.image,image)))
	return open(self.faces, 'rb').read()

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
    app.run(host='0.0.0.0', port=1234, debug=True)
