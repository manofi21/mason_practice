
import 'package:json_annotation/json_annotation.dart';


part 'name.g.dart';

/// {@template name}
/// Name description
/// {@endtemplate}
@JsonSerializable()
class Name {
  /// {@macro name}
  const Name({ 
  required this.title,
  required this.first,
  required this.last,
  });

    /// Creates a Name from Json map
  factory Name.fromJson(Map<String, dynamic> data) => _$NameFromJson(data);

  /// A description for title
  final String title;

  /// A description for first
  final String first;

  /// A description for last
  final String last;



    /// Creates a Json map from a Name
  Map<String, dynamic> toJson() => _$NameToJson(this);

}
