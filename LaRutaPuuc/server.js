var express        = require('express');  
var app            = express();  
var httpServer = require("http").createServer(app);  
var five = require("johnny-five");
var Edison = require("edison-io");
var io=require('socket.io')(httpServer);

var port = 3000; 

app.use(express.static(__dirname + '/public'));

app.get('/', function(req, res) {  
        res.sendFile(__dirname + '/public/index.html');
});

httpServer.listen(port);  
console.log('Server available at http://localhost:' + port);  
var led;

var board = new five.Board({
    io: new Edison()
});

board.on("ready", function() {  
    console.log('Intel Edison connected');
    button = new five.Button(8);
    led = new five.Led(13);
    led.blink();
});

io.on('connection', function (socket) {  
        console.log(socket.id);

        socket.on('led:on', function (data) {
           led.on();
           console.log('LED ON RECEIVED');
        });

        socket.on('led:off', function (data) {
            led.off();
            console.log('LED OFF RECEIVED');

        });
    });

console.log('Waiting for connection');
