# Alexa - A Free Introduction

> In this course you will learn how to build 3 different skills including an interactive story for Alexa, the voice service that powers Amazon Echo. [Alexa - A Free Introduction](https://acloud.guru/learn/intro-alexa-free)

- [New Video Course by A Cloud Guru: Alexa Development for Absolute Beginners](https://developer.amazon.com/blogs/post/TxQY6H9XJJQHVF/New-Video-Course-by-A-Cloud-Guru-Alexa-Development-for-Absolute-Beginners)

Two important links

- [AWS Lambda](https://aws.amazon.com/lambda/?nc2=h_m1)
- [AWS Alexa](https://developer.amazon.com/edw/home.html#/skills/list)

Build Out Three Skills

- Space Geek
- Game Helper
- Interactive Story for Mac

Steps:

1. Signing up to Amazon Web Services
   - Google for Amazon Web Services
   - Go to [https://aws.amazon.com/](https://aws.amazon.com/)
   - Select "Create an AWS Account" || "Create a Free Account"
   - Sign in to the Amazon Web Services Management Console
2. Secure account with Multi Factor Authetication 
   - Select under "Security & Identity", "Identity & Access Management (IAM), Manage User Access and Encryption Keys"
   - Select "Activate MFA on your root account"
   - Select "A virtual MFA device"
   - Get "Google Autheticator"
3. Signing Up To The Alexa Developers Portal
   - Google for "Alexa Developer Portal"
   - Go to [https://developer.amazon.com/edw/home.html#/](https://developer.amazon.com/edw/home.html#/)
4. Setting Up Lambda In The Skills Service
   - How we build our Skills
     - Skills Service: AWS Lambda
     - Skills Interface: Invocation Name, Intent Schema, Slot Type, Utterances
   - "Alexa, whats is the weather like?"
     - Skill Interface: Automatic Speech Recognition (ASR), Natural Language Understanding (NLU)
     - Skill Service: AWS Lambda Processes, The text sent to it and issues a response
   - Google for "Space Geek Alexa"
     - Go to [SDK and example code for building voice-enabled skills for the Amazon Echo](https://github.com/amzn/alexa-skills-kit-js) but it will be outdated
     - Now go to [GitHub - alexa/skill-sample-nodejs-fact](https://github.com/alexa/skill-sample-nodejs-fact)
   - Log in to the AWS Management Console
    - [How to integrate AWS Lambda with Alexa](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/developing-an-alexa-skill-as-a-lambda-function)
    - Under region drop-down in the upper-right corner, select US East (N. Virginia)
   - Sign in to the Amazon Web Services Management Console
     - Select under "Security & Identity", "Identity & Access Management (IAM), Manage User Access and Encryption Keys"
     - Select "Roles"
     - Select "Create New Roles"
       - Set Role Name: Alexa
       - Select "AWS Lambda"
       - Search and select "Policy Type" "AWSLambdaBasicExecutionRole"
       - You will be given:
         - Role Name
         - Role ARN
         - Trusted Entities
         - Policies
       - Select Create Role
   - Select under "Services" "Lambda: Run Code without Thinking about Servers"
     - Select "Create a Lambda Function"
     - Under "Select Blueprint" choose "alexa-skill-kit-sdk-factskill"
     - Under "Configure Triggers" select "Alexa Skills Kit"
     - Under Lambda function handler and role
       - Role: Choose an existing role
       - Existing role: Alexa
     - Select "Create Function"
5. Setting up Your Alexa Skill in the Developer Portal
   - Go to [https://developer.amazon.com/edw/home.html#/](https://developer.amazon.com/edw/home.html#/)
   - Select "Alexa Skills Kit" 
   - Go to "Getting Started" and select "Add a New Skill"
   - Under "Skill Information"
     - Skill Type: Custom Interaction Model
     - Language: English (U.S.)
     - Name: Intel Geek
     - Invocation Name: Intel Geek
     - Global Fields: Audio Player No
   - Under "Interaction Model" populate "Intent Schema" with
```json
{
  "intents": [
    {
      "intent": "GetNewFactIntent"
    },
    {
      "intent": "AMAZON.HelpIntent"
    },
    {
      "intent": "AMAZON.StopIntent"
    },
    {
      "intent": "AMAZON.CancelIntent"
    }
  ]
}
```
   - Under "Interaction Model" populate "Sample Utterances" with
```sh
GetNewFactIntent a fact
GetNewFactIntent a Intel fact
GetNewFactIntent tell me a fact
GetNewFactIntent tell me a Intel fact
GetNewFactIntent give me a fact
GetNewFactIntent give me a Intel fact
GetNewFactIntent tell me trivia
GetNewFactIntent tell me a Intel trivia
GetNewFactIntent give me trivia
GetNewFactIntent give me a Intel trivia
GetNewFactIntent give me some information
GetNewFactIntent give me some Intel information
GetNewFactIntent tell me something
GetNewFactIntent give me something
```
   - Under "Configuration" 
     - Service Endpoint Type: AWS Lambda ARN (Amazon Resource Name)
     - Pick a Geographical region that is closest to your customer target: North America
     - North America: arn:aws:lambda:us-east-1:007315488252:function:IntelGeek
     - Account Linking: Do you allow users to create an account or link to an existing account with you? No
   - Under Test
     - Write under "Service Simulator" utterance "Give me an Intel fact" and select "Ask Intel Geek"