part of 'street.dart';

Street _$StreetFromJson(Map<String, dynamic> json) => Street(
      number: json['number'] as int,
      name: json['name'] as String,
    );

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{ 
      'number': instance.number,
      'name': instance.name,
    };