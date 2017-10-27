const mqtt = require('mqtt')
const client = mqtt.connect('mqtt://iot.eclipse.org')

var command = ''
//Actual Code//

const exec = require('child_process').exec;

client.on('connect', () => {

	client.subscribe('amikoo/leftup')
	client.subscribe('amikoo/leftdown')
	client.subscribe('amikoo/leftfold')
	client.subscribe('amikoo/leftunfold')
	client.subscribe('amikoo/moveleft')
	client.subscribe('amikoo/headleft')
	client.subscribe('amikoo/headright')
	client.subscribe('amikoo/moveforward')
	client.subscribe('amikoo/movestop')
	client.subscribe('amikoo/movebackward')
	client.subscribe('amikoo/rightup')
	client.subscribe('amikoo/rightdown')
	client.subscribe('amikoo/rightfold')
	client.subscribe('amikoo/rightunfold')
	client.subscribe('amikoo/moveright')
	client.subscribe('amikoo/resetall')
	client.subscribe('amikoo/bienvenida')
	client.subscribe('amikoo/agradece')
	client.subscribe('amikoo/dance')
	client.subscribe('amikoo/creador')
	client.subscribe('amikoo/norte')

	//Comandos de voz
	client.subscribe('amikoo/inicial')
	client.subscribe('amikoo/emocion')
	client.subscribe('amikoo/porsupuesto')
	client.subscribe('amikoo/cerebro')
	client.subscribe('amikoo/inteledison')

	//Saber si amikoo esta conectada
	client.publish('amikoo/connected', '1')

})

client.on('message', (topic,message) => {
	console.log('receive message %s %s', topic, message)

	switch(topic){
		case 'amikoo/leftup':
			command = '00'
			break;
		case 'amikoo/inicial':
			command = '40'
			break;
		case 'amikoo/emocion':
			command = '41'
			break;
		case 'amikoo/porsupuesto':
			command = '42'
			break;
		case 'amikoo/cerebro':
			command = '43'
			break;
		case 'amikoo/inteledison':
			command = '44'
			break;
		case 'amikoo/leftdown':
			command = '20'
			break;			
		case 'amikoo/leftfold':
			command = '01'
			break;
		case 'amikoo/leftunfold':
			command = '21'
			break;
		case 'amikoo/moveleft':
			command = '02'
			break;
		case 'amikoo/headleft':	
			command = '04'
			break;
		case 'amikoo/headright':	
			command = '24'
			break;
		case 'amikoo/moveforward':
			command = '05'
			break;
		case 'amikoo/movestop':	
			command = '06'
			break;
		case 'amikoo/movebackward':
			command = '07'
			break;
		case 'amikoo/rightup'	:
			command = '08'
			break;
		case 'amikoo/rightdown':
			command = '28'
			break;
		case 'amikoo/rightfold':
			command = '09'
			break;
		case 'amikoo/rightunfold':
			command = '29'
			break;
		case 'amikoo/moveright':	
			command = '10'
			break;
		case 'amikoo/resetall':
			command = '11'
			break;
		case 'amikoo/bienvenida':	
			command = '80'
			break;
		case 'amikoo/agradece':
			command = '81'
			break;
		case 'amikoo/dance':	
			command = '82'
			break;
		case 'amikoo/creador':
			command = '83'
			break;
		case 'amikoo/norte':	
			command = '84'
			break;
	}

	accionLupe(command);

})

function accionLupe(number){
	exec('./HochobAction ' + number, (e, stdout, stderr) =>{
		if(e instanceof Error){
			console.error(e);
			throw e;
		}
		console.log('stdout ', stdout);
		console.log('stderr ', stderr);
	});
}

//      Handler for exits      //
function handleAppExit(options, err){
	if(err){
		console.log(err.stack)
	}

	if(options.cleanup){
		client.publish('amikoo/connected', '0')
	}

	if(options.exit){
		process.exit()
	}
}

// HANDLERS the differents ways an application can shutdown

process.on('exit', handleAppExit.bind(null,{
	cleanup: true
}))

process.on('SIGINT', handleAppExit.bind(null,{
	exit: true
}))

process.on('uncaughtException', handleAppExit.bind(null,{
	exit: true
}))