# Google Application Default Credentials

> The Application Default Credentials provide a simple way to get authorization credentials for use in calling Google APIs. [Homepage](https://developers.google.com/identity/protocols/application-default-credentials)


- Credentials
  - Create Credentials
  - > Service Account Key. Enable Server-to-Server, app-level authentication using robot accounts. For use with Google Cloud APIs.
  - Select an existing service account or create a new one: App Engine Default Service Account
  - 

```sh
root@edison:~# nano ~/gcp.json
root@edison:~# export GOOGLE_APPLICATION_CREDENTIALS=/home/root/gcp.json
```

```json
{
  "type": "service_account",
  "project_id": "",
  "private_key_id": "",
  "private_key": "-----BEGIN PRIVATE KEY-----,
  "client_email": "@appspot.gserviceaccount.com",
  "client_id": "",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://accounts.google.com/o/oauth2/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/appspot.gserviceacc"
}
```
