# Calendar

# Google Calendar API

> Integrate with mobile and web apps. You can use the Google Calendar API to find and view public calendar events. If you're authorized, you can also access and modify private calendars and events on those calendars. Use the Google Calendar API to achieve deeper integration with Google Calendar. Mobile apps, Web apps, and other systems can create, display, or sync with Calendar data. [Homepage](https://developers.google.com/google-apps/calendar/)

## Identification

Institution Identification through Google Calendar API. If Google Calendar entry is registered then naming convention is:
- YYYYMMDD-HHMMSS-InstitutionName

If not, naming convention is
- YYYYMMDD-HHMMSS

# Setup

```sh
hochob@server:~$ sudo pip install httplib2
hochob@server:~$ sudo python -m pip install --upgrade google-api-python-client
```

```