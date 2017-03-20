#!/usr/bin/env python

import os
import time
import time

from xcamera import takePhoto
from subprocess import call

if __name__ == "__main__":

    directorycurrent = os.path.dirname(os.path.realpath(__file__))

    picturepath = directorycurrent  + "/Pictures/"
    picturename = picturepath + "10.jpeg"
    videoname = time.strftime("%Y%m%d-%H%M%S") + ".mp4"
    videopath = picturepath + videoname

    for i in range(1,120):
        name = "%02d" % i + ".jpeg"
        picture = picturepath + name
        takePhoto(name)

    pictures = picturepath + "%02d.jpeg"
    call(["ffmpeg", "-framerate", "30", "-i", pictures, "-vf", "fps=30", "-pix_fmt", "yuv420p", videopath])
    call(["mv", videopath, "/home/hochob/Selfies/"])
    call(["cp", picturename, "/home/hochob/Pictures/"])

# End of File
