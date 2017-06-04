const mqtt = require('mqtt')
const client = mqtt.connect('mqtt://iot.eclipse.org')
//const client = mqtt.connect('mqtt://localhost')

var sys = require('sys')
var exec = require('child_process').exec;

function puts(error, stdout, stderr) { sys.puts(stdout) }

function espeak(phrase) {
  var sleep = require('sleep')
  exec("echo " + phrase + " | espeak -ves -w audio.wav", puts);
  sleep.msleep(500);
  exec("aplay audio.wav", puts);  
}

var state = 'closed'

client.on('connect', function () {  
  client.subscribe('lupe/open')
  client.subscribe('lupe/close')
  client.subscribe('lupe/say')

  client.subscribe('lupe/resetall')
  client.subscribe('lupe/headleft')
  client.subscribe('lupe/headright')

  client.subscribe('lupe/leftup')
  client.subscribe('lupe/leftdown')
  client.subscribe('lupe/leftfold')
  client.subscribe('lupe/leftunfold')

  client.subscribe('lupe/rightup')
  client.subscribe('lupe/rightdown')
  client.subscribe('lupe/rightfold')
  client.subscribe('lupe/rightunfold')

  client.subscribe('lupe/moveleft')
  client.subscribe('lupe/moveright')
  client.subscribe('lupe/moveforward')
  client.subscribe('lupe/movebackward')
  client.subscribe('lupe/movestop')

  client.subscribe('lupe/bienvenida')
  client.subscribe('lupe/agradece')
  client.subscribe('lupe/dance')
  client.subscribe('lupe/creador')
  client.subscribe('lupe/norte')

  client.subscribe('lupe/inicial')
  client.subscribe('lupe/emocion')
  client.subscribe('lupe/porsupuesto')
  client.subscribe('lupe/cerebro')
  client.subscribe('lupe/inteledison')

  client.publish('lupe/connected', 'true')
  sendStateUpdate()
})

client.on('message', function (topic, message) {  
  console.log('Received message %s %s', topic, message)
  switch (topic) {
    case 'lupe/open':
      return handleRequestOpen(message)
    case 'lupe/close':
      return handleRequestClose(message)
    case 'lupe/say':
      return handleRequestSay(message)

    case 'lupe/resetall':
      return handleLupe('Inicializacion')
    case 'lupe/headleft':
      return handleLupe('Cabeza Izquierda')
    case 'lupe/headright':
      return handleLupe('Cabeza Derecha')

    case 'lupe/leftup':
      return handleLupe('Mano Izquierda Arriba')
    case 'lupe/leftdown':
      return handleLupe('Mano Izquierda Abajo')
    case 'lupe/leftfold':
      return handleLupe('Codo Izquierdo Doblar')
    case 'lupe/leftunfold':
      return handleLupe('Codo Izquierdo Desdoblar')

    case 'lupe/rightup':
      return handleLupe('Mano Derecha Arriba')
    case 'lupe/rightdown':
      return handleLupe('Mano Derecha Abajo')
    case 'lupe/rightfold':
      return handleLupe('Codo Derecho Doblar')
    case 'lupe/rightunfold':
      return handleLupe('Code Derecho Desdoblar')

    case 'lupe/moveleft':
      return handleLupe('Mover Izquierda')
    case 'lupe/moveright':
      return handleLupe('Mover Derecha')
    case 'lupe/moveforward':
      return handleLupe('Mover Adelante')
    case 'lupe/movebackward':
      return handleLupe('Mover Atras')
    case 'lupe/movestop':
      return handleLupe('Mover Alto')

    case 'lupe/bienvenida':
      return handleLupe('Bienvenido')
    case 'lupe/agradece':
      return handleLupe('Gracias')
    case 'lupe/dance':
      return handleLupe('Bailar')
    case 'lupe/creador':
      return handleLupe('Creador')
    case 'lupe/norte':
      return handleLupe('Norte')

    case 'lupe/inicial':
      return handleSpeakLupe('Hola a todos!')
    case 'lupe/emocion':
      return handleSpeakLupe('Perdon! Lo se!, Es que me emociono!')
    case 'lupe/porsupuesto':
      return handleSpeakLupe('Por supuesto')
    case 'lupe/cerebro':
      return handleSpeakLupe('En mi caso, mi cerebro esta aqui, en la caja azul!')
    case 'lupe/inteledison':
      return handleSpeakLupe('Yo funciono con la plataforma Intel Edison')

  }
})

function sendStateUpdate () {  
  console.log('Sending state %s', state)
  client.publish('lupe/state', state)
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

function handleRequestSay (message) {
    espeak(message)
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
    client.publish('lupe/connected', 'false')
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
