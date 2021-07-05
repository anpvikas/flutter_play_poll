// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyUserTearOff {
  const _$MyUserTearOff();

  _MyUser call(
      {required UniqueId id,
      required StringSingleLine name,
      required EmailAddress emailAddress}) {
    return _MyUser(
      id: id,
      name: name,
      emailAddress: emailAddress,
    );
  }
}

/// @nodoc
const $MyUser = _$MyUserTearOff();

/// @nodoc
mixin _$MyUser {
  UniqueId get id => throw _privateConstructorUsedError;
  StringSingleLine get name => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyUserCopyWith<MyUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyUserCopyWith<$Res> {
  factory $MyUserCopyWith(MyUser value, $Res Function(MyUser) then) =
      _$MyUserCopyWithImpl<$Res>;
  $Res call({UniqueId id, StringSingleLine name, EmailAddress emailAddress});
}

/// @nodoc
class _$MyUserCopyWithImpl<$Res> implements $MyUserCopyWith<$Res> {
  _$MyUserCopyWithImpl(this._value, this._then);

  final MyUser _value;
  // ignore: unused_field
  final $Res Function(MyUser) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc
abstract class _$MyUserCopyWith<$Res> implements $MyUserCopyWith<$Res> {
  factory _$MyUserCopyWith(_MyUser value, $Res Function(_MyUser) then) =
      __$MyUserCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, StringSingleLine name, EmailAddress emailAddress});
}

/// @nodoc
class __$MyUserCopyWithImpl<$Res> extends _$MyUserCopyWithImpl<$Res>
    implements _$MyUserCopyWith<$Res> {
  __$MyUserCopyWithImpl(_MyUser _value, $Res Function(_MyUser) _then)
      : super(_value, (v) => _then(v as _MyUser));

  @override
  _MyUser get _value => super._value as _MyUser;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? emailAddress = freezed,
  }) {
    return _then(_MyUser(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringSingleLine,
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
    ));
  }
}

/// @nodoc

class _$_MyUser implements _MyUser {
  const _$_MyUser(
      {required this.id, required this.name, required this.emailAddress});

  @override
  final UniqueId id;
  @override
  final StringSingleLine name;
  @override
  final EmailAddress emailAddress;

  @override
  String toString() {
    return 'MyUser(id: $id, name: $name, emailAddress: $emailAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyUser &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(emailAddress);

  @JsonKey(ignore: true)
  @override
  _$MyUserCopyWith<_MyUser> get copyWith =>
      __$MyUserCopyWithImpl<_MyUser>(this, _$identity);
}

abstract class _MyUser implements MyUser {
  const factory _MyUser(
      {required UniqueId id,
      required StringSingleLine name,
      required EmailAddress emailAddress}) = _$_MyUser;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  StringSingleLine get name => throw _privateConstructorUsedError;
  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyUserCopyWith<_MyUser> get copyWith => throw _privateConstructorUsedError;
}
