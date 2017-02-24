#!/usr/bin/python

import atexit
import ConfigParser
import dweepy
import signal
import time
import threading
import pytz
import os
import pywapi

import pyupm_grove as grove
import pyupm_grovespeaker as upmGrovespeaker
import pyupm_i2clcd as lcd
import pyupm_servo as servo
import pyupm_th02 as temp

from datetime import datetime
from telegram.ext import Updater, CommandHandler, MessageHandler, Filters

credentials = ConfigParser.ConfigParser()
credentialsfile = "credentials.config"
credentials.read(credentialsfile)
controlmode = 1
Angle = 0
weather = pywapi.get_weather_from_weather_com('MXJO0043')

# Create the button object using D3
button = grove.GroveButton(3)
#Create the led object using D2
led = grove.GroveLed(2)
# Create the servo object using D6
gServo = servo.ES08A(6)
# Initialize Jhd1313m1 at 0x3E (LCD_ADDRESS) and 0x62 (RGB_ADDRESS)
myLcd = lcd.Jhd1313m1(0, 0x3E, 0x62)
# Create the light sensor object using AIO pin 2
light = grove.GroveLight(2)
# Create the temperature sensor object using AIO pin 2
#temp = grove.GroveTemp(2)
# Create relay object using D5
relay = grove.GroveRelay(5)
# Initialize TH02 temperature sensor at 0x40
gTemp = temp.TH02(0, 0x40)

# Initialize servo to 0 degrees
gServo.setAngle(Angle)

def getWeather():
    global weather
    weather = pywapi.get_weather_from_weather_com('MXJO0043')

def getWeatherMsg():
	global weather
	message = "It is " + weather['current_conditions']['text'].lower() + " and " + weather['current_conditions']['temperature'] + " C now in Guadalajara"
	return message;

def getWeatherMsgForecast(day):
    global weather
    forecastMsg =  weather['forecasts'][day]['date'] + " - " + weather['forecasts'][day]['day']['text'] + " - " +"Highest Temp: " + weather['forecasts'][day]['high'] + " C  Lowest Temp: " + weather['forecasts'][day]['low'] + " C" 
    return forecastMsg;

def dataWeather(bot, update):
    bot.sendMessage(update.message.chat_id, text = str(getWeatherMsg()))

def functionLight(bot, update):
    luxes = light.value()
    bot.sendMessage(update.message.chat_id, text='Room Light: ' + str(luxes) + ' luxes')

def functionTemperature(bot, update):
    temperature = gTemp.getTemperature()
    bot.sendMessage(update.message.chat_id, text='Room Temp: ' + str(temperature) +  ' Celsius')

def functionStatus(bot, update):
    functionLight(bot, update)
    functionTemperature(bot, update)
    if controlmode == 1:
	bot.sendMessage(update.message.chat_id, text="Mode: Auto")
    else:
        bot.sendMessage(update.message.chat_id, text="Mode: Manual")
    if Angle == 0:
        bot.sendMessage(update.message.chat_id, text="Blinds Closed")
    else:
        bot.sendMessage(update.message.chat_id, text="Blinds Open")
    if relay.isOn():
        bot.sendMessage(update.message.chat_id, text="Lights on")
    else:
        bot.sendMessage(update.message.chat_id, text="Lights off")

def botFunctionRelay(bot, update):
    global controlmode
    if controlmode == 1:
	print "Switching to Manual Control Mode"
        bot.sendMessage(update.message.chat_id, text='Swithing to Manual Control Mode')
	controlmode = 0
    functionRelay()
    if relay.isOn():
        bot.sendMessage(update.message.chat_id, text='Lights On')
    else:
        bot.sendMessage(update.message.chat_id, text='Lights Off')

def botFunctionBlinds(bot, update):
    global controlmode
    if controlmode == 1:
        print "Switching to Manual Control Mode"
        bot.sendMessage(update.message.chat_id, text='Swithing to Manual Control Mode')
        controlmode = 0
    functionBlinds()
    if Angle==0:
        bot.sendMessage(update.message.chat_id, text='Blinds Closed')
    else:
        bot.sendMessage(update.message.chat_id, text='Blinds Open')

def functionBlinds():
    global Angle
    if Angle == 0:
	print "Opening Blinds"
	Angle = 90
	gServo.setAngle(Angle)
    else:
	print "Closing Blinds"
	Angle = 0
	gServo.setAngle(Angle)

def functionRelay():
    if relay.isOn():
        print "Turning lights off"
        relay.off()
	led.off()
    else:
	print "Turning lights on"
        relay.on()
	led.on()

def functionEcho(bot, update):
    bot.sendMessage(update.message.chat_id, text=update.message.text)

def displayOutput(arg):
    threadlcd = threading.currentThread()
    global weather
    while getattr(threadlcd, "do_run", True):
        now = datetime.now(pytz.timezone("America/Mexico_City"))
	for x in range (0, 6):
            updateWeather = now.replace(minute=(x*10))
	    if(now.minute == updateWeather.minute):
		getWeather()
	message = "It is " + weather['current_conditions']['text'].lower() + " and " + weather['current_conditions']['temperature'] + " C now in Guadalajara"
	messageLenght = len(message)
        cont=0
	i = 0

        while cont < 50:
            luxes = light.value()
            temperature = gTemp.getTemperature()
            messageLight = "Room Light: " + str(luxes)
            messageTemp = "Room Temp: " + str(temperature)
            myLcd.setCursor(0, 0)
            myLcd.write(messageLight)
            myLcd.setCursor(1, 0)
            myLcd.write(messageTemp)
            cont += 1
            time.sleep(0.1)
        myLcd.clear()
        while i < (messageLenght - 15):
	    lcdMessage = str(message[(i):(i+16)])
            myLcd.setCursor(1, 0)
	    myLcd.write(lcdMessage)

	    if controlmode==1:
                myLcd.setCursor(0, 0)
                myLcd.write("Mode: Auto")
            else:
                myLcd.setCursor(0,0)
                myLcd.write("Mode: Manual")
	    i += 1
	    time.sleep(.6)
        myLcd.clear()

def functionAutoMode():
    global weather
    luxes = light.value()
    temperature = gTemp.getTemperature()
    now = datetime.now(pytz.timezone("America/Mexico_City"))
    sleeptime = now.replace(hour=23, minute=0, second=0, microsecond=0)
    waketime = now.replace(hour=7, minute=0, second=0, microsecond=0)
    WeatherTemp = weather['current_conditions']['temperature']

    if now > waketime and now < sleeptime:
	if int(luxes) < 20 and relay.isOff():
	    functionRelay()
	elif int(luxes) > 19 and relay.isOn():
	    functionRelay()
    
    if int(temperature) > 23 and Angle == 0:
	if int(WeatherTemp) < int(temperature):
	    functionBlinds()
    elif int(temperature) > 23 and Angle == 90:
        if int(WeatherTemp) > int(temperature):
	    functionBlinds()
    elif int(temperature) < 24 and Angle == 90:
	functionBlinds()

def functionEnableAuto(bot, update):
    global controlmode
    if controlmode==1:
        print "Control Mode already enabled, nothing to do"
        bot.sendMessage(update.message.chat_id, text='Control Mode already enabled, nothing to do')
    else:
	print "Switching to Auto Control Mode"
        bot.sendMessage(update.message.chat_id, text='Switching to Auto Control Mode')
	controlmode =1

def SIGINTHandler(signum, frame):
	exitHandler()

def exitHandler():
        global gServo, gTemp, myLcd, light, relay
	threadlcd.do_run = False
	threadlcd.join()
        print "Exiting"
        time.sleep(2)
        datafreeboard['alive'] = "0"
        datafreeboard['luxes'] = "0"
        datafreeboard['Temp'] = "0"
        datafreeboard['message'] = "System off"
        dweepy.dweet_for('domotics', datafreeboard)
        relay.off()
	gServo.setAngle(0)
        del gServo, gTemp, myLcd, light, relay
        os._exit(0)

atexit.register(exitHandler)
signal.signal(signal.SIGINT, SIGINTHandler)

if __name__ == '__main__':

    credential = credentials.get("telegram", "token")
    updater = Updater(credential)
    dp = updater.dispatcher

    dp.add_handler(CommandHandler("status", functionStatus))
    dp.add_handler(CommandHandler("switchLight", botFunctionRelay))
    dp.add_handler(CommandHandler("blinds", botFunctionBlinds))
    dp.add_handler(CommandHandler("getLight", functionLight))
    dp.add_handler(CommandHandler("getTemp", functionTemperature))
    dp.add_handler(CommandHandler("autoMode", functionEnableAuto))
    dp.add_handler(CommandHandler("getWeather", dataWeather))
    dp.add_handler(MessageHandler([Filters.text], functionEcho))

    updater.start_polling()

    threadlcd = threading.Thread(target = displayOutput, args=("task",))
    threadlcd.start()


    msgStatus = "System Running"

    while True:
	if controlmode == 1:
	    functionAutoMode()
	luxes = light.value()
	weathermsg = getWeatherMsg()
	forecastweather1 = getWeatherMsgForecast(1)
	forecastweather2 = getWeatherMsgForecast(2)
	forecastweather3 = getWeatherMsgForecast(3)
	forecastweather4 = getWeatherMsgForecast(4)
	#forecastweather5 = getWeatherMsgForecast(5)
	#forecastweather6 = getWeatherMsgForecast(6)
	temp = gTemp.getTemperature()
        if Angle == 0:
	    msgBlinds = "Blinds Closed"
	else:
	    msgBlinds = "Blinds Open"
	if relay.isOn():
	    msgLight = "Lights on"
	else:
	    msgLight = "Lights off"
	datafreeboard = {}
        datafreeboard['alive'] = "1"
        datafreeboard['luxes'] =  luxes
	datafreeboard['Temp'] = temp
        datafreeboard['blinds'] = msgBlinds
        datafreeboard['light'] = msgLight
        datafreeboard['message'] = msgStatus
        datafreeboard['weather'] = weathermsg
        datafreeboard['weathernext1'] = forecastweather1
        datafreeboard['weathernext2'] = forecastweather2
        datafreeboard['weathernext3'] = forecastweather3
        datafreeboard['weathernext4'] = forecastweather4
        #datafreeboard['weathernext5'] = forecastweather5
        #datafreeboard['weathernext6'] = forecastweather6        
        dweepy.dweet_for('domotics', datafreeboard)
	time.sleep(1)

    updater.idle()
