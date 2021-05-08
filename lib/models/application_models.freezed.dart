// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'application_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {String? id,
      String? email,
      String? name,
      String? password,
      String? phone,
      String? designation,
      String? factoryId}) {
    return _User(
      id: id,
      email: email,
      name: name,
      password: password,
      phone: phone,
      designation: designation,
      factoryId: factoryId,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get designation => throw _privateConstructorUsedError;
  String? get factoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? email,
      String? name,
      String? password,
      String? phone,
      String? designation,
      String? factoryId});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? designation = freezed,
    Object? factoryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      factoryId: factoryId == freezed
          ? _value.factoryId
          : factoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? email,
      String? name,
      String? password,
      String? phone,
      String? designation,
      String? factoryId});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? name = freezed,
    Object? password = freezed,
    Object? phone = freezed,
    Object? designation = freezed,
    Object? factoryId = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: designation == freezed
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String?,
      factoryId: factoryId == freezed
          ? _value.factoryId
          : factoryId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User with DiagnosticableTreeMixin {
  _$_User(
      {this.id,
      this.email,
      this.name,
      this.password,
      this.phone,
      this.designation,
      this.factoryId})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) =>
      _$_$_UserFromJson(json);

  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? name;
  @override
  final String? password;
  @override
  final String? phone;
  @override
  final String? designation;
  @override
  final String? factoryId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, email: $email, name: $name, password: $password, phone: $phone, designation: $designation, factoryId: $factoryId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'User'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('designation', designation))
      ..add(DiagnosticsProperty('factoryId', factoryId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _User &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.designation, designation) ||
                const DeepCollectionEquality()
                    .equals(other.designation, designation)) &&
            (identical(other.factoryId, factoryId) ||
                const DeepCollectionEquality()
                    .equals(other.factoryId, factoryId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(designation) ^
      const DeepCollectionEquality().hash(factoryId);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {String? id,
      String? email,
      String? name,
      String? password,
      String? phone,
      String? designation,
      String? factoryId}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get password => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get designation => throw _privateConstructorUsedError;
  @override
  String? get factoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Factory _$FactoryFromJson(Map<String, dynamic> json) {
  return _Factory.fromJson(json);
}

/// @nodoc
class _$FactoryTearOff {
  const _$FactoryTearOff();

  _Factory call(
      {@JsonKey(name: '_id') required String id,
      @JsonKey(name: 'factory_name') required String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation}) {
    return _Factory(
      id: id,
      name: name,
      address: address,
      geolocation: geolocation,
    );
  }

  Factory fromJson(Map<String, Object> json) {
    return Factory.fromJson(json);
  }
}

/// @nodoc
const $Factory = _$FactoryTearOff();

/// @nodoc
mixin _$Factory {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'factory_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_display')
  String? get address => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FactoryCopyWith<Factory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactoryCopyWith<$Res> {
  factory $FactoryCopyWith(Factory value, $Res Function(Factory) then) =
      _$FactoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'factory_name') String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation});

  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$FactoryCopyWithImpl<$Res> implements $FactoryCopyWith<$Res> {
  _$FactoryCopyWithImpl(this._value, this._then);

  final Factory _value;
  // ignore: unused_field
  final $Res Function(Factory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
    ));
  }

  @override
  $GeolocationCopyWith<$Res>? get geolocation {
    if (_value.geolocation == null) {
      return null;
    }

    return $GeolocationCopyWith<$Res>(_value.geolocation!, (value) {
      return _then(_value.copyWith(geolocation: value));
    });
  }
}

/// @nodoc
abstract class _$FactoryCopyWith<$Res> implements $FactoryCopyWith<$Res> {
  factory _$FactoryCopyWith(_Factory value, $Res Function(_Factory) then) =
      __$FactoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'factory_name') String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation});

  @override
  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class __$FactoryCopyWithImpl<$Res> extends _$FactoryCopyWithImpl<$Res>
    implements _$FactoryCopyWith<$Res> {
  __$FactoryCopyWithImpl(_Factory _value, $Res Function(_Factory) _then)
      : super(_value, (v) => _then(v as _Factory));

  @override
  _Factory get _value => super._value as _Factory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
  }) {
    return _then(_Factory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      geolocation: geolocation == freezed
          ? _value.geolocation
          : geolocation // ignore: cast_nullable_to_non_nullable
              as Geolocation?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Factory extends _Factory with DiagnosticableTreeMixin {
  _$_Factory(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'factory_name') required this.name,
      @JsonKey(name: 'address_display') this.address,
      this.geolocation})
      : super._();

  factory _$_Factory.fromJson(Map<String, dynamic> json) =>
      _$_$_FactoryFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  @JsonKey(name: 'factory_name')
  final String name;
  @override
  @JsonKey(name: 'address_display')
  final String? address;
  @override
  final Geolocation? geolocation;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Factory(id: $id, name: $name, address: $address, geolocation: $geolocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Factory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('geolocation', geolocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Factory &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.geolocation, geolocation) ||
                const DeepCollectionEquality()
                    .equals(other.geolocation, geolocation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(geolocation);

  @JsonKey(ignore: true)
  @override
  _$FactoryCopyWith<_Factory> get copyWith =>
      __$FactoryCopyWithImpl<_Factory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FactoryToJson(this);
  }
}

abstract class _Factory extends Factory {
  factory _Factory(
      {@JsonKey(name: '_id') required String id,
      @JsonKey(name: 'factory_name') required String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation}) = _$_Factory;
  _Factory._() : super._();

  factory _Factory.fromJson(Map<String, dynamic> json) = _$_Factory.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'factory_name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'address_display')
  String? get address => throw _privateConstructorUsedError;
  @override
  Geolocation? get geolocation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FactoryCopyWith<_Factory> get copyWith =>
      throw _privateConstructorUsedError;
}

Geolocation _$GeolocationFromJson(Map<String, dynamic> json) {
  return _Geolocation.fromJson(json);
}

/// @nodoc
class _$GeolocationTearOff {
  const _$GeolocationTearOff();

  _Geolocation call(
      {@JsonKey(fromJson: Geolocation.parseDouble) required double longitude,
      @JsonKey(fromJson: Geolocation.parseDouble) required double latitude}) {
    return _Geolocation(
      longitude: longitude,
      latitude: latitude,
    );
  }

  Geolocation fromJson(Map<String, Object> json) {
    return Geolocation.fromJson(json);
  }
}

/// @nodoc
const $Geolocation = _$GeolocationTearOff();

/// @nodoc
mixin _$Geolocation {
  @JsonKey(fromJson: Geolocation.parseDouble)
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Geolocation.parseDouble)
  double get latitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeolocationCopyWith<Geolocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeolocationCopyWith<$Res> {
  factory $GeolocationCopyWith(
          Geolocation value, $Res Function(Geolocation) then) =
      _$GeolocationCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(fromJson: Geolocation.parseDouble) double longitude,
      @JsonKey(fromJson: Geolocation.parseDouble) double latitude});
}

/// @nodoc
class _$GeolocationCopyWithImpl<$Res> implements $GeolocationCopyWith<$Res> {
  _$GeolocationCopyWithImpl(this._value, this._then);

  final Geolocation _value;
  // ignore: unused_field
  final $Res Function(Geolocation) _then;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_value.copyWith(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$GeolocationCopyWith<$Res>
    implements $GeolocationCopyWith<$Res> {
  factory _$GeolocationCopyWith(
          _Geolocation value, $Res Function(_Geolocation) then) =
      __$GeolocationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(fromJson: Geolocation.parseDouble) double longitude,
      @JsonKey(fromJson: Geolocation.parseDouble) double latitude});
}

/// @nodoc
class __$GeolocationCopyWithImpl<$Res> extends _$GeolocationCopyWithImpl<$Res>
    implements _$GeolocationCopyWith<$Res> {
  __$GeolocationCopyWithImpl(
      _Geolocation _value, $Res Function(_Geolocation) _then)
      : super(_value, (v) => _then(v as _Geolocation));

  @override
  _Geolocation get _value => super._value as _Geolocation;

  @override
  $Res call({
    Object? longitude = freezed,
    Object? latitude = freezed,
  }) {
    return _then(_Geolocation(
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Geolocation extends _Geolocation with DiagnosticableTreeMixin {
  _$_Geolocation(
      {@JsonKey(fromJson: Geolocation.parseDouble) required this.longitude,
      @JsonKey(fromJson: Geolocation.parseDouble) required this.latitude})
      : super._();

  factory _$_Geolocation.fromJson(Map<String, dynamic> json) =>
      _$_$_GeolocationFromJson(json);

  @override
  @JsonKey(fromJson: Geolocation.parseDouble)
  final double longitude;
  @override
  @JsonKey(fromJson: Geolocation.parseDouble)
  final double latitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Geolocation(longitude: $longitude, latitude: $latitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Geolocation'))
      ..add(DiagnosticsProperty('longitude', longitude))
      ..add(DiagnosticsProperty('latitude', latitude));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Geolocation &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude);

  @JsonKey(ignore: true)
  @override
  _$GeolocationCopyWith<_Geolocation> get copyWith =>
      __$GeolocationCopyWithImpl<_Geolocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GeolocationToJson(this);
  }
}

abstract class _Geolocation extends Geolocation {
  factory _Geolocation(
      {@JsonKey(fromJson: Geolocation.parseDouble)
          required double longitude,
      @JsonKey(fromJson: Geolocation.parseDouble)
          required double latitude}) = _$_Geolocation;
  _Geolocation._() : super._();

  factory _Geolocation.fromJson(Map<String, dynamic> json) =
      _$_Geolocation.fromJson;

  @override
  @JsonKey(fromJson: Geolocation.parseDouble)
  double get longitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: Geolocation.parseDouble)
  double get latitude => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GeolocationCopyWith<_Geolocation> get copyWith =>
      throw _privateConstructorUsedError;
}
