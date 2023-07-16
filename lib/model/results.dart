
import 'package:json_annotation/json_annotation.dart';
import 'package:practice_mason_packages/model/name.dart';
import 'package:practice_mason_packages/model/location.dart';
import 'package:practice_mason_packages/model/login.dart';
import 'package:practice_mason_packages/model/dob.dart';
import 'package:practice_mason_packages/model/registered.dart';
import 'package:practice_mason_packages/model/id.dart';
import 'package:practice_mason_packages/model/picture.dart';


part 'results.g.dart';

/// {@template results}
/// Results description
/// {@endtemplate}
@JsonSerializable()
class Results {
  /// {@macro results}
  const Results({ 
  required this.gender,
  required this.name,
  required this.location,
  required this.email,
  required this.login,
  required this.dob,
  required this.registered,
  required this.phone,
  required this.cell,
  required this.id,
  required this.picture,
  required this.nat,
  });

    /// Creates a Results from Json map
  factory Results.fromJson(Map<String, dynamic> data) => _$ResultsFromJson(data);

  /// A description for gender
  final String gender;

  /// A description for name
  final Name name;

  /// A description for location
  final Location location;

  /// A description for email
  final String email;

  /// A description for login
  final Login login;

  /// A description for dob
  final Dob dob;

  /// A description for registered
  final Registered registered;

  /// A description for phone
  final String phone;

  /// A description for cell
  final String cell;

  /// A description for id
  final Id id;

  /// A description for picture
  final Picture picture;

  /// A description for nat
  final String nat;



    /// Creates a Json map from a Results
  Map<String, dynamic> toJson() => _$ResultsToJson(this);

}
