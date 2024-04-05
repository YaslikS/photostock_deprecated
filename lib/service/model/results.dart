import 'package:json_annotation/json_annotation.dart';
import 'package:photostock/service/model/photo_item.dart';

part 'results.g.dart';

@JsonSerializable(explicitToJson: true)
class Results {
  final List<PhotoItem> photoItems;

  Results({
    required this.photoItems,
  });

  // From Json
  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);

  // ToJson
  Map<String, dynamic> toJson() => _$ResultsToJson(this);
}
