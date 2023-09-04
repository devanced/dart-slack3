// ignore_for_file: non_constant_identifier_names

import 'package:slack_webhook/src/models/models.dart';

part 'block.g.dart';

/// A Message contains an optional amount of Block(s)
class Block {
  /// Mandatory field. All Block(s) must have a type
  final String type;

  /// A section block can have an accessory
  Element? accessory;

  /// Alt text used for images
  String? alt_text;

  /// Identifier of Block
  String? block_id;

  bool? dispatch_action;

  /// List of elements
  List<Element>? elements;

  Element? element;

  List<Element>? fields;

  /// URL of image
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
