# slack_webhook

Dartlang interface to the Slack Incoming Webhook API

API Documentation available on [Pub](https://github.com/devanced/dart-slack3)

This is somehow a fork of https://github.com/ChildrenOfUr/dart-slack

## Simple Start
```
import 'package:slack_webhook/slack_webhook.dart';

void main(List<String> arguments) {
  // Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
  // Slack slack = new Slack('webhook-domain', 'webhook-path');
  Slack slack = Slack('hooks.slack.com',
      '/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX');

  Message m;

  m = Message(text: "Hello from Dart", blocks: [
    Block(type: "context", block_id: "section567", elements: [
      Element(
          type: "image",
          image_url:
              "https://pbs.twimg.com/profile_images/625633822235693056/lNGUneLX_400x400.jpg",
          alt_text: "cute cat"),
      Element(type: "mrkdwn", text: "*Cat* has approved this message.")
    ]),
    Block(type: "context", elements: [
      Element(type: "plain_text", text: "Author: K A Applegate", emoji: true)
    ]),
    Block(type: "actions", elements: [
      Element(
          type: "button",
          text: Element(type: "plain_text", text: "Click me", emoji: true),
          value: 'click_me_123',
          action_id: "actionId-1")
    ]),
    Block(
        type: "image",
        title: Element(type: "plain_text", text: "I need a Marg"),
        image_url:
            "https://assets3.thrillist.com/v1/image/1682388/size/tl-horizontal_main.jpg",
        alt_text: "marg")
  ]);

  slack.send(m);
}

```
