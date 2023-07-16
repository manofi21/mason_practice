part of 'id.dart';

Id _$IdFromJson(Map<String, dynamic> json) => Id(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$IdToJson(Id instance) => <String, dynamic>{ 
      'name': instance.name,
      'value': instance.value,
    };