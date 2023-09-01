part 'elementtext.g.dart';

class ElementText {
  bool? emoji;
  String? text;
  final String type;
  bool? verbatim;

  ElementText({required this.type, this.emoji, this.text, this.verbatim});
  
  factory ElementText.fromJson(Map<String, dynamic> json) =>
      _$ElementTextFromJson(json);

  Map<String, dynamic> toJson() => _$ElementTextToJson(this);
}