import 'package:flutter/foundation.dart';
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
    String? factoryId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Factory with _$Factory {
  Factory._();

  factory Factory({
    @JsonKey(name: '_id') required String id,
    @JsonKey(name: 'factory_name') required String name,
    @JsonKey(name: 'address_display') String? address,
    Geolocation? geolocation,
  }) = _Factory;

  factory Factory.fromJson(Map<String, dynamic> json) =>
      _$FactoryFromJson(json);
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
