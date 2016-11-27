import ConfigParser
import os

from xcamera import takePhoto
from xtwitter import sendPicture

if __name__ == "__main__":

    configuration = ConfigParser.ConfigParser()
    directorycurrent = os.path.dirname(os.path.realpath(__file__))
    configuration.read(directorycurrent + '/configuration/messages.config')
    status = configuration.get('twitter','picture')

    media = directorycurrent + "/files/smile.jpeg"

    takePhoto(media)
    sendPicture(status, media)

# End of File
