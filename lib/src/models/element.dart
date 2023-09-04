// ignore_for_file: non_constant_identifier_names

import 'package:slack_webhook/src/models/models.dart';

part 'element.g.dart';

class Element {
  String? action_id;
  String? alt_text;
  bool? emoji;
  String? image_url;
  List<Option>? options;
  Element? placholder;
  String? style;
  Object? text;
  String type;
  String? url;
  String? value;
  bool? verbatim;

  Element(
      {required this.type,
      this.action_id,
      this.alt_text,
      this.emoji,
      this.image_url,
      this.options,
      this.placholder,
      this.style,
      this.text,
      this.url,
      this.value,
      this.verbatim});

  factory Element.fromJson(Map<String, dynamic> json) =>
      _$ElementFromJson(json);

  Map<String, dynamic> toJson() => _$ElementToJson(this);
}
