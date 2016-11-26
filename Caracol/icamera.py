#!/usr/bin/python

import commands
import logging
import os

class iCamera(object):

    def __init__(self, photoname="photo.jpeg"):
        self.directorycurrent = os.path.dirname(os.path.realpath(__file__))
        self.directoryfiles = self.directorycurrent + '/files/'
        self.picturefswebcam = self.directoryfiles + photoname

    def __del__(self):
        pass

    def filepath(self):
        return self.picturefswebcam

    def setup(self):
        self.fswebcam = 'fswebcam'
        self.fswebcamarguments = ' '
        #self.fswebcamarguments = ' -r 1280x720 -s brightness=65% -s Contrast=50% -s Gamma=100% --jpeg 100 --no-banner '
        self.fswebcamcommand = self.fswebcam + self.fswebcamarguments + self.picturefswebcam

    def capture(self):

        self.setup()
        status, output = commands.getstatusoutput(self.fswebcamcommand)

def takePhoto():

        idCamera = iCamera()
        idCamera.capture()

if __name__ == "__main__":

        idCamera = iCamera()
        idCamera.capture()

# End of File
