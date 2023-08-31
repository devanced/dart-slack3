# dart3-slack

Dartlang interface to the Slack Incoming Webhook API

API Documentation available on [Pub](https://github.com/devanced/dart-slack3)

This is somehow a fork of https://github.com/ChildrenOfUr/dart-slack

## Simple Start

    import 'package:slack/html/slack';
    // or
    import 'package:slack/io/slack';

    main() {

    		// Webhook: https://hooks.slack.com/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX
      // Slack slack = new Slack('webhook-domain', 'webhook-path');
    		Slack slack = new Slack('hooks.slack.com', '/services/T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX');

				Block block1 =
				Block(
					type: "section",
					block_id: "section567",
					accessory: Element.imageElement("http://placekitten.com/700/500", "Kitten"),
					text: TextObject(type: "mrkdwn", text: "Markdown text"));

				Block block2 = Block(type: "section",
					text: TextObject(type: "plain_text", text: "This is a plain text section block.")
					);

				Message m = Message(text: "Hello from Dart" , blocks: [block1, block2]);

				s.send(m);

    }
