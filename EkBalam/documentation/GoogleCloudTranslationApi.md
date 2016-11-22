# Google Cloud Translation API

> The Google Translate API lets websites and programs integrate with Google Translate programmatically.

__Use Google APIs.__ Enable APIS, create credentials and track your usage.

API Manager

- Dashboard. Enable API
  - Search: Translate
  - Google Cloud Translation API. The Google Translate API lets websites and programs integrate with Google Translate programmatically.
  - Enable
- Credentials
  - Create Credentials
  - > APIs. Credentials. You need credentials to access APIs. Enable the APIs you plan to use and then create the credentials they require. Depending on the API, you need an API key, a service account, or an OAuth 2.0 client ID. Refer to the API documentation for details.
  - Select API Key and Close
    - API key created. Use this key in your application by passing it with the key=API_KEY parameter.
    - Your API key: Xx


```sh
root@edison:~/CodeLabs/EkBalam# python gtranslate.py 
{u'translations': [{u'translatedText': u'une fleur'}, {u'translatedText': u'voiture'}]}
root@edison:~/CodeLabs/EkBalam# 
```