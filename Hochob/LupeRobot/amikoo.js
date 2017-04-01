const mqtt = require('mqtt')  
const client = mqtt.connect('mqtt://iot.eclipse.org')

var state = 'closed'

client.on('connect', function () {  
  client.subscribe('lupe/open')
  client.subscribe('lupe/close')

  client.publish('garage/connected', 'true')
  sendStateUpdate()
})

client.on('message', function (topic, message) {  
  console.log('Received message %s %s', topic, message)
  switch (topic) {
    case 'lupe/open':
      return handleOpenRequest(message)
    case 'lupe/close':
      return handleCloseRequest(message)
  }
})

function sendStateUpdate () {  
  console.log('Sending state %s', state)
  client.publish('lupe/state', state)
}

function handleOpenRequest (message) {  
  if (state !== 'open' && state !== 'opening') {
    console.log('Opening Lupe')
    state = 'opening'
    sendStateUpdate()

    setTimeout(function (){
      state = 'open'
      sendStateUpdate()
    }, 5000)
  }
}

function handleCloseRequest (message) {  
  if (state !== 'closed' && state !== 'closing') {
    state = 'closing'
    sendStateUpdate()

    setTimeout(function () {
      state = 'closed'
      sendStateUpdate()
    }, 5000)
  }
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
