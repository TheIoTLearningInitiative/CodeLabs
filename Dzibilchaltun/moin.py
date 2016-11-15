https://home-assistant.io/components/notify.telegram/
 
api_key = ""
chat_id = ""
bot = telegram.Bot(token=api_key)
bot.sendMessage(chat_id=chat_id, text="Hi")

