import os
import time

from xcamera import takePhoto
from subprocess import call

if __name__ == "__main__":

    directorycurrent = os.path.dirname(os.path.realpath(__file__))

    media = directorycurrent + "/files/output.mp4"
    pictures = directorycurrent + "/files/*.jpeg"

    call(["rm", media])
    call(["rm", "-rf", pictures])

    for i in range(1,120):
        name = directorycurrent + "/files/%02d" % i + ".jpeg"
        takePhoto(name)

    pictures = directorycurrent + "/files/%02d.jpeg"
    call(["ffmpeg", "-framerate", "30", "-i", pictures, "-vf", "fps=30", "-pix_fmt", "yuv420p", media])

# End of File
