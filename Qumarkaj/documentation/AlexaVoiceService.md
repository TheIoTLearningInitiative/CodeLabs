# Alexa Voice Service

> Use the Alexa Voice Service (AVS) to add intelligent voice control to any connected product that has a microphone and speaker. Your customers will be able to ask Alexa to play music, answer questions, get news and local information, control smart home products, and more on their voice-enabled products. [Homepage](https://developer.amazon.com/alexa-voice-service)

- [Alexa Voice Service Github Sample App](https://github.com/alexa/alexa-avs-sample-app)

- Interface .. Description
- SpeechRecognizer .. The core interface for the Alexa Voice Service. Each user utterance leverages the Recognize event.
- SpeechSynthesizer .. The interface for Alexa speech.
- Alerts .. The interface for setting, stopping, and deleting timers and alarms. For a conceptual overview, see Understanding Alerts.
- AudioPlayer .. The interface for managing and controlling audio playback.
- PlaybackController .. The interface for navigating a playback queue via button affordances.
- Speaker .. The interface for volume control of a device or application, including mute and unmute.
- System .. The interface for providing client information to Alexa.