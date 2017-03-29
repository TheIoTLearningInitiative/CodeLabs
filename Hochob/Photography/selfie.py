#!/usr/bin/env python

import os
import time

from xcamera import takePhoto
from subprocess import call

if __name__ == "__main__":

    directorycurrent = os.path.dirname(os.path.realpath(__file__))

    mediapath = directorycurrent  + "/Media/"

    picturename = time.strftime("%Y%m%d-%H%M%S") + ".jpg"
    picturepath = mediapath + picturename

    videoname = time.strftime("%Y%m%d-%H%M%S") + ".mp4"
    videopath = mediapath + videoname

    for i in range(1,240):
        name = "%02d" % i + ".jpg"
        picture = mediapath + name
        call(["cp", picture, "/home/hochob/Pictures/"])
        takePhoto(picture)

    takePhoto(picturename)

    pictures = mediapath + "%02d.jpg"
    #call(["ffmpeg", "-framerate", "30", "-i", pictures, "-vf", "fps=30", "-pix_fmt", "yuv420p", videopath])
    call(["ffmpeg", "-framerate", "10", "-i", pictures, "-vf", "fps=10", "-pix_fmt", "yuv420p", videopath])
    call(["cp", videopath, "/home/hochob/VideosSelfies/"])
    call(["mv", videopath, "/home/hochob/VideosSelfies/latest.mp4"])

# End of File
