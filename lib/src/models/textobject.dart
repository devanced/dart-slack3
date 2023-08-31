import 'package:json_annotation/json_annotation.dart';
part 'textobject.g.dart';

@JsonSerializable(includeIfNull:false)
class TextObject {
  
  // The formatting to use for this text object. Can be one of plain_textor mrkdwn.
  String type;
  
  String text;
  
  // Indicates whether emojis in a text field should be escaped into the colon emoji format. This field is only usable when type is plain_text.
  bool? emoji;
  
  bool? verbatim;
 
  TextObject({required this.type, required this.text, this.emoji, this.verbatim});
  
  factory TextObject.fromJson(Map<String, dynamic> json) => _$TextObjectFromJson(json);

  Map<String, dynamic> toJson() => _$TextObjectToJson(this);
  /*
  String toString() => jsonEncode(_toMap());
  
  @override
  Map _toMap() {
    Map<String,Object> textObjectMap = {};
    
    textObjectMap["type"] = type;
    textObjectMap["text"] = text;
    
    if(type == "plain_text" ) {
      textObjectMap["emoji"] = emoji;
    }
    
    textObjectMap["verbatim"] = verbatim;
    
    return textObjectMap;
  } 
  */
}