// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Message _$MessageFromJson(Map<String, dynamic> json) => Message(
      blocks: (json['blocks'] as List<dynamic>?)
          ?.map((e) => Block.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String?,
    );

Map<String, dynamic> _$MessageToJson(Message instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('blocks', instance.blocks);
  return val;
}
