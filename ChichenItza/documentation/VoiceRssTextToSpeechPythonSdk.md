# Voice RSS Text To Speech Python SDK

> The Voice RSS Text-to-Speech Python SDK wraps Voice RSS Text-to-Speech API. The Voice RSS Text-to-Speech Python SDKs will help to make integration with our Text-to-Speech API faster and easer. [Homepage](http://www.voicerss.org/sdk/python.aspx)

```sh
root@edison:~# nano voicerss_tts.py
```

```python
import httplib, urllib

def speech(settings):
	__validate(settings)
	return __request(settings)

def __validate(settings):
	if not settings: raise RuntimeError('The settings are undefined')
	if 'key' not in settings or not settings['key']: raise RuntimeError('The API key is undefined')
	if 'src' not in settings or not settings['src']: raise RuntimeError('The text is undefined')
	if 'hl' not in settings or not settings['hl']: raise RuntimeError('The language is undefined')

def __request(settings):
	result = {'error': None, 'response': None}

	headers = {'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'}
	params = urllib.urlencode(__buildRequest(settings))
	
	if 'ssl' in settings and settings['ssl']:
		conn = httplib.HTTPSConnection('api.voicerss.org:443')
	else:
		conn = httplib.HTTPConnection('api.voicerss.org:80')
		
	conn.request('POST', '/', params, headers)
	
	response = conn.getresponse()
	content = response.read()
	
	if response.status != 200:
		result['error'] = response.reason
	elif content.find('ERROR') == 0:
		result['error'] = content
	else:
		result['response'] = content
		
	conn.close()

	return result

def __buildRequest(settings):
	params = {'key': '', 'src': '', 'hl': '', 'r': '', 'c': '', 'f': '', 'ssml': '', 'b64': ''}
	
	if 'key' in settings: params['key'] = settings['key']
	if 'src' in settings: params['src'] = settings['src']
	if 'hl' in settings: params['hl'] = settings['hl']
	if 'r' in settings: params['r'] = settings['r']
	if 'c' in settings: params['c'] = settings['c']
	if 'f' in settings: params['f'] = settings['f']
	if 'ssml' in settings: params['ssml'] = settings['ssml']
	if 'b64' in settings: params['b64'] = settings['b64']
	
	return params
```

```sh
root@edison:~# nano main.py
```

```python
import voicerss_tts

voice = voicerss_tts.speech({
    'key': '',
    'hl': 'en-us',
    'src': 'Hello World! Now we are talking!',
    'r': '0',
    'c': 'wav',
    'f': '44khz_16bit_stereo',
    'ssml': 'false',
    'b64': 'false'
})

newFile = open ("voicerss.wav", "wb")
newFile.write(voice['response'])
newFile.close()
```

```sh
root@edison:~# python main.py
```

```sh
root@edison:~# aplay voicerss.wav
```


