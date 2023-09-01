import 'dart:core';
import 'package:slack_webhook/src/models/models.dart';


part 'message.g.dart';
class Message {
  /// For a simple message, your JSON payload must contain a [text] property. This is the text that will be posted to the channel.
  String? text;
  
  /// Any number of [Block]s can be added to the message
  List<Block>? blocks;

  /// Creates a [Message] object which can be sent to a Slack channel
  Message({this.blocks, this.text});
  
  
  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
