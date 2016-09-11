# Dashboard

```
root@openstackme:~# pip install tornado
```

```
root@openstackme:~# cd /var/www/html/iot101inc
root@openstackme:/var/www/html/iot101inc# rm index.html
root@openstackme:/var/www/html/iot101inc# 
```

# UberSimpleWebsockets, Example

> Extremely simple example of websocket using Python/Perl (server-side) and Javascript (client-side) [UberSimpleWebsockets](https://github.com/albertobeta/UberSimpleWebsockets)

```
root@openstackme:/var/www/html/iot101inc# git clone https://github.com/albertobeta/UberSimpleWebsockets.git
Cloning into 'UberSimpleWebsockets'...
remote: Counting objects: 24, done.
remote: Total 24 (delta 0), reused 0 (delta 0), pack-reused 24
Unpacking objects: 100% (24/24), done.
Checking connectivity... done.
root@openstackme:/var/www/html/iot101inc# 
```

```sh
root@openstackme:/var/www/html/iot101inc/UberSimpleWebsockets# ls
client-Chart.html  client-JustLog.html  LICENSE  README.md  send.pl  send.py
root@openstackme:/var/www/html/iot101inc/UberSimpleWebsockets# 
root@openstackme:/var/www/html/iot101inc/UberSimpleWebsockets# cd ..
root@openstackme:/var/www/html/iot101inc# 
```

# IoT101 Inc. End to End Industrial Automation System

http://104.236.227.50:9000/sensor?value=5

```sh
root@openstackme:/var/www/html/iot101inc# nano index.html
```

```html
<html>
<head>
<title>Uber Simple Websockets - IoT 101 Inc</title>

<!-- Websocket -->
<script type="text/javascript">

var port = 9000;
var host = "ws://104.236.227.50:"+port;


var socket;
var explodedValues = [0];

function init() {
        try {
                socket = new WebSocket(host);
                console.log('WebSocket status '+socket.readyState);
                socket.onopen    = function(msg) {
                        console.log("Welcome - status "+this.readyState);
                };
                socket.onmessage = function(msg) {
                        console.log("Message Received: "+msg.data);
                        explodedValues = msg.data.split(';');
                        for(var i=0; i<explodedValues.length; i++) { explodedValues[i] = +explodedValues[i]; } 
                        drawVisualization();
                };
                socket.onclose   = function(msg) {
                        console.log("Disconnected - status "+this.readyState); 
                };
        }
        catch(ex){ 
                console.log(ex); 
        }

}

function quit(){
        if (socket != null) {
                console.log("Close Socket");
                socket.close();
                socket=null;
        }
}

function reconnect() {
        quit();
        init();
}

</script>

<!-- Google Chart -->
<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<script type="text/javascript">

  function drawVisualization() {
    var data = google.visualization.arrayToDataTable([
        ['Tracker', '1'],
        ['Sensor', explodedValues[0]],
    ]);

    var view = new google.visualization.DataView(data);
    view.setColumns([0, {
        type: 'number',
        label: data.getColumnLabel(1),
        calc: function () {return 0;}
    }]);

    var chart = new google.visualization.BarChart(document.getElementById('visualization'));

    var options = {
        title:"End to End Industrial Automation System",
        width: 600,
        height: 400,
        bar: { groupWidth: "95%" },
        legend: { position: "none" },
        animation: {
            duration: 800
        },
        hAxis: {
            minValue: 0,
            maxValue: 10
        }
    };

    var runOnce = google.visualization.events.addListener(chart, 'ready', function () {
        google.visualization.events.removeListener(runOnce);
        chart.draw(data, options);
    });

    chart.draw(view, options);

    $(window).resize(function() {
        chart.draw(data, options);
    });
}
google.load('visualization', '1', {packages: ['corechart'], callback: drawVisualization});

</script>

</head>
<body onload="init()">
<h3>Uber Simple Websockets - IoT 101 Inc</h3>

<div id="visualization"></div>

<button onclick="reconnect()">Reconnect</button>

</body>
</html>
```

# Gateway

```sh
root@openstackme:/var/www/html/iot101inc# nano gateway.py
```

```python
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
```

```sh
root@openstackme:/var/www/html/iot101inc# python gateway.py 
```

# Web Browser

- http://104.236.227.50/iot101inc/
- http://104.236.227.50:9000/sensor?value=15


