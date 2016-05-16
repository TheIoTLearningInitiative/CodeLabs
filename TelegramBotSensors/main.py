#!/usr/bin/python

import time

import pyupm_grove as grove
import pyupm_i2clcd as lcd

from telegram.ext import Updater, CommandHandler, MessageHandler, Filters

light = grove.GroveLight(1)
temperature = grove.GroveTemp(0)
display = lcd.Jhd1313m1(0, 0x3E, 0x62)

def functionLight(bot, update):
    luxes = light.value()
    bot.sendMessage(update.message.chat_id, text='Light ' + str(luxes))

def functionTemperature(bot, update):
    degrees = temperature.value()
    bot.sendMessage(update.message.chat_id, text='Temperature ' + str(degrees))

def functionEcho(bot, update):
    bot.sendMessage(update.message.chat_id, text=update.message.text)

if __name__ == '__main__':

    updater = Updater("209701132:AAEBn3_8ZBN-Lk8l8kRnkLKegmjA-S5iPeQ")
    dp = updater.dispatcher

    dp.add_handler(CommandHandler("light", functionLight))
    dp.add_handler(CommandHandler("temperature", functionTemperature))
    dp.add_handler(MessageHandler([Filters.text], functionEcho))

    updater.start_polling()

    while True:

        degrees = temperature.value()
        luxes = light.value()

        display.setColor(255, 0, 0)

        display.setCursor(0,0)
        display.write('Light ' + str(luxes))

        display.setCursor(1,0)
        display.write('Temperature ' + str(degrees))

        time.sleep(1)

    updater.idle()
    del temperatura
