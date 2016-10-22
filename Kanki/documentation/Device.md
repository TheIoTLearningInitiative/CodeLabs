# Device

https://github.com/marcoschwartz/aREST/tree/master/examples

```sh
/*
  This a simple example of the aREST Library for the ESP8266 WiFi chip.
  See the README file for more details.

  Written in 2015 by Marco Schwartz under a GPL license.
*/

#include <ESP8266WiFi.h>
#include <aREST.h>

aREST rest = aREST();

const char* ssid = "INFINITUM";
const char* password = "xxxxxxxxxx";

#define LISTEN_PORT           80

WiFiServer server(LISTEN_PORT);

int temperature;
int humidity;

int ledControl(String command);

void setup(void) {
  Serial.begin(115200);

  pinMode(LED_BUILTIN, OUTPUT);

  temperature = 24;
  humidity = 40;
  rest.variable("temperature",&temperature);
  rest.variable("humidity",&humidity);
  rest.function("led",ledControl);

  rest.set_id("1");
  rest.set_name("esp8266");

  WiFi.begin(ssid, password);
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.println("WiFi connected");

  server.begin();
  Serial.println("Server started");

  Serial.println(WiFi.localIP());
}

void loop() {
  WiFiClient client = server.available();
  if (!client) {
    return;
  }
  while(!client.available()){
    delay(1);
  }
  rest.handle(client);
}

int ledControl(String command) {
  int state = command.toInt();
  digitalWrite(LED_BUILTIN,state);
  return 1;
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
xe1gyq@jessie:~$ curl http://192.168.1.73/led?params=1
{"return_value": 1, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
xe1gyq@jessie:~$ curl http://192.168.1.73/led?params=0
{"return_value": 1, "id": "1", "name": "esp8266", "hardware": "esp8266", "connected": true}
```