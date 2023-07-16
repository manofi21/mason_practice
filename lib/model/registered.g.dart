part of 'registered.dart';

Registered _$RegisteredFromJson(Map<String, dynamic> json) => Registered(
      date: json['date'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$RegisteredToJson(Registered instance) => <String, dynamic>{ 
      'date': instance.date,
      'age': instance.age,
    };