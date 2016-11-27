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

    def tweet(self, status="", media=None):
        if media:
            photo = open(media,'rb')
            self.twythonid.update_status_with_media(media=photo, status=status)
        else:
            self.twythonid.update_status(status=status)

    def vweet(self, status="", media=

if __name__ == "__main__":

    idTwitter = xTwitter()
    idTwitter.tweet('#TheIoTLearningInitiative Testing Time', None)

# End of File
