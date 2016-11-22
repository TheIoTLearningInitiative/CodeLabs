# Google Cloud Translation API

> The Google Translate API lets websites and programs integrate with Google Translate programmatically.

## Google Cloud Platform Dashboard

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

```sh
root@edison:~/CodeLabs/EkBalam# python gcptranslate.py 
Traceback (most recent call last):
  File "gcptranslate.py", line 42, in <module>
    run_quickstart()
  File "gcptranslate.py", line 24, in run_quickstart
    translate_client = translate.Client()
  File "/usr/lib/python2.7/site-packages/google/cloud/translate/client.py", line 71, in __init__
    super(Client, self).__init__(credentials=credentials, http=http)
  File "/usr/lib/python2.7/site-packages/google/cloud/client.py", line 122, in __init__
    credentials = get_credentials()
  File "/usr/lib/python2.7/site-packages/google/cloud/credentials.py", line 87, in get_credentials
    return client.GoogleCredentials.get_application_default()
  File "/usr/lib/python2.7/site-packages/oauth2client/client.py", line 1288, in get_application_default
    return GoogleCredentials._get_implicit_credentials()
  File "/usr/lib/python2.7/site-packages/oauth2client/client.py", line 1278, in _get_implicit_credentials
    raise ApplicationDefaultCredentialsError(ADC_HELP_MSG)
oauth2client.client.ApplicationDefaultCredentialsError: The Application Default Credentials are not available. They are a.
root@edison:~/CodeLabs/EkBalam# 
```