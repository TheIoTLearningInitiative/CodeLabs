# -*- coding: utf-8 -*- 

import voicerssurllib
import subprocess

voice = voicerssurllib.speech({
	'key': '9fbff2d35eb54b62998515ccbc656a07',
	'hl': 'es-mx',
	#'src': 'Hace mucho tiempo existieron civilizaciones muy inteligentes que lograron hacer descubrimientos que cambiaron la forma de vivir y desarrollaron tecnología que aún hoy en día utilizamos. Entre esas civilizaciones importantes  como Babilonia, India y China se encontraban los mayas. ¿Quién de ustedes sabe que hicieron los mayas?',
	#'src': 'o ¿Por qué son tan importantes?',
	#'src': 'Los mayas han sido un pueblo muy avanzado, sin duda una de las grandes civilizaciones mundiales. Uno de los aspectos destacados de su cultura fue su gran avance en las matemáticas, pues su sistema numérico, desarrollado de forma independiente al resto del mundo era muy avanzado y complejo. Tanto que hasta contaban con la noción del Cero y su simbología, fue la primera cultura que representó en América el número 0. Es decir, de alguna manera, los mayas ya entendían el concepto de “cero” y “nada”. Y se preguntarán ¿de qué manera trascendió este uso de cero y su sistema numérico con la tecnología? Gracias al uso de 0 y 1, fue posible crear un lenguaje binario (es decir solo de dos números), con el cual se constituyó una forma de comunicación entre las máquinas tecnológicas y los humanos. A su vez, a partir de este sistema binario y otros componentes tecnológicos/electrónicos se pudo inventar el microprocesador y ya se imaginarán qué empresa pudo haber sido la creadora de esta magnífica invención. ¿Pueden adivinar cuál?',
	'src': '¡Claro, Intel! ¿Y cómo es que pasó todo esto? Pasa al siguiente exhibidor de tu derecha donde tendrás la respuesta',
	#'src': '',
	#'src': '',
	'r': '0',
	'c': 'wav',
	'f': '44khz_16bit_stereo',
	'ssml': 'false',
	'b64': 'false'
})

file = 'audio.wav'

newFile = open (file, "wb")
newFile.write(voice['response'])
newFile.close()

player = subprocess.Popen(["aplay", file])
