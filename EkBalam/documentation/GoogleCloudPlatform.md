# Google Cloud Platform

> Google Cloud Platform. Build What's Next. Better software. Faster. [Homepage](https://cloud.google.com/)

1. Go to [Google Cloud Platform Console](https://console.cloud.google.com/)
2. Create Project
   - Project Name: The IoT Learning Initiative
3. Google Cloud Platform
   - Home
   - Dashboard
   - Activity

Google Cloud Platform Welcome Components

- Try Compute Engine. Create a Linux virtual machine instance in Compute Engine in this guided walkthrough.
- Learn to use Cloud Storage. Cloud Storage is a powerful and simple storage service. In this tutorial you’ll learn the basics by creating a storage bucket, and then uploading and sharing a sample file as a public URL link.
- Try App Engine. Create and deploy a Hello World app
- Learn Google Cloud Platform. Take an interactive tutorial now and learn how to deploy and build simple applications.
- Use Google APIs. enable APIS, create credentials and track your usage.
- Create a Cloud SWL Interface. CloudSQL is a MySQL database that runs in Google's cloud, with no installation and maintenance required
- Documentation

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