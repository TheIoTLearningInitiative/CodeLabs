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
> > First component to ceate a Skill, it is the business logic for the skill
> > Lives in the Cloud
> > Host code that will write and receives JSON payloads from Alexa: Index.js
> > Determines what actions to take in response to user speech
> > Skill Service Layer manages:
> > > Http requests
> > > User accounts
> > > Information Processing
> > > Sessions
> > > Database Access
> > Can be enable in any language that is supported in HTTPS server and return JSON responses
> > > Can be implemented in any HTTPS server but additional SSL configuration (assign certificates)
> > > Implementation in Node.js running in AWS Labda means no additional configuration

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
> Map the number of features or interactions that a skill offers
> A Skill Service can have many Intent Handlers each reacting to different Intents trigger that different spoken utterances we specify

Basic Greeter Skill

One type of Intent: Hello, TheHelloWorldIntent

```js
var helloAlexaResponseFunction = function(intent, session, response){
    response.tell(SPEECH_OUT);
};

GreeterService.prototype.intentHandlers = {
    "HelloAlexaIntent":helloAlexaResponseFunction
};    
```

### Skill Interface Configuration

> Voice User Interface Configuration, develop via Amazon Alexa Skills Developer Portal
> > Second component to ceate a Skill where we specify Utterences
> > > It is composed of:
> > > > Utterences
> > > > Slot Types
> > > > Intent Schema
> > Responsible for processing user spoken words
> > It handles the translation between Audio from the User to Events The Skills Service can handle
> >  It's since the Events the Skills Service so the Events Handlers can do their work
> > Skills Interface is also where we specify what a Skill is called so User can invoke it by name when talking to an Alexa enabled device, its name users will address our Skill with, this is called the Skills Invocation Name
> > > Invocation Name: Greeter
> > > From Amazon Alexa Webpage: Invocation Name: The name users will say to interact with this skill. this does not have the same name as the skill name. The invocation name must comply with the Invocation Name Guidelines.
> > Within the Skill Interface we define the Skills Interaction Model

#### Interaction Model

> > > Interaction Model is what train the Skill Interface so it knows how to listen for User spoken words

- It resolves the spoken words to specific intent events
- You define the words that shoulp map to a particular intent name in the interaction model by providing a list of sample utterances
  - helloWorldIntent say hi world
  - helloWorldIntent say hello
  - helloWorldIntent say hello world
  - helloWorldIntent hello
  - helloWorldIntent say hi
  - helloWorldIntent how are you

#### Sample Utterance

> It is a string that represents a possible way the user may talk to the skill
> Utterances are use to generate a natural laguage understanding model that resolves the users voice to our Skills Intents

#### Intents Schema

> We also declare a Intent Schema on the Interaction Model
> The Intent Schema tells the Skill Interface what Intents the Skill Service implements

From __Amazon Alexa Webpage__: Intent Schema. The schema of user intents in JSON format. For more information, see Intent Schema. Also see built-in slots and built-in intents.

```json
{
  "intents": [
    {
      "intent": "HelloWorldIntent"
    }
  ]
}
```

Once we provide the __Sample Utterances__ (Alexa ask Greeter to say Hello)

## Intel Guadalajara Facts

- [Step-by-Step Guide to Build a Fact-Based Alexa Skill](https://github.com/alexa/skill-sample-nodejs-fact)
- [Step-by-Step Guide to Build a Trivia Alexa Skill](https://github.com/alexa/skill-sample-nodejs-trivia)

```sh
root@edison:~# npm install --save alexa-sdk
```


