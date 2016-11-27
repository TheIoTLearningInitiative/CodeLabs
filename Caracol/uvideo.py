import ConfigParser
import os
import time

from xcamera import takePhoto
from subprocess import call
from xtwitter import sendVideo

if __name__ == "__main__":

    configuration = ConfigParser.ConfigParser()
    directorycurrent = os.path.dirname(os.path.realpath(__file__))

    configuration.read(directorycurrent + '/configuration/messages.config')
    status = configuration.get('twitter','video')

    media = directorycurrent + "/files/output.mp4"
    pictures = directorycurrent + "/files/*.jpeg"

    call(["rm", media])
    call(["rm", "-rf", pictures])

    for i in range(1,30):
        name = directorycurrent + "/files/%02d" % i + ".jpeg"
        takePhoto(name)

    pictures = directorycurrent + "/files/%02d.jpeg"
    call(["ffmpeg", "-framerate", "20", "-i", pictures, "-vf", "fps=20", "-pix_fmt", "yuv420p", media])

    sendVideo(status + " 02", media)

# End of File
