// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'results.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      photoItems: (json['photoItems'] as List<dynamic>)
          .map((e) => PhotoItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'photoItems': instance.photoItems.map((e) => e.toJson()).toList(),
    };
