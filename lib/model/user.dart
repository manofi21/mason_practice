
import 'package:json_annotation/json_annotation.dart';
import 'package:practice_mason_packages/model/results.dart';
import 'package:practice_mason_packages/model/info.dart';


part 'user.g.dart';

/// {@template user}
/// User description
/// {@endtemplate}
@JsonSerializable()
class User {
  /// {@macro user}
  const User({ 
  required this.results,
  required this.info,
  });

    /// Creates a User from Json map
  factory User.fromJson(Map<String, dynamic> data) => _$UserFromJson(data);

  /// A description for results
  final List<Results> results;

  /// A description for info
  final Info info;



    /// Creates a Json map from a User
  Map<String, dynamic> toJson() => _$UserToJson(this);

}
