// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textobject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TextObject _$TextObjectFromJson(Map<String, dynamic> json) => TextObject(
      type: json['type'] as String,
      text: json['text'] as String,
      emoji: json['emoji'] as bool?,
      verbatim: json['verbatim'] as bool?,
    );

Map<String, dynamic> _$TextObjectToJson(TextObject instance) {
  final val = <String, dynamic>{
    'type': instance.type,
    'text': instance.text,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('emoji', instance.emoji);
  writeNotNull('verbatim', instance.verbatim);
  return val;
}
