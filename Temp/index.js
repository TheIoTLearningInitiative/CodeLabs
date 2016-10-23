var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);
var five = require("johnny-five");
var Edison = require("edison-io");
var board = new five.Board({
  io: new Edison()
});

var msglcd;
var led;
var lcd;

board.on("ready", function() {
  led = new five.Led(13);
  lcd = new five.LCD({
    controller: "JHD1313M1"
  });
});

app.get('/', function(req, res){
  res.sendFile(__dirname + '/index.html');
});

io.on('connection', function(socket){
  socket.on('chat message', function(msg){
    io.emit('chat message', msg);
    console.log(msg)
    lcd.cursor(0, 0).print(msg);
    led.blink();
  });
});

http.listen(3000, function(){
  console.log('listening on *:3000');
});
