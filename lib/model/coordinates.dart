
import 'package:json_annotation/json_annotation.dart';


part 'coordinates.g.dart';

/// {@template coordinates}
/// Coordinates description
/// {@endtemplate}
@JsonSerializable()
class Coordinates {
  /// {@macro coordinates}
  const Coordinates({ 
  required this.latitude,
  required this.longitude,
  });

    /// Creates a Coordinates from Json map
  factory Coordinates.fromJson(Map<String, dynamic> data) => _$CoordinatesFromJson(data);

  /// A description for latitude
  final String latitude;

  /// A description for longitude
  final String longitude;



    /// Creates a Json map from a Coordinates
  Map<String, dynamic> toJson() => _$CoordinatesToJson(this);

}
