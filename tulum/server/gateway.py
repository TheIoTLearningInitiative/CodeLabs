import tornado.httpserver
import tornado.websocket
import tornado.ioloop
from tornado.ioloop import PeriodicCallback
import tornado.web
from random import randint
from datetime import date

port = 9000
timeInterval= 2000

value = 0

class WSHandler(tornado.websocket.WebSocketHandler):
    def check_origin(self, origin):
        return True

    def open(self):
        self.callback = PeriodicCallback(self.send_values, timeInterval)
        self.callback.start()

    def send_values(self):
        global value
        self.write_message(str(value))

    def on_message(self, message):
        pass

    def on_close(self):
        self.callback.stop()

class SensorHandler(tornado.web.RequestHandler):
    def get(self):
        global value
        value = self.get_argument("value", "0")
        response = { 'version': '0.1',
                     'timestamp':  date.today().isoformat(),
                     'path': self.request.path,
                     'sensor value': value }
        self.write(response)

application = tornado.web.Application([
    (r'/', WSHandler),
    (r"/sensor", SensorHandler),
])

if __name__ == "__main__":
    http_server = tornado.httpserver.HTTPServer(application)
    http_server.listen(port)
    tornado.ioloop.IOLoop.instance().start()
