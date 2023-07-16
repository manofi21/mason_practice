
import 'package:json_annotation/json_annotation.dart';


part 'login.g.dart';

/// {@template login}
/// Login description
/// {@endtemplate}
@JsonSerializable()
class Login {
  /// {@macro login}
  const Login({ 
  required this.uuid,
  required this.username,
  required this.password,
  required this.salt,
  required this.md5,
  required this.sha1,
  required this.sha256,
  });

    /// Creates a Login from Json map
  factory Login.fromJson(Map<String, dynamic> data) => _$LoginFromJson(data);

  /// A description for uuid
  final String uuid;

  /// A description for username
  final String username;

  /// A description for password
  final String password;

  /// A description for salt
  final String salt;

  /// A description for md5
  final String md5;

  /// A description for sha1
  final String sha1;

  /// A description for sha256
  final String sha256;



    /// Creates a Json map from a Login
  Map<String, dynamic> toJson() => _$LoginToJson(this);

}
