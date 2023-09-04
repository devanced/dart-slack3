import 'package:slack_webhook/src/models/models.dart';

part 'option.g.dart';

class Option {
  String value;

  Element text;

  Option({
    required this.text,
    required this.value,
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  Map<String, dynamic> toJson() => _$OptionToJson(this);
}
