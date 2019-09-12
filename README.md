# Breakable Toy

This is my Frankenstein project which I use to try out new tools and APIs. It was inspired by the [breakable toy apprenticeship pattern](https://www.oreilly.com/library/view/apprenticeship-patterns/9780596806842/ch05s03.html) which I heard about on [The Bike Shed](https://bikeshed.fm/episodes/173) podcast. The goal of this project is not to ship something useful, but to learn without fear of failure.

## What have you tried so far?
### Slackbot
### Twilio

## Break Log
* I published my API keys by accident. I did that. But hey, this is a breakable toy. The cool thing I learned is that both Slack and Twilio have automatic mechanisms that periodically look for vulnerabilities like this. In this case they disabled my API keys and send me a big red email which screamed (very politely) "You did something scary and dumb, please fix it immediately." So how do we fix it? Well normally you would have to squash all your commits back to your last safe state. However, seeing as no one relies on this project on being not broken, and it exists purely for the sake of learning/failing/experimenting, I chose to keep my commit history and just fix its current state. 
