part of 'timezone.dart';

Timezone _$TimezoneFromJson(Map<String, dynamic> json) => Timezone(
      offset: json['offset'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$TimezoneToJson(Timezone instance) => <String, dynamic>{ 
      'offset': instance.offset,
      'description': instance.description,
    };