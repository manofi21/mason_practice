
import 'package:json_annotation/json_annotation.dart';


part 'picture.g.dart';

/// {@template picture}
/// Picture description
/// {@endtemplate}
@JsonSerializable()
class Picture {
  /// {@macro picture}
  const Picture({ 
  required this.large,
  required this.medium,
  required this.thumbnail,
  });

    /// Creates a Picture from Json map
  factory Picture.fromJson(Map<String, dynamic> data) => _$PictureFromJson(data);

  /// A description for large
  final String large;

  /// A description for medium
  final String medium;

  /// A description for thumbnail
  final String thumbnail;



    /// Creates a Json map from a Picture
  Map<String, dynamic> toJson() => _$PictureToJson(this);

}
