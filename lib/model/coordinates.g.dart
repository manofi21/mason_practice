part of 'coordinates.dart';

Coordinates _$CoordinatesFromJson(Map<String, dynamic> json) => Coordinates(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
    );

Map<String, dynamic> _$CoordinatesToJson(Coordinates instance) => <String, dynamic>{ 
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };