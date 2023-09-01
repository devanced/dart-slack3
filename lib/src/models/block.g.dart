// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Block _$BlockFromJson(Map<String, dynamic> json) => Block(
      type: json['type'] as String,
      accessory: json['accessory'] == null
          ? null
          : Element.fromJson(json['accessory'] as Map<String, dynamic>),
      alt_text: json['alt_text'] as String?,
      block_id: json['block_id'] as String?,
      dispatch_action: json['dispatch_action'] as bool?,
      element: json['element'] == null
          ? null
          : Element.fromJson(json['element'] as Map<String, dynamic>),
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      image_url: json['image_url'] as String?,
      label: json['label'] == null
          ? null
          : Element.fromJson(json['label'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : ElementText.fromJson(json['text'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : Element.fromJson(json['title'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BlockToJson(Block instance) {
  final val = <String, dynamic>{
    'type': instance.type,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accessory', instance.accessory);
  writeNotNull('alt_text', instance.alt_text);
  writeNotNull('block_id', instance.block_id);
  writeNotNull('dispatch_action', instance.dispatch_action);
  writeNotNull('elements', instance.elements);
  writeNotNull('element', instance.element);
  writeNotNull('fields', instance.fields);
  writeNotNull('image_url', instance.image_url);
  writeNotNull('label', instance.label);
  writeNotNull('text', instance.text);
  writeNotNull('title', instance.title);
  return val;
}
