// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elementtext.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ElementText _$ElementTextFromJson(Map<String, dynamic> json) => ElementText(
      type: json['type'] as String,
      emoji: json['emoji'] as bool?,
      text: json['text'] as String?,
      verbatim: json['verbatim'] as bool?,
    );

Map<String, dynamic> _$ElementTextToJson(ElementText instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emoji', instance.emoji);
  writeNotNull('text', instance.text);
  val['type'] = instance.type;
  writeNotNull('verbatim', instance.verbatim);
  return val;
}
