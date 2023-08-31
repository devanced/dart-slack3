import 'package:dartslack3/src/models/models.dart';
import 'package:json_annotation/json_annotation.dart';


part 'block.g.dart';

@JsonSerializable(includeIfNull:false)
class Block {
  final String type;
  
  List<Element>? elements;
  
  Element? accessory;
  // ignore: non_constant_identifier_names
  String? block_id;
  
  TextObject? text;
  
  /// Creates an [Block] object which can be added to a [Message] object
  // ignore: non_constant_identifier_names
  Block({required this.type, this.elements, this.block_id, this.accessory, this.text});
  
  factory Block.fromJson(Map<String, dynamic> json) => _$BlockFromJson(json);

  Map<String, dynamic> toJson() => _$BlockToJson(this);
  /*
  String toString() => jsonEncode(_toMap());
  
  Map _toMap() {
    Map blockMap = Map()..['type'] = type;

    if (blockId.isNotEmpty) blockMap['block_id'] = blockId;

    if (elements.isNotEmpty) {
      List elementsFields = [];
      for (Element e in elements) elementsFields.add(e._toMap());

      blockMap['elements'] = elements;
    }
    return blockMap;
  }
  */
}