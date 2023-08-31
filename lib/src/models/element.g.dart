// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Element _$ElementFromJson(Map<String, dynamic> json) => Element(
      type: json['type'] as String,
      text: json['text'] == null
          ? null
          : TextObject.fromJson(json['text'] as Map<String, dynamic>),
      action_id: json['action_id'] as String?,
      url: json['url'] as String?,
      value: json['value'] as String?,
      style: json['style'] as String?,
      image_url: json['image_url'] as String?,
      alt_text: json['alt_text'] as String?,
    );

Map<String, dynamic> _$ElementToJson(Element instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('action_id', instance.action_id);
  writeNotNull('url', instance.url);
  writeNotNull('value', instance.value);
  writeNotNull('style', instance.style);
  writeNotNull('image_url', instance.image_url);
  writeNotNull('alt_text', instance.alt_text);
  return val;
}
