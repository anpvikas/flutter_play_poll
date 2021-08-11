// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EventEventTearOff {
  const _$EventEventTearOff();

  _Started started(dynamic data) {
    return _Started(
      data,
    );
  }

  _DisplaySongs displaySongs(dynamic data) {
    return _DisplaySongs(
      data,
    );
  }

  _IncrementVoteCount incrementVoteCount(String songId, String uid) {
    return _IncrementVoteCount(
      songId,
      uid,
    );
  }

  _GetSignedInUserEvent getSignedInUserEvent() {
    return const _GetSignedInUserEvent();
  }
}

/// @nodoc
const $EventEvent = _$EventEventTearOff();

/// @nodoc
mixin _$EventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DisplaySongs value) displaySongs,
    required TResult Function(_IncrementVoteCount value) incrementVoteCount,
    required TResult Function(_GetSignedInUserEvent value) getSignedInUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEventCopyWith<$Res> {
  factory $EventEventCopyWith(
          EventEvent value, $Res Function(EventEvent) then) =
      _$EventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventEventCopyWithImpl<$Res> implements $EventEventCopyWith<$Res> {
  _$EventEventCopyWithImpl(this._value, this._then);

  final EventEvent _value;
  // ignore: unused_field
  final $Res Function(EventEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$EventEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Started(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'EventEvent.started(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
  }) {
    return started(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DisplaySongs value) displaySongs,
    required TResult Function(_IncrementVoteCount value) incrementVoteCount,
    required TResult Function(_GetSignedInUserEvent value) getSignedInUserEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EventEvent {
  const factory _Started(dynamic data) = _$_Started;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DisplaySongsCopyWith<$Res> {
  factory _$DisplaySongsCopyWith(
          _DisplaySongs value, $Res Function(_DisplaySongs) then) =
      __$DisplaySongsCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$DisplaySongsCopyWithImpl<$Res> extends _$EventEventCopyWithImpl<$Res>
    implements _$DisplaySongsCopyWith<$Res> {
  __$DisplaySongsCopyWithImpl(
      _DisplaySongs _value, $Res Function(_DisplaySongs) _then)
      : super(_value, (v) => _then(v as _DisplaySongs));

  @override
  _DisplaySongs get _value => super._value as _DisplaySongs;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_DisplaySongs(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_DisplaySongs implements _DisplaySongs {
  const _$_DisplaySongs(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'EventEvent.displaySongs(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DisplaySongs &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$DisplaySongsCopyWith<_DisplaySongs> get copyWith =>
      __$DisplaySongsCopyWithImpl<_DisplaySongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
  }) {
    return displaySongs(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (displaySongs != null) {
      return displaySongs(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DisplaySongs value) displaySongs,
    required TResult Function(_IncrementVoteCount value) incrementVoteCount,
    required TResult Function(_GetSignedInUserEvent value) getSignedInUserEvent,
  }) {
    return displaySongs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (displaySongs != null) {
      return displaySongs(this);
    }
    return orElse();
  }
}

abstract class _DisplaySongs implements EventEvent {
  const factory _DisplaySongs(dynamic data) = _$_DisplaySongs;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DisplaySongsCopyWith<_DisplaySongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IncrementVoteCountCopyWith<$Res> {
  factory _$IncrementVoteCountCopyWith(
          _IncrementVoteCount value, $Res Function(_IncrementVoteCount) then) =
      __$IncrementVoteCountCopyWithImpl<$Res>;
  $Res call({String songId, String uid});
}

/// @nodoc
class __$IncrementVoteCountCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$IncrementVoteCountCopyWith<$Res> {
  __$IncrementVoteCountCopyWithImpl(
      _IncrementVoteCount _value, $Res Function(_IncrementVoteCount) _then)
      : super(_value, (v) => _then(v as _IncrementVoteCount));

  @override
  _IncrementVoteCount get _value => super._value as _IncrementVoteCount;

  @override
  $Res call({
    Object? songId = freezed,
    Object? uid = freezed,
  }) {
    return _then(_IncrementVoteCount(
      songId == freezed
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IncrementVoteCount implements _IncrementVoteCount {
  const _$_IncrementVoteCount(this.songId, this.uid);

  @override
  final String songId;
  @override
  final String uid;

  @override
  String toString() {
    return 'EventEvent.incrementVoteCount(songId: $songId, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncrementVoteCount &&
            (identical(other.songId, songId) ||
                const DeepCollectionEquality().equals(other.songId, songId)) &&
            (identical(other.uid, uid) ||
                const DeepCollectionEquality().equals(other.uid, uid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(songId) ^
      const DeepCollectionEquality().hash(uid);

  @JsonKey(ignore: true)
  @override
  _$IncrementVoteCountCopyWith<_IncrementVoteCount> get copyWith =>
      __$IncrementVoteCountCopyWithImpl<_IncrementVoteCount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
  }) {
    return incrementVoteCount(songId, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (incrementVoteCount != null) {
      return incrementVoteCount(songId, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DisplaySongs value) displaySongs,
    required TResult Function(_IncrementVoteCount value) incrementVoteCount,
    required TResult Function(_GetSignedInUserEvent value) getSignedInUserEvent,
  }) {
    return incrementVoteCount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (incrementVoteCount != null) {
      return incrementVoteCount(this);
    }
    return orElse();
  }
}

abstract class _IncrementVoteCount implements EventEvent {
  const factory _IncrementVoteCount(String songId, String uid) =
      _$_IncrementVoteCount;

  String get songId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IncrementVoteCountCopyWith<_IncrementVoteCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSignedInUserEventCopyWith<$Res> {
  factory _$GetSignedInUserEventCopyWith(_GetSignedInUserEvent value,
          $Res Function(_GetSignedInUserEvent) then) =
      __$GetSignedInUserEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetSignedInUserEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$GetSignedInUserEventCopyWith<$Res> {
  __$GetSignedInUserEventCopyWithImpl(
      _GetSignedInUserEvent _value, $Res Function(_GetSignedInUserEvent) _then)
      : super(_value, (v) => _then(v as _GetSignedInUserEvent));

  @override
  _GetSignedInUserEvent get _value => super._value as _GetSignedInUserEvent;
}

/// @nodoc

class _$_GetSignedInUserEvent implements _GetSignedInUserEvent {
  const _$_GetSignedInUserEvent();

  @override
  String toString() {
    return 'EventEvent.getSignedInUserEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetSignedInUserEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
  }) {
    return getSignedInUserEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (getSignedInUserEvent != null) {
      return getSignedInUserEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DisplaySongs value) displaySongs,
    required TResult Function(_IncrementVoteCount value) incrementVoteCount,
    required TResult Function(_GetSignedInUserEvent value) getSignedInUserEvent,
  }) {
    return getSignedInUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    required TResult orElse(),
  }) {
    if (getSignedInUserEvent != null) {
      return getSignedInUserEvent(this);
    }
    return orElse();
  }
}

abstract class _GetSignedInUserEvent implements EventEvent {
  const factory _GetSignedInUserEvent() = _$_GetSignedInUserEvent;
}

/// @nodoc
class _$EventStateTearOff {
  const _$EventStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowFetchedSongs showFetchedSongs(dynamic showFetchedSongs) {
    return _ShowFetchedSongs(
      showFetchedSongs,
    );
  }

  _DisplayFetchedSongs displayFetchedSongs(dynamic displayFetchedSongs) {
    return _DisplayFetchedSongs(
      displayFetchedSongs,
    );
  }

  _IncrementedVoteCount incrementedVoteCount(String updatedVoteCount) {
    return _IncrementedVoteCount(
      updatedVoteCount,
    );
  }

  _GetSignedInUserState getSignedInUserState(String userId) {
    return _GetSignedInUserState(
      userId,
    );
  }
}

/// @nodoc
const $EventState = _$EventStateTearOff();

/// @nodoc
mixin _$EventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowFetchedSongs value) showFetchedSongs,
    required TResult Function(_DisplayFetchedSongs value) displayFetchedSongs,
    required TResult Function(_IncrementedVoteCount value) incrementedVoteCount,
    required TResult Function(_GetSignedInUserState value) getSignedInUserState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventStateCopyWith<$Res> {
  factory $EventStateCopyWith(
          EventState value, $Res Function(EventState) then) =
      _$EventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventStateCopyWithImpl<$Res> implements $EventStateCopyWith<$Res> {
  _$EventStateCopyWithImpl(this._value, this._then);

  final EventState _value;
  // ignore: unused_field
  final $Res Function(EventState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EventStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'EventState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowFetchedSongs value) showFetchedSongs,
    required TResult Function(_DisplayFetchedSongs value) displayFetchedSongs,
    required TResult Function(_IncrementedVoteCount value) incrementedVoteCount,
    required TResult Function(_GetSignedInUserState value) getSignedInUserState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements EventState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowFetchedSongsCopyWith<$Res> {
  factory _$ShowFetchedSongsCopyWith(
          _ShowFetchedSongs value, $Res Function(_ShowFetchedSongs) then) =
      __$ShowFetchedSongsCopyWithImpl<$Res>;
  $Res call({dynamic showFetchedSongs});
}

/// @nodoc
class __$ShowFetchedSongsCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$ShowFetchedSongsCopyWith<$Res> {
  __$ShowFetchedSongsCopyWithImpl(
      _ShowFetchedSongs _value, $Res Function(_ShowFetchedSongs) _then)
      : super(_value, (v) => _then(v as _ShowFetchedSongs));

  @override
  _ShowFetchedSongs get _value => super._value as _ShowFetchedSongs;

  @override
  $Res call({
    Object? showFetchedSongs = freezed,
  }) {
    return _then(_ShowFetchedSongs(
      showFetchedSongs == freezed
          ? _value.showFetchedSongs
          : showFetchedSongs // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ShowFetchedSongs implements _ShowFetchedSongs {
  const _$_ShowFetchedSongs(this.showFetchedSongs);

  @override
  final dynamic showFetchedSongs;

  @override
  String toString() {
    return 'EventState.showFetchedSongs(showFetchedSongs: $showFetchedSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowFetchedSongs &&
            (identical(other.showFetchedSongs, showFetchedSongs) ||
                const DeepCollectionEquality()
                    .equals(other.showFetchedSongs, showFetchedSongs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(showFetchedSongs);

  @JsonKey(ignore: true)
  @override
  _$ShowFetchedSongsCopyWith<_ShowFetchedSongs> get copyWith =>
      __$ShowFetchedSongsCopyWithImpl<_ShowFetchedSongs>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
  }) {
    return showFetchedSongs(this.showFetchedSongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (showFetchedSongs != null) {
      return showFetchedSongs(this.showFetchedSongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowFetchedSongs value) showFetchedSongs,
    required TResult Function(_DisplayFetchedSongs value) displayFetchedSongs,
    required TResult Function(_IncrementedVoteCount value) incrementedVoteCount,
    required TResult Function(_GetSignedInUserState value) getSignedInUserState,
  }) {
    return showFetchedSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (showFetchedSongs != null) {
      return showFetchedSongs(this);
    }
    return orElse();
  }
}

abstract class _ShowFetchedSongs implements EventState {
  const factory _ShowFetchedSongs(dynamic showFetchedSongs) =
      _$_ShowFetchedSongs;

  dynamic get showFetchedSongs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowFetchedSongsCopyWith<_ShowFetchedSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DisplayFetchedSongsCopyWith<$Res> {
  factory _$DisplayFetchedSongsCopyWith(_DisplayFetchedSongs value,
          $Res Function(_DisplayFetchedSongs) then) =
      __$DisplayFetchedSongsCopyWithImpl<$Res>;
  $Res call({dynamic displayFetchedSongs});
}

/// @nodoc
class __$DisplayFetchedSongsCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$DisplayFetchedSongsCopyWith<$Res> {
  __$DisplayFetchedSongsCopyWithImpl(
      _DisplayFetchedSongs _value, $Res Function(_DisplayFetchedSongs) _then)
      : super(_value, (v) => _then(v as _DisplayFetchedSongs));

  @override
  _DisplayFetchedSongs get _value => super._value as _DisplayFetchedSongs;

  @override
  $Res call({
    Object? displayFetchedSongs = freezed,
  }) {
    return _then(_DisplayFetchedSongs(
      displayFetchedSongs == freezed
          ? _value.displayFetchedSongs
          : displayFetchedSongs // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_DisplayFetchedSongs implements _DisplayFetchedSongs {
  const _$_DisplayFetchedSongs(this.displayFetchedSongs);

  @override
  final dynamic displayFetchedSongs;

  @override
  String toString() {
    return 'EventState.displayFetchedSongs(displayFetchedSongs: $displayFetchedSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DisplayFetchedSongs &&
            (identical(other.displayFetchedSongs, displayFetchedSongs) ||
                const DeepCollectionEquality()
                    .equals(other.displayFetchedSongs, displayFetchedSongs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(displayFetchedSongs);

  @JsonKey(ignore: true)
  @override
  _$DisplayFetchedSongsCopyWith<_DisplayFetchedSongs> get copyWith =>
      __$DisplayFetchedSongsCopyWithImpl<_DisplayFetchedSongs>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
  }) {
    return displayFetchedSongs(this.displayFetchedSongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (displayFetchedSongs != null) {
      return displayFetchedSongs(this.displayFetchedSongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowFetchedSongs value) showFetchedSongs,
    required TResult Function(_DisplayFetchedSongs value) displayFetchedSongs,
    required TResult Function(_IncrementedVoteCount value) incrementedVoteCount,
    required TResult Function(_GetSignedInUserState value) getSignedInUserState,
  }) {
    return displayFetchedSongs(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (displayFetchedSongs != null) {
      return displayFetchedSongs(this);
    }
    return orElse();
  }
}

abstract class _DisplayFetchedSongs implements EventState {
  const factory _DisplayFetchedSongs(dynamic displayFetchedSongs) =
      _$_DisplayFetchedSongs;

  dynamic get displayFetchedSongs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DisplayFetchedSongsCopyWith<_DisplayFetchedSongs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$IncrementedVoteCountCopyWith<$Res> {
  factory _$IncrementedVoteCountCopyWith(_IncrementedVoteCount value,
          $Res Function(_IncrementedVoteCount) then) =
      __$IncrementedVoteCountCopyWithImpl<$Res>;
  $Res call({String updatedVoteCount});
}

/// @nodoc
class __$IncrementedVoteCountCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$IncrementedVoteCountCopyWith<$Res> {
  __$IncrementedVoteCountCopyWithImpl(
      _IncrementedVoteCount _value, $Res Function(_IncrementedVoteCount) _then)
      : super(_value, (v) => _then(v as _IncrementedVoteCount));

  @override
  _IncrementedVoteCount get _value => super._value as _IncrementedVoteCount;

  @override
  $Res call({
    Object? updatedVoteCount = freezed,
  }) {
    return _then(_IncrementedVoteCount(
      updatedVoteCount == freezed
          ? _value.updatedVoteCount
          : updatedVoteCount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_IncrementedVoteCount implements _IncrementedVoteCount {
  const _$_IncrementedVoteCount(this.updatedVoteCount);

  @override
  final String updatedVoteCount;

  @override
  String toString() {
    return 'EventState.incrementedVoteCount(updatedVoteCount: $updatedVoteCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IncrementedVoteCount &&
            (identical(other.updatedVoteCount, updatedVoteCount) ||
                const DeepCollectionEquality()
                    .equals(other.updatedVoteCount, updatedVoteCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedVoteCount);

  @JsonKey(ignore: true)
  @override
  _$IncrementedVoteCountCopyWith<_IncrementedVoteCount> get copyWith =>
      __$IncrementedVoteCountCopyWithImpl<_IncrementedVoteCount>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
  }) {
    return incrementedVoteCount(updatedVoteCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (incrementedVoteCount != null) {
      return incrementedVoteCount(updatedVoteCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowFetchedSongs value) showFetchedSongs,
    required TResult Function(_DisplayFetchedSongs value) displayFetchedSongs,
    required TResult Function(_IncrementedVoteCount value) incrementedVoteCount,
    required TResult Function(_GetSignedInUserState value) getSignedInUserState,
  }) {
    return incrementedVoteCount(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (incrementedVoteCount != null) {
      return incrementedVoteCount(this);
    }
    return orElse();
  }
}

abstract class _IncrementedVoteCount implements EventState {
  const factory _IncrementedVoteCount(String updatedVoteCount) =
      _$_IncrementedVoteCount;

  String get updatedVoteCount => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$IncrementedVoteCountCopyWith<_IncrementedVoteCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetSignedInUserStateCopyWith<$Res> {
  factory _$GetSignedInUserStateCopyWith(_GetSignedInUserState value,
          $Res Function(_GetSignedInUserState) then) =
      __$GetSignedInUserStateCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetSignedInUserStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$GetSignedInUserStateCopyWith<$Res> {
  __$GetSignedInUserStateCopyWithImpl(
      _GetSignedInUserState _value, $Res Function(_GetSignedInUserState) _then)
      : super(_value, (v) => _then(v as _GetSignedInUserState));

  @override
  _GetSignedInUserState get _value => super._value as _GetSignedInUserState;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_GetSignedInUserState(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetSignedInUserState implements _GetSignedInUserState {
  const _$_GetSignedInUserState(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'EventState.getSignedInUserState(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetSignedInUserState &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$GetSignedInUserStateCopyWith<_GetSignedInUserState> get copyWith =>
      __$GetSignedInUserStateCopyWithImpl<_GetSignedInUserState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
  }) {
    return getSignedInUserState(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (getSignedInUserState != null) {
      return getSignedInUserState(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowFetchedSongs value) showFetchedSongs,
    required TResult Function(_DisplayFetchedSongs value) displayFetchedSongs,
    required TResult Function(_IncrementedVoteCount value) incrementedVoteCount,
    required TResult Function(_GetSignedInUserState value) getSignedInUserState,
  }) {
    return getSignedInUserState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    required TResult orElse(),
  }) {
    if (getSignedInUserState != null) {
      return getSignedInUserState(this);
    }
    return orElse();
  }
}

abstract class _GetSignedInUserState implements EventState {
  const factory _GetSignedInUserState(String userId) = _$_GetSignedInUserState;

  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GetSignedInUserStateCopyWith<_GetSignedInUserState> get copyWith =>
      throw _privateConstructorUsedError;
}
