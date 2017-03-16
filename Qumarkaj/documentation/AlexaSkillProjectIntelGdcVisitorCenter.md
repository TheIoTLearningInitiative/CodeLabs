# Intel GDC Visitor Center: Cloudy Station

## Skill: Welcome

- __Invocation Name__: Open Robot Welcome, Ask Robot Welcome...
  - __Intents__
    - WelcomeIntent welcome
    - WelcomeIntent say welcome
    - WelcomeIntent say welcome all
- __Answer__ See below...

```js
'use strict';

const Alexa = require('alexa-sdk');

exports.handler = function(event, context, callback) {
    var alexa = Alexa.handler(event, context);
    alexa.registerHandlers(handlers);
    alexa.execute();
};

const handlers = {
    'LaunchRequest': function () {
        this.emit('SayWelcome');
    },
    'WelcomeIntent': function () {
        this.emit('SayWelcome')
    },
    'SayWelcome': function () {
        this.emit(':tell', 
        'Hi, Welcome to Cloudy Station! I am Alexa, an intelligent personal assistant developed by Amazon Lab126, made popular by the Amazon Echo. \
        I live in the cloud, the cloud is the Internet space, multiple remote computers offering different Software services. \
        You can ask me any question or we can play Intel Games by saying one of the following 2 phrases: \
        "Alexa!, Open Geek", and I will give you a fact about Intel.\
        "Alexa!, Open Trivia", and I will start a Trivia game.\
        Nice meeting you! We hope you are enjoying your visit. Thanks for coming!');
    }
};
```