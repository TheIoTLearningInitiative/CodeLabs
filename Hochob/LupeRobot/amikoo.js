const mqtt = require('mqtt')  
const client = mqtt.connect('mqtt://iot.eclipse.org')

var sys = require('sys')
var exec = require('child_process').exec;

function puts(error, stdout, stderr) { sys.puts(stdout) }

function espeak(phrase) {
  console.log(phrase)
  exec("echo " + phrase + " | espeak", puts);
}

var state = 'closed'

client.on('connect', function () {  
  client.subscribe('lupe/open')
  client.subscribe('lupe/close')
  client.subscribe('lupe/say')
  client.subscribe('lupe/bienvenida')
  client.subscribe('lupe/leftup')
  client.subscribe('lupe/leftdown')
  
  client.publish('garage/connected', 'true')
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
    case 'lupe/bienvenida':
      return handleRequestBienvenida('Welcome')
    case 'lupe/leftup':
      return handleLupe('Left Up')
    case 'lupe/leftdown':
      return handleLupe('Left Down')
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

  console.log(message)
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
