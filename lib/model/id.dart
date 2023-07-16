
import 'package:json_annotation/json_annotation.dart';


part 'id.g.dart';

/// {@template id}
/// Id description
/// {@endtemplate}
@JsonSerializable()
class Id {
  /// {@macro id}
  const Id({ 
  required this.name,
  required this.value,
  });

    /// Creates a Id from Json map
  factory Id.fromJson(Map<String, dynamic> data) => _$IdFromJson(data);

  /// A description for name
  final String name;

  /// A description for value
  final String value;



    /// Creates a Json map from a Id
  Map<String, dynamic> toJson() => _$IdToJson(this);

}
