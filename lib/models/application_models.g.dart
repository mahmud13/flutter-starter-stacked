// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'application_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    id: json['id'] as String?,
    email: json['email'] as String?,
    name: json['name'] as String?,
    password: json['password'] as String?,
    phone: json['phone'] as String?,
    designation: json['designation'] as String?,
    imageUrl: json['imageUrl'] as String?,
    totalPointsRequested: json['totalPointsRequested'] as int? ?? 0,
    totalPointsEarned: json['totalPointsEarned'] as int? ?? 0,
    totalMoneyReceived: (json['totalMoneyReceived'] as num?)?.toDouble() ?? 0,
    faktories: (json['faktories'] as List<dynamic>?)
            ?.map((e) => UserFaktory.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
      'designation': instance.designation,
      'imageUrl': instance.imageUrl,
      'totalPointsRequested': instance.totalPointsRequested,
      'totalPointsEarned': instance.totalPointsEarned,
      'totalMoneyReceived': instance.totalMoneyReceived,
      'faktories': instance.faktories.map((e) => e.toJson()).toList(),
    };

_$_Faktory _$_$_FaktoryFromJson(Map<String, dynamic> json) {
  return _$_Faktory(
    id: json['_id'] as String,
    name: json['factory_name'] as String,
    address: json['address_display'] as String?,
    geolocation: json['geolocation'] == null
        ? null
        : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FaktoryToJson(_$_Faktory instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'factory_name': instance.name,
      'address_display': instance.address,
      'geolocation': instance.geolocation,
    };

_$_Geolocation _$_$_GeolocationFromJson(Map<String, dynamic> json) {
  return _$_Geolocation(
    longitude: Geolocation.parseDouble(json['longitude']),
    latitude: Geolocation.parseDouble(json['latitude']),
  );
}

Map<String, dynamic> _$_$_GeolocationToJson(_$_Geolocation instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };

_$_UserFaktory _$_$_UserFaktoryFromJson(Map<String, dynamic> json) {
  return _$_UserFaktory(
    id: json['id'] as String,
    name: json['name'] as String,
    designation: json['designation'] as String?,
    totalPointsEarned: json['totalPointsEarned'] ?? 0,
    totalPointsReceived: json['totalPointsReceived'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_UserFaktoryToJson(_$_UserFaktory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'designation': instance.designation,
      'totalPointsEarned': instance.totalPointsEarned,
      'totalPointsReceived': instance.totalPointsReceived,
    };

_$_PointField _$_$_PointFieldFromJson(Map<String, dynamic> json) {
  return _$_PointField(
    field: json['field'] as String,
    label: json['label'] as String,
    icon: json['icon'] as int? ?? 61668,
    children: (json['children'] as List<dynamic>)
        .map((e) => PointFieldChild.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_PointFieldToJson(_$_PointField instance) =>
    <String, dynamic>{
      'field': instance.field,
      'label': instance.label,
      'icon': instance.icon,
      'children': instance.children,
    };

_$_PointFieldChild _$_$_PointFieldChildFromJson(Map<String, dynamic> json) {
  return _$_PointFieldChild(
    field: json['field'] as String,
    label: json['label'] as String,
    point: json['point'] as int,
  );
}

Map<String, dynamic> _$_$_PointFieldChildToJson(_$_PointFieldChild instance) =>
    <String, dynamic>{
      'field': instance.field,
      'label': instance.label,
      'point': instance.point,
    };
