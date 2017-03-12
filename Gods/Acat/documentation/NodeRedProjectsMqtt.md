# Mqtt

## @ Node-Red Flow Space

- Input Mqtt
  - Server test.mosquitto.org:1883
  - Topic IBMIoT/NodeRed/IntelEdison

- Output Debug
  - Output Message Property
  - msg.payload

## Source

```js
[{"id":"744af6bf.8bb508","type":"mqtt-broker","z":"98b49c15.674b6","broker":"test.mosquitto.org ","port":"1883","clientid":"","usetls":false,"verifyservercert":true,"compatmode":true,"keepalive":"60","cleansession":true,"willTopic":"","willQos":"0","willRetain":"false","willPayload":"","birthTopic":"","birthQos":"0","birthRetain":"false","birthPayload":""},{"id":"c89cadcc.37635","type":"debug","z":"98b49c15.674b6","name":"","active":true,"console":"false","complete":"false","x":591,"y":130,"wires":[]},{"id":"7f0cbf12.80f34","type":"mqtt in","z":"98b49c15.674b6","name":"","topic":"IBMIoT/NodeRed/IntelEdison","broker":"744af6bf.8bb508","x":356,"y":130,"wires":[["c89cadcc.37635"]]}]
```

## @ Intel Edison Console

```sh
    26 Mar 14:37:38 - [info] Started flows
    26 Mar 14:37:40 - [info] [mqtt-broker:744af6bf.8bb508] Connected to broker: mqtt://test.mosquitto.org :1883
```

## @ Another Device

```sh
    $ mosquitto_pub -h test.mosquitto.org -t IBMIoT/NodeRed/IntelEdison -m "Hello World!"
```

## @ Node-Red Debug Tab

```sh
    3/26/2016, 8:41:18 AMc89cadcc.37635
    IBMIoT/NodeRed/IntelEdison : msg.payload : string [12]
    Hello World!
```
