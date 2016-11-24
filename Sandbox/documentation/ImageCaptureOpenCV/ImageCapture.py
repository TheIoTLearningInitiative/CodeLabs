import cv2
import time

camera = cv2.VideoCapture(0)

def get_image():
    retval, im = camera.read()
    return im

camera_capture = get_image()
cv2.imwrite("image.jpg", camera_capture)

del(camera)
