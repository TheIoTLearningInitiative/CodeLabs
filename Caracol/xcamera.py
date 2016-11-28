#!/usr/bin/python

import commands
import logging
import os

class xCamera(object):

    def __init__(self, media="files/photo.jpg"):
        self.picturefswebcam = media

    def __del__(self):
        pass

    def filepath(self):
        return self.picturefswebcam

    def setup(self):
        self.fswebcam = 'fswebcam'
        self.fswebcamarguments = ' -r 1280x720 -s brightness=65% -s Contrast=50% -s Gamma=100% --jpeg 100 --no-banner '
        #self.fswebcamarguments = ' -r 1280x720 --jpeg 100 --no-banner '
        self.fswebcamcommand = self.fswebcam + self.fswebcamarguments + self.picturefswebcam

    def capture(self):

        self.setup()
        status, output = commands.getstatusoutput(self.fswebcamcommand)

def takePhoto(photoname):

        idCamera = xCamera(photoname)
        idCamera.capture()

if __name__ == "__main__":

        idCamera = xCamera()
        idCamera.capture()

# End of File
