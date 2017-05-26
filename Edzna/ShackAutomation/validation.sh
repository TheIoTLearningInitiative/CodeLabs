mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/room/light/status -m ON
mosquitto_pub -h test.mosquitto.org -p 1883 -t zanzito/edzna/say -m "someone open the door"
mosquitto_sub -h test.mosquitto.org -p 1883 -t edzna/sa/room/light/switch
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/room/light/rgb/status -m 255,0,0
mosquitto_sub -h test.mosquitto.org -p 1883 -t edzna/sa/room/light/rgb/set

mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/table/light/status -m ON
mosquitto_sub -h test.mosquitto.org -p 1883 -t edzna/sa/table/light/switch
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/table/light/rgb/status -m 0,255,0
mosquitto_sub -h test.mosquitto.org -p 1883 -t edzna/sa/table/light/rgb/set

mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/room/luxes -m 15
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/room/temperature -m 27
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/room/humidity -m 30

mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/station/occupancy -m 1
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/station/occupancy -m 0
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/station/power -m 1
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/station/power -m 0
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/station/sound -m 1
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/station/sound -m 0

mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/movement/motion -m 1
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/movement/motion -m 0
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/movement/window -m 1
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/movement/window -m 0
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/movement/door -m 1
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/movement/door -m 0

mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/door -m lock
mosquitto_pub -h test.mosquitto.org -p 1883 -t edzna/sa/door -m unlock
