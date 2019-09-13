# Breakable Toy

This is my Frankenstein project which I use to try out new tools and APIs. It was inspired by the [breakable toy apprenticeship pattern](https://www.oreilly.com/library/view/apprenticeship-patterns/9780596806842/ch05s03.html) which I heard about on [The Bike Shed](https://bikeshed.fm/episodes/173) podcast. The goal of this project is not to ship something useful, but to learn without fear of failure.

## What have you tried so far?
### Slackbot
* Created a slack button which lives at /slackbot/index, so the bot can be added to a workplace. When the bot is added, it messages all users auttomatically with an `@channel` to let them know it has been added. 

* The about slash command tells you the commands the bot knows
![about slash command](https://user-images.githubusercontent.com/17524777/53283243-35e9d780-3711-11e9-8e6b-e6418b986f56.png)
![about slash command](https://user-images.githubusercontent.com/17524777/53283293-2919b380-3712-11e9-8153-a178cf09e4ab.png)

* The oops slash command posts your message anonymously (without your name or info) to the #general channel.
![oops slash command](https://user-images.githubusercontent.com/17524777/53822161-323e2800-3f3d-11e9-90f2-e6c5a61a68a5.png)
![oops slash command](https://user-images.githubusercontent.com/17524777/53822187-3cf8bd00-3f3d-11e9-9d0b-9753e4ac86d5.png)

### Twilio

## Break Log
* I published my API keys by accident. I did that. But hey, this is a breakable toy. The cool thing I learned is that both Slack and Twilio have automatic mechanisms that periodically look for vulnerabilities like this. In this case they disabled my API keys and send me a big red email which screamed (very politely) "You did something scary and dumb, please fix it immediately." So how do we fix it? Well normally you would have to squash all your commits back to your last safe state. However, seeing as no one relies on this project on being not broken, and it exists purely for the sake of learning/failing/experimenting, I chose to keep my commit history and just fix its current state. 
