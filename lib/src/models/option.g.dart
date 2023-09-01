// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      text: Element.fromJson(json['text'] as Map<String, dynamic>),
      value: json['value'] as String,
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'value': instance.value,
      'text': instance.text,
    };
