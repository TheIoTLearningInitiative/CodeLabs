# Chicanna

> 

## Hardware Requirements

- None

## Software Requirements

```sh
root@board:~# pip install numpy
root@board:~# opkg install python-dev python-opencv python-numpy
```

## Setup

```sh
root@edison:~# curl https://raw.githubusercontent.com/TheIoTLearningInitiative/CodeLabs/master/Chicanna/setup.sh -o - | sh
```

## Code

```sh
root@edison:~/CodeLabs/Chicanna# vi main.py
```

```python
#!/usr/bin/python

import cv2
import os
import sys

class Chicanna(object):

    def __init__(self, imageinput="imageinput.jpeg", imageoutput="imageoutput.jpeg"):
        self.directorycurrent = os.path.dirname(os.path.realpath(__file__))
        self.directoryoutput = self.directorycurrent
        self.imageinput = imageinput
        self.cascPath = "haarcascade_frontalface_alt.xml"
        self.imageoutput = imageoutput

    def detect(self):
        faceCascade = cv2.CascadeClassifier(self.cascPath)
        image = cv2.imread(self.imageinput)
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
        cv2.imwrite(self.imageoutput, image)
        cv2.waitKey(0)

if __name__ == "__main__":

    idChicanna = Chicanna(imageinput='imageinput.jpeg', imageoutput='imageoutput.jpeg')
    idChicanna.detect()
```

## Execution

```sh
root@edison:~/CodeLabs/Chicanna# python main.py 
Found 23 faces!
root@edison:~/CodeLabs/Chicanna# 
```