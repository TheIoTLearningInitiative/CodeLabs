# Alexa Skills Kit

> Alexa, the voice service that powers Amazon Echo, provides capabilities, or skills, that enable customers to interact with devices in a more intuitive way using voice. Examples of Alexa skills include the ability to play music, answer general questions, set an alarm or timer, and more.

> The Alexa Skills Kit is a collection of self-service APIs, tools, documentation and code samples that make it fast and easy for you to add skills to Alexa. You can also use the Smart Home Skill API, a new addition to the Alexa Skills Kit, to easily teach Alexa how to control your cloud-controlled lighting and thermostat devices. All of the code runs in the cloud and nothing is on any user device. [Homepage](https://developer.amazon.com/alexa-skills-kit)

> The Alexa Skills Kit SDK for Node.js helps you get a skill up and running quickly, letting you focus on skill logic instead of boilerplate code. [Github](https://github.com/alexa/alexa-skills-kit-sdk-for-nodejs)

# Hello, Alexa!

[Developing Alexa Skills - Hello, Alexa!](https://www.youtube.com/watch?v=QxgdPI1B7rg)

- Devices
  - Amazon Echo
  - Amazon Dot
  - Amazon Tap
  - Fire TV

> Alexa provides capabilities or skills to interact with devices in intuitive way using voice

## Skill

> The interaction between the Skill Service and the Skill Interface yield the working Skill

User: Ask Greeter to say Hello
Alexa: Hello

### Skill Service

> Service Container (HTTP Server/AWS Labda)
> > First component, it si the business logic for the skill
> > Lives in the Cloud
> > Host code that will write and receives JSON payloads from AlexaIndex.js
> > Determines what actions to take in response to user speech
> > Skill Service Layer manages:
> > > Http requests
> > > User accounts
> > > Information Processing
> > > Sessions
> > > Database Access
> > Can be enable in any language that is supported in HTTPS server and return JSON responses
> > > Can be implemented in any HTTPS server but additional SSL configuration (assign certificates)
> > > Implementation in Node.js running in AWS Labda since no additional configuration is required

Alexa: Hello

#### Handlers Types: Event

> A Skill Service implement Event Handlers
> Event Handlers defines how a Skill will behave when the user triggers the event by speaking to an Alexa enabled device 
> > They are defined on the Skills Service to handle particular events like OnLaunch Event
> > > Will be sent to the Greeter Skills Service when the Skill is first launch by the user

Basic Greeter Skill

```js
GreeterService.prototype.eventHandlers.onLaunch = helloAlexaResponseFunction;
var helloAlexaResponseFunction = function(intent, session, response) {
    response.tell(SPEECH_OUT);
};
```

> User will trigger our Basic Greeter Skill by saying
> > Alexa: Open Greeter
> > Alexa: Start Greeter

#### Handlers Types: Intent

> Type of event that is an indication of soemthing the user would like to do

Basic Greeter Skill

One type of Intent: Hello

```js
var helloAlexaResponseFunction = function(intent, session, response){
    response.tell(SPEECH_OUT);
};

GreeterService.prototype.intentHandlers = {
    "HelloAlexaIntent":helloAlexaResponseFunction
};    
```

### Skill Interface

> Voice User Interface Configuration, develop via Amazon Alexa Skills Developer Portal

## Intel Guadalajara Facts

- [Step-by-Step Guide to Build a Fact-Based Alexa Skill](https://github.com/alexa/skill-sample-nodejs-fact)
- [Step-by-Step Guide to Build a Trivia Alexa Skill](https://github.com/alexa/skill-sample-nodejs-trivia)

```sh
root@edison:~# npm install --save alexa-sdk
```


