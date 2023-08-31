
// ignore_for_file: non_constant_identifier_names

import 'package:dartslack3/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'element.g.dart';

@JsonSerializable(includeIfNull:false)
class Element  {
  
  String type;
  
  TextObject? text;
  
  String? action_id;
  
  String? url;
  
  String? value;
  
  String? style;
  
  // Image related
  
  String? image_url;
  String? alt_text;
  
  Element({required this.type, this.text, this.action_id, this.url, this.value, this.style,  this.image_url, this.alt_text});
  
  factory Element.fromJson(Map<String, dynamic> json) => _$ElementFromJson(json);

  Map<String, dynamic> toJson() => _$ElementToJson(this);
  
  
  factory Element.buttonElement(TextObject text, 
  String action_id,{
  String? url, String? value, String? style,}) => 
  Element(type: 'button', text: text, action_id: action_id, url: url, value: value, style: style);
  
  
  factory Element.imageElement(String image_url, 
  String alt_text) => 
  Element(type: 'image', image_url: image_url, alt_text: alt_text);
  
  
  /*
  String toString() => jsonEncode(_toMap());
  
  @override
  Map _toMap() {
    Map<String,Object> buttonMap = {};
    
    buttonMap['type'] = type;
    buttonMap['text'] = text._toMap();
    buttonMap['action_id'] = actionId;
    
    if( this.url.isNotEmpty ) buttonMap['url'] = url;
    if( this.value.isNotEmpty ) buttonMap['value'] = url;
    if( this.style.isNotEmpty ) buttonMap['style'] = url;
    
    return buttonMap;
  }
  */
}