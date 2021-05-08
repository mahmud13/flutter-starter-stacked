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
    faktoryId: json['factoryId'] as String?,
    faktory: json['faktory'] == null
        ? null
        : Faktory.fromJson(json['faktory'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
    'name': instance.name,
    'password': instance.password,
    'phone': instance.phone,
    'designation': instance.designation,
    'imageUrl': instance.imageUrl,
    'factoryId': instance.faktoryId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('faktory', instance.faktory);
  return val;
}

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
