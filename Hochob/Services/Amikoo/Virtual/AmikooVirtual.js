const mqtt = require('mqtt')
//const client = mqtt.connect('mqtt://127.0.0.1')
//const client = mqtt.connect('mqtt://10.215.56.158')
const client = mqtt.connect('mqtt://iot.eclipse.org')

var sys = require('sys')
var exec = require('child_process').exec;

function puts(error, stdout, stderr) { sys.puts(stdout) }

function espeakDecir(phrase) {
  var sleep = require('sleep')
  exec("echo " + phrase + " | espeak -v es-la -a 200 -p 50 -s 170 -w audio.wav", puts);
  sleep.msleep(500);
  exec("aplay audio.wav", puts);
  sendAck()
}

function espeakSay(phrase) {
  var sleep = require('sleep')
  exec("echo " + phrase + " | espeak -v en-us -a 200 -p 50 -s 170 -w audio.wav", puts);
  sleep.msleep(500);
  exec("aplay audio.wav", puts);  
  sendAck()
}

var state = 'closed'

client.on('connect', function () {  
  client.subscribe('amikoo/#')
  client.subscribe('amikoo/open')
  client.subscribe('amikoo/close')
  client.subscribe('amikoo/sound/speechsynthetizer/say')
  client.subscribe('amikoo/sound/speechsynthetizer/decir')

  client.subscribe('amikoo/resetall')
  client.subscribe('amikoo/headleft')
  client.subscribe('amikoo/headright')

  client.subscribe('amikoo/leftup')
  client.subscribe('amikoo/leftdown')
  client.subscribe('amikoo/leftfold')
  client.subscribe('amikoo/leftunfold')

  client.subscribe('amikoo/rightup')
  client.subscribe('amikoo/rightdown')
  client.subscribe('amikoo/rightfold')
  client.subscribe('amikoo/rightunfold')

  client.subscribe('amikoo/moveleft')
  client.subscribe('amikoo/moveright')
  client.subscribe('amikoo/moveforward')
  client.subscribe('amikoo/movebackward')
  client.subscribe('amikoo/movestop')

  client.subscribe('amikoo/bienvenida')
  client.subscribe('amikoo/agradece')
  client.subscribe('amikoo/dance')
  client.subscribe('amikoo/creador')
  client.subscribe('amikoo/norte')

  client.subscribe('amikoo/inicial')
  client.subscribe('amikoo/emocion')
  client.subscribe('amikoo/porsupuesto')
  client.subscribe('amikoo/cerebro')
  client.subscribe('amikoo/inteledison')

  client.publish('amikoo/connected', 'true')
  sendStateUpdate()
})

client.on('message', function (topic, message) {  
  console.log('Received message %s %s', topic, message)
  switch (topic) {
    case 'amikoo/open':
      return handleRequestOpen(message)
    case 'amikoo/close':
      return handleRequestClose(message)
    case 'amikoo/sound/speechsynthetizer/decir':
      return handleRequestDecir(message)
    case 'amikoo/sound/speechsynthetizer/say':
      return handleRequestSay(message)

    case 'amikoo/resetall':
      return handleLupe('Inicializacion')
    case 'amikoo/headleft':
      return handleLupe('Cabeza Izquierda')
    case 'amikoo/headright':
      return handleLupe('Cabeza Derecha')

    case 'amikoo/leftup':
      return handleLupe('Mano Izquierda Arriba')
    case 'amikoo/leftdown':
      return handleLupe('Mano Izquierda Abajo')
    case 'amikoo/leftfold':
      return handleLupe('Codo Izquierdo Doblar')
    case 'amikoo/leftunfold':
      return handleLupe('Codo Izquierdo Desdoblar')

    case 'amikoo/rightup':
      return handleLupe('Mano Derecha Arriba')
    case 'amikoo/rightdown':
      return handleLupe('Mano Derecha Abajo')
    case 'amikoo/rightfold':
      return handleLupe('Codo Derecho Doblar')
    case 'amikoo/rightunfold':
      return handleLupe('Code Derecho Desdoblar')

    case 'amikoo/moveleft':
      return handleLupe('Mover Izquierda')
    case 'amikoo/moveright':
      return handleLupe('Mover Derecha')
    case 'amikoo/moveforward':
      return handleLupe('Mover Adelante')
    case 'amikoo/movebackward':
      return handleLupe('Mover Atras')
    case 'amikoo/movestop':
      return handleLupe('Mover Alto')

    case 'amikoo/bienvenida':
      return handleLupe('Bienvenido')
    case 'amikoo/agradece':
      return handleLupe('Gracias')
    case 'amikoo/dance':
      return handleLupe('Bailar')
    case 'amikoo/creador':
      return handleLupe('Creador')
    case 'amikoo/norte':
      return handleLupe('Norte')

    case 'amikoo/inicial':
      return handleSpeakLupe('Hola a todos!')
    case 'amikoo/emocion':
      return handleSpeakLupe('Perdon! Lo se!, Es que me emociono!')
    case 'amikoo/porsupuesto':
      return handleSpeakLupe('Por supuesto')
    case 'amikoo/cerebro':
      return handleSpeakLupe('En mi caso, mi cerebro esta aqui, en la caja azul!')
    case 'amikoo/inteledison':
      return handleSpeakLupe('Yo funciono con la plataforma Intel Edison')

  }
})

function sendStateUpdate () {  
  console.log('Sending state %s', state)
  client.publish('amikoo/state', state)
}

function sendAck () {  
  console.log('Sending Ack %s', '1')
  client.publish('amikoo/ack', '1')
}

function handleRequestOpen (message) {  
  if (state !== 'open' && state !== 'opening') {
    console.log('Opening Lupe')
    state = 'opening'
    espeak('Opening')
    sendStateUpdate()

    setTimeout(function (){
      state = 'open'
      sendStateUpdate()
    }, 5000)
  }
}

function handleRequestClose (message) {  
  if (state !== 'closed' && state !== 'closing') {
    state = 'closing'

    espeak('Closing')
    sendStateUpdate()

    setTimeout(function () {
      state = 'closed'
      sendStateUpdate()
    }, 5000)
  }
}

function handleRequestDecir (message) {
    espeakDecir(message)
}

function handleRequestSay (message) {
    espeakSay(message)
}

function handleLupe (message) {
  console.log('Action %s', message)
}

function handleSpeakLupe (message) {
  espeak(message)
}

function handleAppExit (options, err) {
  if (err) {
    console.log(err.stack)
  }

  if (options.cleanup) {
    client.publish('amikoo/connected', 'false')
  }

  if (options.exit) {
    process.exit()
  }
}

process.on('exit', handleAppExit.bind(null, {  
  cleanup: true
}))
process.on('SIGINT', handleAppExit.bind(null, {  
  exit: true
}))
process.on('uncaughtException', handleAppExit.bind(null, {  
  exit: true
}))
