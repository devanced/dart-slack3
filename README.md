# slack_webhook

Dartlang interface to the Slack Incoming Webhook API

API Documentation available on [Pub](https://github.com/devanced/dart-slack3)

This is somehow a fork of https://github.com/ChildrenOfUr/dart-slack

## Simple Start

import 'package:slack_webhook/dart_slack3.dart';

main() {

		// Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
	// Slack slack = new Slack('webhook-domain', 'webhook-path');
		Slack slack = new Slack('hooks.slack.com', '/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX');

		Message m;

  m = Message(text: "Hello from Dart", blocks: [
    Block(
        type: "context",
        block_id: "section567",
        elements: [Element(
            type: "image",
            image_url:
                "https://pbs.twimg.com/profile_images/625633822235693056/lNGUneLX_400x400.jpg",
            alt_text: "Text"),
        Element(type: "mrkdwn", text: "*Cat* has approved this message.")
    ]),
    Block(
        type: "actions",
        elements:
        [
          Element(type: "button", text: ElementText(type: "plain_text", text: "Click me", emoji: true), action_id: "actionId-1")
        ] 
      )
  ]);

  s.send(m);

  // Also possible to create from JSON, useful when building messages with Slack Block kit builder, https://app.slack.com/block-kit-builder/
  m = Message.fromJson({
    "blocks": [
      {
        "type": "context",
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
        "type": "actions",
        "elements": [
          {
            "type": "button",
            "text": {"type": "plain_text", "text": "Click Me", "emoji": true},
            "value": "click_me_123",
            "action_id": "actionId-1"
          }
        ]
      }
    ]
  });

  s.send(m);

}
