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
      String? imageUrl,
      @JsonKey(name: 'factoryId') String? faktoryId,
      @JsonKey(includeIfNull: false) Faktory? faktory}) {
    return _User(
      id: id,
      email: email,
      name: name,
      password: password,
      phone: phone,
      designation: designation,
      imageUrl: imageUrl,
      faktoryId: faktoryId,
      faktory: faktory,
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
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'factoryId')
  String? get faktoryId => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  Faktory? get faktory => throw _privateConstructorUsedError;

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
      String? imageUrl,
      @JsonKey(name: 'factoryId') String? faktoryId,
      @JsonKey(includeIfNull: false) Faktory? faktory});

  $FaktoryCopyWith<$Res>? get faktory;
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
    Object? imageUrl = freezed,
    Object? faktoryId = freezed,
    Object? faktory = freezed,
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
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      faktoryId: faktoryId == freezed
          ? _value.faktoryId
          : faktoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      faktory: faktory == freezed
          ? _value.faktory
          : faktory // ignore: cast_nullable_to_non_nullable
              as Faktory?,
    ));
  }

  @override
  $FaktoryCopyWith<$Res>? get faktory {
    if (_value.faktory == null) {
      return null;
    }

    return $FaktoryCopyWith<$Res>(_value.faktory!, (value) {
      return _then(_value.copyWith(faktory: value));
    });
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
      String? imageUrl,
      @JsonKey(name: 'factoryId') String? faktoryId,
      @JsonKey(includeIfNull: false) Faktory? faktory});

  @override
  $FaktoryCopyWith<$Res>? get faktory;
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
    Object? imageUrl = freezed,
    Object? faktoryId = freezed,
    Object? faktory = freezed,
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
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      faktoryId: faktoryId == freezed
          ? _value.faktoryId
          : faktoryId // ignore: cast_nullable_to_non_nullable
              as String?,
      faktory: faktory == freezed
          ? _value.faktory
          : faktory // ignore: cast_nullable_to_non_nullable
              as Faktory?,
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
      this.imageUrl,
      @JsonKey(name: 'factoryId') this.faktoryId,
      @JsonKey(includeIfNull: false) this.faktory})
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
  final String? imageUrl;
  @override
  @JsonKey(name: 'factoryId')
  final String? faktoryId;
  @override
  @JsonKey(includeIfNull: false)
  final Faktory? faktory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'User(id: $id, email: $email, name: $name, password: $password, phone: $phone, designation: $designation, imageUrl: $imageUrl, faktoryId: $faktoryId, faktory: $faktory)';
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
      ..add(DiagnosticsProperty('imageUrl', imageUrl))
      ..add(DiagnosticsProperty('faktoryId', faktoryId))
      ..add(DiagnosticsProperty('faktory', faktory));
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
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
            (identical(other.faktoryId, faktoryId) ||
                const DeepCollectionEquality()
                    .equals(other.faktoryId, faktoryId)) &&
            (identical(other.faktory, faktory) ||
                const DeepCollectionEquality().equals(other.faktory, faktory)));
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
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(faktoryId) ^
      const DeepCollectionEquality().hash(faktory);

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
      String? imageUrl,
      @JsonKey(name: 'factoryId') String? faktoryId,
      @JsonKey(includeIfNull: false) Faktory? faktory}) = _$_User;
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
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'factoryId')
  String? get faktoryId => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  Faktory? get faktory => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

Faktory _$FaktoryFromJson(Map<String, dynamic> json) {
  return _Faktory.fromJson(json);
}

/// @nodoc
class _$FaktoryTearOff {
  const _$FaktoryTearOff();

  _Faktory call(
      {@JsonKey(name: '_id') required String id,
      @JsonKey(name: 'factory_name') required String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation}) {
    return _Faktory(
      id: id,
      name: name,
      address: address,
      geolocation: geolocation,
    );
  }

  Faktory fromJson(Map<String, Object> json) {
    return Faktory.fromJson(json);
  }
}

/// @nodoc
const $Faktory = _$FaktoryTearOff();

/// @nodoc
mixin _$Faktory {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'factory_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_display')
  String? get address => throw _privateConstructorUsedError;
  Geolocation? get geolocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaktoryCopyWith<Faktory> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaktoryCopyWith<$Res> {
  factory $FaktoryCopyWith(Faktory value, $Res Function(Faktory) then) =
      _$FaktoryCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      @JsonKey(name: 'factory_name') String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation});

  $GeolocationCopyWith<$Res>? get geolocation;
}

/// @nodoc
class _$FaktoryCopyWithImpl<$Res> implements $FaktoryCopyWith<$Res> {
  _$FaktoryCopyWithImpl(this._value, this._then);

  final Faktory _value;
  // ignore: unused_field
  final $Res Function(Faktory) _then;

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
abstract class _$FaktoryCopyWith<$Res> implements $FaktoryCopyWith<$Res> {
  factory _$FaktoryCopyWith(_Faktory value, $Res Function(_Faktory) then) =
      __$FaktoryCopyWithImpl<$Res>;
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
class __$FaktoryCopyWithImpl<$Res> extends _$FaktoryCopyWithImpl<$Res>
    implements _$FaktoryCopyWith<$Res> {
  __$FaktoryCopyWithImpl(_Faktory _value, $Res Function(_Faktory) _then)
      : super(_value, (v) => _then(v as _Faktory));

  @override
  _Faktory get _value => super._value as _Faktory;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? geolocation = freezed,
  }) {
    return _then(_Faktory(
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
class _$_Faktory extends _Faktory with DiagnosticableTreeMixin {
  _$_Faktory(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'factory_name') required this.name,
      @JsonKey(name: 'address_display') this.address,
      this.geolocation})
      : super._();

  factory _$_Faktory.fromJson(Map<String, dynamic> json) =>
      _$_$_FaktoryFromJson(json);

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
    return 'Faktory(id: $id, name: $name, address: $address, geolocation: $geolocation)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Faktory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('geolocation', geolocation));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Faktory &&
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
  _$FaktoryCopyWith<_Faktory> get copyWith =>
      __$FaktoryCopyWithImpl<_Faktory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FaktoryToJson(this);
  }
}

abstract class _Faktory extends Faktory {
  factory _Faktory(
      {@JsonKey(name: '_id') required String id,
      @JsonKey(name: 'factory_name') required String name,
      @JsonKey(name: 'address_display') String? address,
      Geolocation? geolocation}) = _$_Faktory;
  _Faktory._() : super._();

  factory _Faktory.fromJson(Map<String, dynamic> json) = _$_Faktory.fromJson;

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
  _$FaktoryCopyWith<_Faktory> get copyWith =>
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

PointField _$PointFieldFromJson(Map<String, dynamic> json) {
  return _PointField.fromJson(json);
}

/// @nodoc
class _$PointFieldTearOff {
  const _$PointFieldTearOff();

  _PointField call(
      {required String field,
      required String label,
      int icon = 61668,
      required List<PointFieldChild> children}) {
    return _PointField(
      field: field,
      label: label,
      icon: icon,
      children: children,
    );
  }

  PointField fromJson(Map<String, Object> json) {
    return PointField.fromJson(json);
  }
}

/// @nodoc
const $PointField = _$PointFieldTearOff();

/// @nodoc
mixin _$PointField {
  String get field => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;
  List<PointFieldChild> get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointFieldCopyWith<PointField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointFieldCopyWith<$Res> {
  factory $PointFieldCopyWith(
          PointField value, $Res Function(PointField) then) =
      _$PointFieldCopyWithImpl<$Res>;
  $Res call(
      {String field, String label, int icon, List<PointFieldChild> children});
}

/// @nodoc
class _$PointFieldCopyWithImpl<$Res> implements $PointFieldCopyWith<$Res> {
  _$PointFieldCopyWithImpl(this._value, this._then);

  final PointField _value;
  // ignore: unused_field
  final $Res Function(PointField) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? label = freezed,
    Object? icon = freezed,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<PointFieldChild>,
    ));
  }
}

/// @nodoc
abstract class _$PointFieldCopyWith<$Res> implements $PointFieldCopyWith<$Res> {
  factory _$PointFieldCopyWith(
          _PointField value, $Res Function(_PointField) then) =
      __$PointFieldCopyWithImpl<$Res>;
  @override
  $Res call(
      {String field, String label, int icon, List<PointFieldChild> children});
}

/// @nodoc
class __$PointFieldCopyWithImpl<$Res> extends _$PointFieldCopyWithImpl<$Res>
    implements _$PointFieldCopyWith<$Res> {
  __$PointFieldCopyWithImpl(
      _PointField _value, $Res Function(_PointField) _then)
      : super(_value, (v) => _then(v as _PointField));

  @override
  _PointField get _value => super._value as _PointField;

  @override
  $Res call({
    Object? field = freezed,
    Object? label = freezed,
    Object? icon = freezed,
    Object? children = freezed,
  }) {
    return _then(_PointField(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
      children: children == freezed
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<PointFieldChild>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointField extends _PointField with DiagnosticableTreeMixin {
  _$_PointField(
      {required this.field,
      required this.label,
      this.icon = 61668,
      required this.children})
      : super._();

  factory _$_PointField.fromJson(Map<String, dynamic> json) =>
      _$_$_PointFieldFromJson(json);

  @override
  final String field;
  @override
  final String label;
  @JsonKey(defaultValue: 61668)
  @override
  final int icon;
  @override
  final List<PointFieldChild> children;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PointField(field: $field, label: $label, icon: $icon, children: $children)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PointField'))
      ..add(DiagnosticsProperty('field', field))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('children', children));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointField &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.children, children) ||
                const DeepCollectionEquality()
                    .equals(other.children, children)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(children);

  @JsonKey(ignore: true)
  @override
  _$PointFieldCopyWith<_PointField> get copyWith =>
      __$PointFieldCopyWithImpl<_PointField>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PointFieldToJson(this);
  }
}

abstract class _PointField extends PointField {
  factory _PointField(
      {required String field,
      required String label,
      int icon,
      required List<PointFieldChild> children}) = _$_PointField;
  _PointField._() : super._();

  factory _PointField.fromJson(Map<String, dynamic> json) =
      _$_PointField.fromJson;

  @override
  String get field => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  int get icon => throw _privateConstructorUsedError;
  @override
  List<PointFieldChild> get children => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointFieldCopyWith<_PointField> get copyWith =>
      throw _privateConstructorUsedError;
}

PointFieldChild _$PointFieldChildFromJson(Map<String, dynamic> json) {
  return _PointFieldChild.fromJson(json);
}

/// @nodoc
class _$PointFieldChildTearOff {
  const _$PointFieldChildTearOff();

  _PointFieldChild call(
      {required String field, required String label, required double point}) {
    return _PointFieldChild(
      field: field,
      label: label,
      point: point,
    );
  }

  PointFieldChild fromJson(Map<String, Object> json) {
    return PointFieldChild.fromJson(json);
  }
}

/// @nodoc
const $PointFieldChild = _$PointFieldChildTearOff();

/// @nodoc
mixin _$PointFieldChild {
  String get field => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  double get point => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PointFieldChildCopyWith<PointFieldChild> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PointFieldChildCopyWith<$Res> {
  factory $PointFieldChildCopyWith(
          PointFieldChild value, $Res Function(PointFieldChild) then) =
      _$PointFieldChildCopyWithImpl<$Res>;
  $Res call({String field, String label, double point});
}

/// @nodoc
class _$PointFieldChildCopyWithImpl<$Res>
    implements $PointFieldChildCopyWith<$Res> {
  _$PointFieldChildCopyWithImpl(this._value, this._then);

  final PointFieldChild _value;
  // ignore: unused_field
  final $Res Function(PointFieldChild) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? label = freezed,
    Object? point = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$PointFieldChildCopyWith<$Res>
    implements $PointFieldChildCopyWith<$Res> {
  factory _$PointFieldChildCopyWith(
          _PointFieldChild value, $Res Function(_PointFieldChild) then) =
      __$PointFieldChildCopyWithImpl<$Res>;
  @override
  $Res call({String field, String label, double point});
}

/// @nodoc
class __$PointFieldChildCopyWithImpl<$Res>
    extends _$PointFieldChildCopyWithImpl<$Res>
    implements _$PointFieldChildCopyWith<$Res> {
  __$PointFieldChildCopyWithImpl(
      _PointFieldChild _value, $Res Function(_PointFieldChild) _then)
      : super(_value, (v) => _then(v as _PointFieldChild));

  @override
  _PointFieldChild get _value => super._value as _PointFieldChild;

  @override
  $Res call({
    Object? field = freezed,
    Object? label = freezed,
    Object? point = freezed,
  }) {
    return _then(_PointFieldChild(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PointFieldChild extends _PointFieldChild with DiagnosticableTreeMixin {
  _$_PointFieldChild(
      {required this.field, required this.label, required this.point})
      : super._();

  factory _$_PointFieldChild.fromJson(Map<String, dynamic> json) =>
      _$_$_PointFieldChildFromJson(json);

  @override
  final String field;
  @override
  final String label;
  @override
  final double point;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PointFieldChild(field: $field, label: $label, point: $point)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PointFieldChild'))
      ..add(DiagnosticsProperty('field', field))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('point', point));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PointFieldChild &&
            (identical(other.field, field) ||
                const DeepCollectionEquality().equals(other.field, field)) &&
            (identical(other.label, label) ||
                const DeepCollectionEquality().equals(other.label, label)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(field) ^
      const DeepCollectionEquality().hash(label) ^
      const DeepCollectionEquality().hash(point);

  @JsonKey(ignore: true)
  @override
  _$PointFieldChildCopyWith<_PointFieldChild> get copyWith =>
      __$PointFieldChildCopyWithImpl<_PointFieldChild>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PointFieldChildToJson(this);
  }
}

abstract class _PointFieldChild extends PointFieldChild {
  factory _PointFieldChild(
      {required String field,
      required String label,
      required double point}) = _$_PointFieldChild;
  _PointFieldChild._() : super._();

  factory _PointFieldChild.fromJson(Map<String, dynamic> json) =
      _$_PointFieldChild.fromJson;

  @override
  String get field => throw _privateConstructorUsedError;
  @override
  String get label => throw _privateConstructorUsedError;
  @override
  double get point => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PointFieldChildCopyWith<_PointFieldChild> get copyWith =>
      throw _privateConstructorUsedError;
}
