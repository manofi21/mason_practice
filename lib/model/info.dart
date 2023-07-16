
import 'package:json_annotation/json_annotation.dart';


part 'info.g.dart';

/// {@template info}
/// Info description
/// {@endtemplate}
@JsonSerializable()
class Info {
  /// {@macro info}
  const Info({ 
  required this.seed,
  required this.results,
  required this.page,
  required this.version,
  });

    /// Creates a Info from Json map
  factory Info.fromJson(Map<String, dynamic> data) => _$InfoFromJson(data);

  /// A description for seed
  final String seed;

  /// A description for results
  final int results;

  /// A description for page
  final int page;

  /// A description for version
  final String version;



    /// Creates a Json map from a Info
  Map<String, dynamic> toJson() => _$InfoToJson(this);

}
