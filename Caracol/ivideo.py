import time

from icamera import takePhoto
from subprocess import call

if __name__ == "__main__":

    call(["rm", "files/*.jpeg"])

    for i in range(1,30):
        name = "%02d" % i + ".jpeg"
        takePhoto(name)

    call(["rm", "files/output.mp4"])
    call(["ffmpeg", "-framerate", "20", "-i", "files/%02d.jpeg", "-vf", "fps=20", "-pix_fmt", "yuv420p", "files/output.mp4"])

# End of File
