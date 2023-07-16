
import 'package:json_annotation/json_annotation.dart';


part 'dob.g.dart';

/// {@template dob}
/// Dob description
/// {@endtemplate}
@JsonSerializable()
class Dob {
  /// {@macro dob}
  const Dob({ 
  required this.date,
  required this.age,
  });

    /// Creates a Dob from Json map
  factory Dob.fromJson(Map<String, dynamic> data) => _$DobFromJson(data);

  /// A description for date
  final String date;

  /// A description for age
  final int age;



    /// Creates a Json map from a Dob
  Map<String, dynamic> toJson() => _$DobToJson(this);

}
