
import 'package:json_annotation/json_annotation.dart';


part 'street.g.dart';

/// {@template street}
/// Street description
/// {@endtemplate}
@JsonSerializable()
class Street {
  /// {@macro street}
  const Street({ 
  required this.number,
  required this.name,
  });

    /// Creates a Street from Json map
  factory Street.fromJson(Map<String, dynamic> data) => _$StreetFromJson(data);

  /// A description for number
  final int number;

  /// A description for name
  final String name;



    /// Creates a Json map from a Street
  Map<String, dynamic> toJson() => _$StreetToJson(this);

}
