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
    factoryId: json['factoryId'] as String?,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'password': instance.password,
      'phone': instance.phone,
      'designation': instance.designation,
      'factoryId': instance.factoryId,
    };

_$_Factory _$_$_FactoryFromJson(Map<String, dynamic> json) {
  return _$_Factory(
    id: json['_id'] as String,
    name: json['factory_name'] as String,
    address: json['address_display'] as String?,
    geolocation: json['geolocation'] == null
        ? null
        : Geolocation.fromJson(json['geolocation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_FactoryToJson(_$_Factory instance) =>
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
