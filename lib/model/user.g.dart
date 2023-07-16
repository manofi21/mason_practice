part of 'user.dart';

User _$UserFromJson(Map<String, dynamic> json) => User(
      results: (json['results'] as List<dynamic>).map((dynamic e) => Results.fromJson(e as Map<String, dynamic>)).toList(),
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{ 
      'results': instance.results,
      'info': instance.info,
    };