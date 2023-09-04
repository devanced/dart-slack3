// ignore_for_file: non_constant_identifier_names

import 'package:slack_webhook/src/models/models.dart';

part 'block.g.dart';

class Block {
  final String type;

  Element? accessory;
  
  String? alt_text;
  
  String? block_id;
  
  bool? dispatch_action;
  
  List<Element>? elements;
  
  Element? element;

  List<Element>? fields;
  
  String? image_url;
  
  Element? label;

  Element? text;
  
  Element? title;

  /// Creates an [Block] object which can be added to a [Message] object
  Block(
      {required this.type,
      this.accessory,
      this.alt_text,
      this.block_id,
      this.dispatch_action,
      this.element,
      this.elements,
      this.fields,
      this.image_url,
      this.label,
      this.text,
      this.title});

  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

  Map<String, dynamic> toJson() => _$BlockToJson(this);
}
