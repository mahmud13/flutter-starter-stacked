import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'application_models.freezed.dart';
part 'application_models.g.dart';

@freezed
class User with _$User {
  User._();

  @JsonSerializable(explicitToJson: true)
  factory User({
    String? id,
    String? email,
    String? name,
    @JsonKey(ignore: true) String? password,
    String? phone,
    String? designation,
    String? imageUrl,
    @Default(0) int totalPointsRequested,
    @Default(0) int totalPointsEarned,
    @Default(0) double totalMoneyReceived,
    @Default([]) List<UserFaktory> faktories,
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
class UserFaktory with _$UserFaktory {
  UserFaktory._();

  factory UserFaktory({
    required String id,
    required String name,
    String? designation,
    @Default(0) int totalPointsEarned,
    @Default(0) int totalPointsRequested,
  }) = _UserFaktory;

  factory UserFaktory.fromJson(Map<String, dynamic> json) =>
      _$UserFaktoryFromJson(json);
}

@freezed
class PointField with _$PointField {
  PointField._();
  int get totalPoints =>
      children.fold<int>(0, (value, element) => element.point + value);
  factory PointField({
    required String field,
    required String label,
    @Default(61668) int icon,
    required List<PointFieldChild> children,
  }) = _PointField;

  factory PointField.fromJson(Map<String, dynamic> json) =>
      _$PointFieldFromJson(json);
}

enum PointFieldChildType { boolean, text, image, gps }

@freezed
class PointFieldChild with _$PointFieldChild {
  PointFieldChild._();

  factory PointFieldChild({
    required String field,
    required String label,
    @Default(PointFieldChildType.text) PointFieldChildType type,
    required int point,
  }) = _PointFieldChild;

  factory PointFieldChild.fromJson(Map<String, dynamic> json) =>
      _$PointFieldChildFromJson(json);
}

enum SuggestionStatus { submitted, approved, rejected }

@freezed
class Suggestion with _$Suggestion {
  Suggestion._();
  String get statusDisplay {
    switch (status) {
      case SuggestionStatus.approved:
        return 'Approved';
      case SuggestionStatus.submitted:
        return 'Submitted';
      case SuggestionStatus.rejected:
        return 'No Approved';
    }
  }

  String get submittedAtDisplay {
    return DateFormat.yMMMd().format(submittedAt);
  }

  @JsonSerializable(explicitToJson: true)
  factory Suggestion({
    String? id,
    required String faktoryId,
    required String userId,
    required DateTime submittedAt,
    required SuggestionPayload payload,
    required SuggestionStatus status,
  }) = _Suggestion;

  factory Suggestion.fromJson(Map<String, dynamic> json) =>
      _$SuggestionFromJson(json);
}

@freezed
class SuggestionPayload with _$SuggestionPayload {
  SuggestionPayload._();

  int get totalPointsRequested => children.fold<int>(
      0, (value, element) => element.pointsRequested + value);

  int get totalPointsEarned =>
      children.fold<int>(0, (value, element) => element.pointsEarned + value);

  @JsonSerializable(explicitToJson: true)
  factory SuggestionPayload({
    required String field,
    required List<SuggestionPayloadChild> children,
  }) = _SuggestionPayload;

  factory SuggestionPayload.fromJson(Map<String, dynamic> json) =>
      _$SuggestionPayloadFromJson(json);
}

@freezed
class SuggestionPayloadChild with _$SuggestionPayloadChild {
  SuggestionPayloadChild._();

  factory SuggestionPayloadChild({
    required String field,
    required dynamic value,
    @Default(0) int pointsRequested,
    @Default(0) int pointsEarned,
  }) = _SuggestionPayloadChild;

  factory SuggestionPayloadChild.fromJson(Map<String, dynamic> json) =>
      _$SuggestionPayloadChildFromJson(json);
}

@freezed
class GpsField with _$GpsField {
  GpsField._();

  factory GpsField({
    required double longitude,
    required double latitude,
    required double distance,
  }) = _GpsField;

  factory GpsField.fromJson(Map<String, dynamic> json) =>
      _$GpsFieldFromJson(json);
}
