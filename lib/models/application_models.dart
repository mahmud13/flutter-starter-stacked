import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
class User with _$User {
  User._();

  factory User({
    String? id,
    String? email,
    String? name,
    String? password,
    String? phone,
    String? designation,
    String? imageUrl,
    @JsonKey(name: 'factoryId') String? faktoryId,
    @JsonKey(includeIfNull: false) Faktory? faktory,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Faktory with _$Faktory {
  Faktory._();

  factory Faktory({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'factory_name') required String name,
    @JsonKey(name: 'address_display') String? address,
    Geolocation? geolocation,
  }) = _Faktory;

  factory Faktory.fromJson(Map<String, dynamic> json) =>
      _$FaktoryFromJson(json);
}

@freezed
class Geolocation with _$Geolocation {
  Geolocation._();

  static double parseDouble(value) =>
      value is String ? double.parse(value) : value;

  factory Geolocation({
    @JsonKey(fromJson: Geolocation.parseDouble) required double longitude,
    @JsonKey(fromJson: Geolocation.parseDouble) required double latitude,
  }) = _Geolocation;

  factory Geolocation.fromJson(Map<String, dynamic> json) =>
      _$GeolocationFromJson(json);
}

@freezed
class PointField with _$PointField {
  PointField._();
  double get totalPoints =>
      children.fold<double>(0, (value, element) => element.point + value);
  factory PointField({
    required String field,
    required String label,
    @Default(61668) int icon,
    required List<PointFieldChild> children,
  }) = _PointField;

  factory PointField.fromJson(Map<String, dynamic> json) =>
      _$PointFieldFromJson(json);
}

@freezed
class PointFieldChild with _$PointFieldChild {
  PointFieldChild._();

  factory PointFieldChild({
    required String field,
    required String label,
    required double point,
  }) = _PointFieldChild;

  factory PointFieldChild.fromJson(Map<String, dynamic> json) =>
      _$PointFieldChildFromJson(json);
}
