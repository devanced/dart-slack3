// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'block.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Block _$BlockFromJson(Map<String, dynamic> json) => Block(
      type: json['type'] as String,
      elements: (json['elements'] as List<dynamic>?)
          ?.map((e) => Element.fromJson(e as Map<String, dynamic>))
          .toList(),
      block_id: json['block_id'] as String?,
      accessory: json['accessory'] == null
          ? null
          : Element.fromJson(json['accessory'] as Map<String, dynamic>),
      text: json['text'] == null
          ? null
          : TextObject.fromJson(json['text'] as Map<String, dynamic>),
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

  writeNotNull('elements', instance.elements);
  writeNotNull('accessory', instance.accessory);
  writeNotNull('block_id', instance.block_id);
  writeNotNull('text', instance.text);
  return val;
}
