part of 'name.dart';

Name _$NameFromJson(Map<String, dynamic> json) => Name(
      title: json['title'] as String,
      first: json['first'] as String,
      last: json['last'] as String,
    );

Map<String, dynamic> _$NameToJson(Name instance) => <String, dynamic>{ 
      'title': instance.title,
      'first': instance.first,
      'last': instance.last,
    };