part of 'dob.dart';

Dob _$DobFromJson(Map<String, dynamic> json) => Dob(
      date: json['date'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$DobToJson(Dob instance) => <String, dynamic>{ 
      'date': instance.date,
      'age': instance.age,
    };