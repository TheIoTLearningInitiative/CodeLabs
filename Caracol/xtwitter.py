import ConfigParser
import os

from twython import Twython

class xTwitter(object):

    def __init__(self):

        self.configuration = ConfigParser.ConfigParser()
        self.directorycurrent = os.path.dirname(os.path.realpath(__file__))
        self.configuration.read(self.directorycurrent + '/configuration/credentials.config')
        self.consumer_key = self.configuration.get('twitter','consumer_key')
        self.consumer_secret = self.configuration.get('twitter','consumer_secret')
        self.access_token = self.configuration.get('twitter','access_token')
        self.access_token_secret = self.configuration.get('twitter','access_token_secret')
        self.twythonid = Twython(self.consumer_key, \
                                 self.consumer_secret, \
                                 self.access_token, \
                                 self.access_token_secret)

    def tweet(self, status=""):
        self.twythonid.update_status(status=status)

    def pweet(self, status="", media=None):
        photo = open(media,'rb')
        response = self.twythonid.upload_media(media=photo)
        self.twythonid.update_status(status=status, media_ids=[response['media_id']])

    def vweet(self, status="", media=None):
        video = open(media, 'rb')
        response = self.twythonid.upload_video(media=video, media_type='video/mp4')
        self.twythonid.update_status(status=status, media_ids=[response['media_id']])

def sendTweet(status):

    idTwitter = xTwitter()
    idTwitter.tweet(status)

def sendPicture(status, picture):

    idTwitter = xTwitter()
    idTwitter.tweet(status=status, media=picture)

def sendVideo(status, video):

    idTwitter = xTwitter()
    idTwitter.tweet(status=status, media=video)

if __name__ == "__main__":

    idTwitter = xTwitter()
    idTwitter.tweet("#TheIoTLearningInitiative Text")
    idTwitter.pweet("#TheIoTLearningInitiative Picture", "files/01.jpeg")
    idTwitter.vweet("#TheIoTLearningInitiative Video", "files/output.mp4")

# End of File
