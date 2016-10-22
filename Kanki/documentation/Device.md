# Device

https://github.com/marcoschwartz/aREST/tree/master/examples

```sh
/*
  This a simple example of the aREST Library for the ESP8266 WiFi chip.
  See the README file for more details.

  Written in 2015 by Marco Schwartz under a GPL license.
*/

// Import required libraries
#include <ESP8266WiFi.h>
#include <aREST.h>

// Create aREST instance
aREST rest = aREST();

// WiFi parameters
const char* ssid = "INFINITUMfjph";
const char* password = "1c2899dfda";

// The port to listen for incoming TCP connections
#define LISTEN_PORT           80

// Create an instance of the server
WiFiServer server(LISTEN_PORT);

// Variables to be exposed to the API
int temperature;
int humidity;

// Declare functions to be exposed to the API
int ledControl(String command);

void setup(void)
{
  // Start Serial
  Serial.begin(115200);

  // Init variables and expose them to REST API
  temperature = 24;
  humidity = 40;
  rest.variable("temperature",&temperature);
  rest.variable("humidity",&humidity);

  // Function to be exposed
  rest.function("led",ledControl);

  // Give name & ID to the device (ID should be 6 characters long)
  rest.set_id("1");
  rest.set_name("esp8266");

  // Connect to WiFi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");

  // Start the server
  server.begin();
  Serial.println("Server started");

  // Print the IP address
  Serial.println(WiFi.localIP());
}

void loop() {

  // Handle REST calls
  WiFiClient client = server.available();
  if (!client) {
    return;
  }
  while(!client.available()){
    delay(1);
  }
  rest.handle(client);

}

// Custom function accessible by the API
int ledControl(String command) {

  // Get state from command
  int state = command.toInt();

  digitalWrite(13,state);
  return 1;
}
```

```sh
/*
  This a simple example of the aREST Library for the ESP8266 WiFi chip.
  This example illustrate the cloud part of aREST that makes the board accessible from anywhere
  See the README file for more details.
  Written in 2015 by Marco Schwartz under a GPL license.
*/

// Import required libraries
#include <ESP8266WiFi.h>
#include <PubSubClient.h>
#include <aREST.h>

// Clients
WiFiClient espClient;
PubSubClient client(espClient);

// Create aREST instance
aREST rest = aREST(client);

// Unique ID to identify the device for cloud.arest.io
char* device_id = "unique_device_id";

// WiFi parameters
const char* ssid = "your_wifi_network_name";
const char* password = "your_wifi_network_password";

// Variables to be exposed to the API
int temperature;
int humidity;
String local_ip = "";

// The port to listen for incoming TCP connections
#define LISTEN_PORT           80

// Create an instance of the server
WiFiServer server(LISTEN_PORT);

// Functions
void callback(char* topic, byte* payload, unsigned int length);

// Handles message arrived on subscribed topic(s)
void callback(char* topic, byte* payload, unsigned int length) {

  rest.handle_callback(client, topic, payload, length);

}

// Convert IP address to String
String ipToString(IPAddress address)
{
  return String(address[0]) + "." +
    String(address[1]) + "." +
    String(address[2]) + "." +
    String(address[3]);
}

void setup(void)
{
  // Start Serial
  Serial.begin(115200);

  // Set callback
  client.setCallback(callback);

  // Init variables and expose them to REST API
  temperature = 24;
  humidity = 40;
  rest.variable("temperature", &temperature);
  rest.variable("humidity", &humidity);
  rest.variable("local_ip", &local_ip);

  // Give name & ID to the device (ID should be 6 characters long)
  rest.set_id(device_id);
  rest.set_name("esp8266");

  // Connect to WiFi
  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");

  // Start the server
  server.begin();
  Serial.println("Local server started on IP:");

  // Print the IP address
  Serial.println(WiFi.localIP());
  local_ip = ipToString(WiFi.localIP());

}

void loop() {

  // Connect to the cloud
  rest.handle(client);

  // Handle Local aREST calls
  WiFiClient clientLocal = server.available();
  if (!clientLocal) {
    return;
  }
  while(!clientLocal.available()){
    delay(1);
  }
  rest.handle(clientLocal);

}
```

```sh
user@ẁorkstation:~$ sudo nmap -sP 192.168.1.1-254

Starting Nmap 6.47 ( http://nmap.org ) at 2016-10-22 15:14 CDT
Nmap scan report for 192.168.1.73
Host is up (0.13s latency).
MAC Address: 18:FE:34:DC:27:3F (Espressif)
Nmap done: 254 IP addresses (8 hosts up) scanned in 5.20 seconds
user@ẁorkstation:~$ 
```

```sh
user@ẁorkstation:~$ curl http://192.168.1.73
{"variables": {"temperature": 24, "humidity": 40}, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
```

```sh
user@ẁorkstation:~$ curl http://192.168.1.73/led
{"return_value": 1, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
```