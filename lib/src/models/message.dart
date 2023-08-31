import 'dart:core';
import 'package:dartslack3/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';


part 'message.g.dart';

@JsonSerializable(includeIfNull:false)
class Message {
  /// For a simple message, your JSON payload must contain a [text] property. This is the text that will be posted to the channel.
  final String text;
  
  /// Any number of [Block]s can be added to the message
  List<Block>? blocks;

  /// Creates a [Message] object which can be sent to a Slack channel
  Message({required this.text, this.blocks});
  
  
  factory Message.fromJson(Map<String, dynamic> json) => _$MessageFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$MessageToJson(this);
  
  /*
  /// Prints out the [Map] that this object represents
  String toString() {
    Map message = new Map();

    if (text.isNotEmpty) message['text'] = text;

    if (blocks.length > 0) {
      List blocksList = [];
      for (Block a in blocks) blocksList.add(a._toMap());

      message['blocks'] = blocksList;
    }


    print(jsonEncode(message));
    return jsonEncode(message);
  }
  */
}
