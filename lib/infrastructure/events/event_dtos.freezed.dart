// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventDto _$EventDtoFromJson(Map<String, dynamic> json) {
  return _EventDto.fromJson(json);
}

/// @nodoc
class _$EventDtoTearOff {
  const _$EventDtoTearOff();

  _EventDto call(
      {@JsonKey(ignore: true) String? id,
      required String eventId,
      required String creatorId,
      required String name,
      required String location}) {
    return _EventDto(
      id: id,
      eventId: eventId,
      creatorId: creatorId,
      name: name,
      location: location,
    );
  }

  EventDto fromJson(Map<String, Object> json) {
    return EventDto.fromJson(json);
  }
}

/// @nodoc
const $EventDto = _$EventDtoTearOff();

/// @nodoc
mixin _$EventDto {
  @JsonKey(ignore: true)
  String? get id =>
      throw _privateConstructorUsedError; // @JsonKey(ignore: true) String? eventId,
  String get eventId => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventDtoCopyWith<EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventDtoCopyWith<$Res> {
  factory $EventDtoCopyWith(EventDto value, $Res Function(EventDto) then) =
      _$EventDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String eventId,
      String creatorId,
      String name,
      String location});
}

/// @nodoc
class _$EventDtoCopyWithImpl<$Res> implements $EventDtoCopyWith<$Res> {
  _$EventDtoCopyWithImpl(this._value, this._then);

  final EventDto _value;
  // ignore: unused_field
  final $Res Function(EventDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EventDtoCopyWith<$Res> implements $EventDtoCopyWith<$Res> {
  factory _$EventDtoCopyWith(_EventDto value, $Res Function(_EventDto) then) =
      __$EventDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String eventId,
      String creatorId,
      String name,
      String location});
}

/// @nodoc
class __$EventDtoCopyWithImpl<$Res> extends _$EventDtoCopyWithImpl<$Res>
    implements _$EventDtoCopyWith<$Res> {
  __$EventDtoCopyWithImpl(_EventDto _value, $Res Function(_EventDto) _then)
      : super(_value, (v) => _then(v as _EventDto));

  @override
  _EventDto get _value => super._value as _EventDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? eventId = freezed,
    Object? creatorId = freezed,
    Object? name = freezed,
    Object? location = freezed,
  }) {
    return _then(_EventDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      eventId: eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      creatorId: creatorId == freezed
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventDto implements _EventDto {
  _$_EventDto(
      {@JsonKey(ignore: true) this.id,
      required this.eventId,
      required this.creatorId,
      required this.name,
      required this.location});

  factory _$_EventDto.fromJson(Map<String, dynamic> json) =>
      _$_$_EventDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override // @JsonKey(ignore: true) String? eventId,
  final String eventId;
  @override
  final String creatorId;
  @override
  final String name;
  @override
  final String location;

  @override
  String toString() {
    return 'EventDto(id: $id, eventId: $eventId, creatorId: $creatorId, name: $name, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.creatorId, creatorId) ||
                const DeepCollectionEquality()
                    .equals(other.creatorId, creatorId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(creatorId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$EventDtoCopyWith<_EventDto> get copyWith =>
      __$EventDtoCopyWithImpl<_EventDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_EventDtoToJson(this);
  }
}

abstract class _EventDto implements EventDto {
  factory _EventDto(
      {@JsonKey(ignore: true) String? id,
      required String eventId,
      required String creatorId,
      required String name,
      required String location}) = _$_EventDto;

  factory _EventDto.fromJson(Map<String, dynamic> json) = _$_EventDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  @override // @JsonKey(ignore: true) String? eventId,
  String get eventId => throw _privateConstructorUsedError;
  @override
  String get creatorId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get location => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EventDtoCopyWith<_EventDto> get copyWith =>
      throw _privateConstructorUsedError;
}
