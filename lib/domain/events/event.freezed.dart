// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventTearOff {
  const _$EventTearOff();

  _Event call(
      {required UniqueId id,
      required Name name,
      required Location location,
      required UniqueId eventId,
      required String creatorId}) {
    return _Event(
      id: id,
      name: name,
      location: location,
      eventId: eventId,
      creatorId: creatorId,
    );
  }
}

/// @nodoc
const $Event = _$EventTearOff();

/// @nodoc
mixin _$Event {
  UniqueId get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  UniqueId get eventId => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventCopyWith<Event> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventCopyWith<$Res> {
  factory $EventCopyWith(Event value, $Res Function(Event) then) =
      _$EventCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      Name name,
      Location location,
      UniqueId eventId,
      String creatorId});
}

/// @nodoc
class _$EventCopyWithImpl<$Res> implements $EventCopyWith<$Res> {
  _$EventCopyWithImpl(this._value, this._then);

  final Event _value;
  // ignore: unused_field
  final $Res Function(Event) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? eventId = freezed,
    Object? creatorId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EventCopyWith<$Res> implements $EventCopyWith<$Res> {
  factory _$EventCopyWith(_Event value, $Res Function(_Event) then) =
      __$EventCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      Name name,
      Location location,
      UniqueId eventId,
      String creatorId});
}

/// @nodoc
class __$EventCopyWithImpl<$Res> extends _$EventCopyWithImpl<$Res>
    implements _$EventCopyWith<$Res> {
  __$EventCopyWithImpl(_Event _value, $Res Function(_Event) _then)
      : super(_value, (v) => _then(v as _Event));

  @override
  _Event get _value => super._value as _Event;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? eventId = freezed,
    Object? creatorId = freezed,
  }) {
    return _then(_Event(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Event implements _Event {
  const _$_Event(
      {required this.id,
      required this.name,
      required this.location,
      required this.eventId,
      required this.creatorId});

  @override
  final UniqueId id;
  @override
  final Name name;
  @override
  final Location location;
  @override
  final UniqueId eventId;
  @override
  final String creatorId;

  @override
  String toString() {
    return 'Event(id: $id, name: $name, location: $location, eventId: $eventId, creatorId: $creatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Event &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.creatorId, creatorId) ||
                const DeepCollectionEquality()
                    .equals(other.creatorId, creatorId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(creatorId);

  @JsonKey(ignore: true)
  @override
  _$EventCopyWith<_Event> get copyWith =>
      __$EventCopyWithImpl<_Event>(this, _$identity);
}

abstract class _Event implements Event {
  const factory _Event(
      {required UniqueId id,
      required Name name,
      required Location location,
      required UniqueId eventId,
      required String creatorId}) = _$_Event;

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Location get location => throw _privateConstructorUsedError;
  @override
  UniqueId get eventId => throw _privateConstructorUsedError;
  @override
  String get creatorId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventCopyWith<_Event> get copyWith => throw _privateConstructorUsedError;
}
