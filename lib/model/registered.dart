
import 'package:json_annotation/json_annotation.dart';


part 'registered.g.dart';

/// {@template registered}
/// Registered description
/// {@endtemplate}
@JsonSerializable()
class Registered {
  /// {@macro registered}
  const Registered({ 
  required this.date,
  required this.age,
  });

    /// Creates a Registered from Json map
  factory Registered.fromJson(Map<String, dynamic> data) => _$RegisteredFromJson(data);

  /// A description for date
  final String date;

  /// A description for age
  final int age;



    /// Creates a Json map from a Registered
  Map<String, dynamic> toJson() => _$RegisteredToJson(this);

}
