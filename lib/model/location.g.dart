part of 'location.dart';

Location _$LocationFromJson(Map<String, dynamic> json) => Location(
      street: Street.fromJson(json['street'] as Map<String, dynamic>),
      city: json['city'] as String,
      state: json['state'] as String,
      country: json['country'] as String,
      postcode: json['postcode'] as String,
      coordinates: Coordinates.fromJson(json['coordinates'] as Map<String, dynamic>),
      timezone: Timezone.fromJson(json['timezone'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{ 
      'street': instance.street,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'postcode': instance.postcode,
      'coordinates': instance.coordinates,
      'timezone': instance.timezone,
    };