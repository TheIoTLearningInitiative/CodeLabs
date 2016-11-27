import ConfigParser
import os

from xcamera import takePhoto
from xtwitter import sendPhoto

if __name__ == "__main__":

    configuration = ConfigParser.ConfigParser()
    directorycurrent = os.path.dirname(os.path.realpath(__file__))
    configuration.read(directorycurrent + '/configuration/credentials.config')
    status = configuration.get('twitter','pictures')

    media = "files/smile.jpeg"

    takePhoto(media)
    sendPhoto(status, media)

# End of File
