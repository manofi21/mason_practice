
import 'package:json_annotation/json_annotation.dart';


part 'timezone.g.dart';

/// {@template timezone}
/// Timezone description
/// {@endtemplate}
@JsonSerializable()
class Timezone {
  /// {@macro timezone}
  const Timezone({ 
  required this.offset,
  required this.description,
  });

    /// Creates a Timezone from Json map
  factory Timezone.fromJson(Map<String, dynamic> data) => _$TimezoneFromJson(data);

  /// A description for offset
  final String offset;

  /// A description for description
  final String description;



    /// Creates a Json map from a Timezone
  Map<String, dynamic> toJson() => _$TimezoneToJson(this);

}
