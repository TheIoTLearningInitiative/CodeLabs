const mqtt = require('mqtt')  
const client = mqtt.connect('mqtt://iot.eclipse.org')

var sys = require('sys')
var exec = require('child_process').exec;

function puts(error, stdout, stderr) { sys.puts(stdout) }

function espeak(phrase) {
  exec("echo " + phrase + " | espeak", puts);
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
      return handleLupe('Reset All')
    case 'lupe/headleft':
      return handleLupe('Head Left')
    case 'lupe/headright':
      return handleLupe('Head Right')

    case 'lupe/leftup':
      return handleLupe('Left Up')
    case 'lupe/leftdown':
      return handleLupe('Left Down')
    case 'lupe/leftfold':
      return handleLupe('Left Fold')
    case 'lupe/leftunfold':
      return handleLupe('Left Unfold')

    case 'lupe/rightup':
      return handleLupe('Right Up')
    case 'lupe/rightdown':
      return handleLupe('Right Down')
    case 'lupe/rightfold':
      return handleLupe('Right Fold')
    case 'lupe/rightunfold':
      return handleLupe('Right Unfold')

    case 'lupe/moveleft':
      return handleLupe('Move Left')
    case 'lupe/moveright':
      return handleLupe('Move Right')
    case 'lupe/moveforward':
      return handleLupe('Move Forward')
    case 'lupe/movebackward':
      return handleLupe('Move Backward')
    case 'lupe/movestop':
      return handleLupe('Move Stop')

    case 'lupe/bienvenida':
      return handleLupe('Welcome')
    case 'lupe/agradece':
      return handleLupe('Thanks')
    case 'lupe/dance':
      return handleLupe('Dance')
    case 'lupe/creador':
      return handleLupe('Creator')
    case 'lupe/norte':
      return handleLupe('North')

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
