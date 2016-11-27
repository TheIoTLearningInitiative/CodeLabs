import time

from icamera import takePhoto

if __name__ == "__main__":

    for i in range(1,240):
        name = "%02d" % i + ".jpeg"
        takePhoto(name)

# End of File
