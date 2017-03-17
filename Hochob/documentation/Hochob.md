# Hochob

> Hochob es un sitio arqueológico maya ubicado en el estado mexicano de Campeche, en la región denominada Los Chenes. Las primeras noticias sobre la existencia de este sitio arqueológico se debieron al investigador y explorador Teobert Maler, quien en 1887 visitó el lugar y publicó algunas fotografías en la revista Globus, en 1895. [Wikipedia](https://es.wikipedia.org/wiki/Hochob)

# Lupe Robot

Development

- https://www.gitbook.com/book/maquirog/rob/details
- https://github.com/maquirog/MotorsAndServos

## Eclipse Compilation

Same as Wrist Band

## Apps

- Putty
- Bluetooth SPP Tools Pro

Intel IoT SDK

1.	Install Java
Java SE Development Kit 8u121

Usability

•	Easy Guide (Pending)
o	Robot
	Connection
1.	USB Cable
2.	Mario Robot 192.168.1.102
o	Ssh: root, inteledison
	3 modes
1.	Arms, Legs
2.	Predetermined Movements English
3.	Predetermined Movements Spanish
o	MoveStop to restart Mario Robot
	Files
1.	MotorsandServos Binary
2.	SPP-Loopback.py (Only Testing)
3.	btup.sh (Bluetooth Pair Process Always)
4.	SPP-pipe-out.py (Used by btup.sh)
	OS Version
1.	User Yocto 2.1, 3.5 has an issue with Bluetooth
	Sequence
1.	Battery turn on arms (Right side of the robot)
o	Edison powered on
2.	Turn on Speakers
3.	Turn on Tablet Bluetooth
4.	Run btup.sh under Intel Edison
o	Make btup.sh
5.	Run Bluetooth SPP Pro under Tablet
o	Connect to Edison Bluetooth Device
o	Go to Keyboard Mode
6.	Run MotorsandServos Binary under Intel Edison
7.	Battery turn on legs (Left side of the robot)
8.	
o	Tablet
	
