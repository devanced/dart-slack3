import 'package:slack_webhook/slack_webhook.dart';

void main() {
  
  // Replace with valid values, eg
  // 'hooks.slack.com', '/services/T000000/B00000/kldSD34SDsaa'
  Slack slack = Slack('',
      '');

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

// Also possible to create from JSON, useful when building messages with Slack Block kit builder, https://app.slack.com/block-kit-builder/
  m = Message.fromJson({
    "text": "Hello from Dart JSON Example",
    "blocks": [
      {
        "type": "context",
        "block_id": "section567",
        "elements": [
          {
            "type": "image",
            "image_url":
                "https://pbs.twimg.com/profile_images/625633822235693056/lNGUneLX_400x400.jpg",
            "alt_text": "cute cat"
          },
          {"type": "mrkdwn", "text": "*Cat* has approved this message."}
        ]
      },
      {
        "type": "context",
        "elements": [
          {"type": "plain_text", "text": "Author: K A Applegate", "emoji": true}
        ]
      },
      {
        "type": "actions",
        "elements": [
          {
            "type": "button",
            "text": {"type": "plain_text", "text": "Click Me", "emoji": true},
            "value": "click_me_123",
            "action_id": "actionId-1"
          }
        ]
      },
      {
        "type": "image",
        "title": {
          "type": "plain_text",
          "text": "I need a Marg",
        },
        "image_url": "https://assets3.thrillist.com/v1/image/1682388/size/tl-horizontal_main.jpg",
        "alt_text": "marg"
      }
    ]
  });

  slack.send(m);
}
