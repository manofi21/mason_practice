
import 'package:json_annotation/json_annotation.dart';
import 'package:practice_mason_packages/model/street.dart';
import 'package:practice_mason_packages/model/coordinates.dart';
import 'package:practice_mason_packages/model/timezone.dart';


part 'location.g.dart';

/// {@template location}
/// Location description
/// {@endtemplate}
@JsonSerializable()
class Location {
  /// {@macro location}
  const Location({ 
  required this.street,
  required this.city,
  required this.state,
  required this.country,
  required this.postcode,
  required this.coordinates,
  required this.timezone,
  });

    /// Creates a Location from Json map
  factory Location.fromJson(Map<String, dynamic> data) => _$LocationFromJson(data);

  /// A description for street
  final Street street;

  /// A description for city
  final String city;

  /// A description for state
  final String state;

  /// A description for country
  final String country;

  /// A description for postcode
  final String postcode;

  /// A description for coordinates
  final Coordinates coordinates;

  /// A description for timezone
  final Timezone timezone;



    /// Creates a Json map from a Location
  Map<String, dynamic> toJson() => _$LocationToJson(this);

}
