// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element.dart';

// Generated code, modified to support both Element.text  as String and Element.text as Element

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Element _$ElementFromJson(Map<String, dynamic> json) => Element(
      type: json['type'] as String,
      action_id: json['action_id'] as String?,
      alt_text: json['alt_text'] as String?,
      emoji: json['emoji'] as bool?,
      image_url: json['image_url'] as String?,
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      placholder: json['placholder'] == null
          ? null
          : Element.fromJson(json['placholder'] as Map<String, dynamic>),
      style: json['style'] as String?,
      text: json['text'] == null
          ? null
          : json['text'] is String ? json['text'] as String? :  Element.fromJson(json['text'] as Map<String, dynamic>),
      url: json['url'] as String?,
      value: json['value'] as String?,
      verbatim: json['verbatim'] as bool?,
    );

Map<String, dynamic> _$ElementToJson(Element instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('action_id', instance.action_id);
  writeNotNull('alt_text', instance.alt_text);
  writeNotNull('emoji', instance.emoji);
  writeNotNull('image_url', instance.image_url);
  writeNotNull('options', instance.options);
  writeNotNull('placholder', instance.placholder);
  writeNotNull('style', instance.style);
  writeNotNull('text', instance.text);
  val['type'] = instance.type;
  writeNotNull('url', instance.url);
  writeNotNull('value', instance.value);
  writeNotNull('verbatim', instance.verbatim);
  return val;
}
