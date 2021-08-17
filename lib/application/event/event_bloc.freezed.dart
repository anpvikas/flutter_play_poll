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

  _GameModeVoteEvent gameModeVoteEvent(
      String songId, String artistUid, String voteSmiley) {
    return _GameModeVoteEvent(
      songId,
      artistUid,
      voteSmiley,
    );
  }

  _UpdateAppearedInOptionCountEvent updateAppearedInOptionCountEvent(
      String songId, String artistUid) {
    return _UpdateAppearedInOptionCountEvent(
      songId,
      artistUid,
    );
  }

  _CreateGameModeEntryEvent createGameModeEntryEvent(
      String eventId, String songId, String artistUid) {
    return _CreateGameModeEntryEvent(
      eventId,
      songId,
      artistUid,
    );
  }

  _VotingStartedEvent votingStartedEvent() {
    return const _VotingStartedEvent();
  }

  _ShowWinnerEvent showWinnerEvent(String eventId, String songId) {
    return _ShowWinnerEvent(
      eventId,
      songId,
    );
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
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DisplaySongs value) displaySongs,
    required TResult Function(_IncrementVoteCount value) incrementVoteCount,
    required TResult Function(_GetSignedInUserEvent value) getSignedInUserEvent,
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
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
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
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
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
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
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
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
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
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
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
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
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
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
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
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
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
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
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
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
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
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
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
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
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
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
abstract class _$GameModeVoteEventCopyWith<$Res> {
  factory _$GameModeVoteEventCopyWith(
          _GameModeVoteEvent value, $Res Function(_GameModeVoteEvent) then) =
      __$GameModeVoteEventCopyWithImpl<$Res>;
  $Res call({String songId, String artistUid, String voteSmiley});
}

/// @nodoc
class __$GameModeVoteEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$GameModeVoteEventCopyWith<$Res> {
  __$GameModeVoteEventCopyWithImpl(
      _GameModeVoteEvent _value, $Res Function(_GameModeVoteEvent) _then)
      : super(_value, (v) => _then(v as _GameModeVoteEvent));

  @override
  _GameModeVoteEvent get _value => super._value as _GameModeVoteEvent;

  @override
  $Res call({
    Object? songId = freezed,
    Object? artistUid = freezed,
    Object? voteSmiley = freezed,
  }) {
    return _then(_GameModeVoteEvent(
      songId == freezed
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      artistUid == freezed
          ? _value.artistUid
          : artistUid // ignore: cast_nullable_to_non_nullable
              as String,
      voteSmiley == freezed
          ? _value.voteSmiley
          : voteSmiley // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GameModeVoteEvent implements _GameModeVoteEvent {
  const _$_GameModeVoteEvent(this.songId, this.artistUid, this.voteSmiley);

  @override
  final String songId;
  @override
  final String artistUid;
  @override
  final String voteSmiley;

  @override
  String toString() {
    return 'EventEvent.gameModeVoteEvent(songId: $songId, artistUid: $artistUid, voteSmiley: $voteSmiley)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GameModeVoteEvent &&
            (identical(other.songId, songId) ||
                const DeepCollectionEquality().equals(other.songId, songId)) &&
            (identical(other.artistUid, artistUid) ||
                const DeepCollectionEquality()
                    .equals(other.artistUid, artistUid)) &&
            (identical(other.voteSmiley, voteSmiley) ||
                const DeepCollectionEquality()
                    .equals(other.voteSmiley, voteSmiley)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(songId) ^
      const DeepCollectionEquality().hash(artistUid) ^
      const DeepCollectionEquality().hash(voteSmiley);

  @JsonKey(ignore: true)
  @override
  _$GameModeVoteEventCopyWith<_GameModeVoteEvent> get copyWith =>
      __$GameModeVoteEventCopyWithImpl<_GameModeVoteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
  }) {
    return gameModeVoteEvent(songId, artistUid, voteSmiley);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (gameModeVoteEvent != null) {
      return gameModeVoteEvent(songId, artistUid, voteSmiley);
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
  }) {
    return gameModeVoteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (gameModeVoteEvent != null) {
      return gameModeVoteEvent(this);
    }
    return orElse();
  }
}

abstract class _GameModeVoteEvent implements EventEvent {
  const factory _GameModeVoteEvent(
          String songId, String artistUid, String voteSmiley) =
      _$_GameModeVoteEvent;

  String get songId => throw _privateConstructorUsedError;
  String get artistUid => throw _privateConstructorUsedError;
  String get voteSmiley => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GameModeVoteEventCopyWith<_GameModeVoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateAppearedInOptionCountEventCopyWith<$Res> {
  factory _$UpdateAppearedInOptionCountEventCopyWith(
          _UpdateAppearedInOptionCountEvent value,
          $Res Function(_UpdateAppearedInOptionCountEvent) then) =
      __$UpdateAppearedInOptionCountEventCopyWithImpl<$Res>;
  $Res call({String songId, String artistUid});
}

/// @nodoc
class __$UpdateAppearedInOptionCountEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$UpdateAppearedInOptionCountEventCopyWith<$Res> {
  __$UpdateAppearedInOptionCountEventCopyWithImpl(
      _UpdateAppearedInOptionCountEvent _value,
      $Res Function(_UpdateAppearedInOptionCountEvent) _then)
      : super(_value, (v) => _then(v as _UpdateAppearedInOptionCountEvent));

  @override
  _UpdateAppearedInOptionCountEvent get _value =>
      super._value as _UpdateAppearedInOptionCountEvent;

  @override
  $Res call({
    Object? songId = freezed,
    Object? artistUid = freezed,
  }) {
    return _then(_UpdateAppearedInOptionCountEvent(
      songId == freezed
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      artistUid == freezed
          ? _value.artistUid
          : artistUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateAppearedInOptionCountEvent
    implements _UpdateAppearedInOptionCountEvent {
  const _$_UpdateAppearedInOptionCountEvent(this.songId, this.artistUid);

  @override
  final String songId;
  @override
  final String artistUid;

  @override
  String toString() {
    return 'EventEvent.updateAppearedInOptionCountEvent(songId: $songId, artistUid: $artistUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAppearedInOptionCountEvent &&
            (identical(other.songId, songId) ||
                const DeepCollectionEquality().equals(other.songId, songId)) &&
            (identical(other.artistUid, artistUid) ||
                const DeepCollectionEquality()
                    .equals(other.artistUid, artistUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(songId) ^
      const DeepCollectionEquality().hash(artistUid);

  @JsonKey(ignore: true)
  @override
  _$UpdateAppearedInOptionCountEventCopyWith<_UpdateAppearedInOptionCountEvent>
      get copyWith => __$UpdateAppearedInOptionCountEventCopyWithImpl<
          _UpdateAppearedInOptionCountEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
  }) {
    return updateAppearedInOptionCountEvent(songId, artistUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (updateAppearedInOptionCountEvent != null) {
      return updateAppearedInOptionCountEvent(songId, artistUid);
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
  }) {
    return updateAppearedInOptionCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (updateAppearedInOptionCountEvent != null) {
      return updateAppearedInOptionCountEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppearedInOptionCountEvent implements EventEvent {
  const factory _UpdateAppearedInOptionCountEvent(
      String songId, String artistUid) = _$_UpdateAppearedInOptionCountEvent;

  String get songId => throw _privateConstructorUsedError;
  String get artistUid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateAppearedInOptionCountEventCopyWith<_UpdateAppearedInOptionCountEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateGameModeEntryEventCopyWith<$Res> {
  factory _$CreateGameModeEntryEventCopyWith(_CreateGameModeEntryEvent value,
          $Res Function(_CreateGameModeEntryEvent) then) =
      __$CreateGameModeEntryEventCopyWithImpl<$Res>;
  $Res call({String eventId, String songId, String artistUid});
}

/// @nodoc
class __$CreateGameModeEntryEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$CreateGameModeEntryEventCopyWith<$Res> {
  __$CreateGameModeEntryEventCopyWithImpl(_CreateGameModeEntryEvent _value,
      $Res Function(_CreateGameModeEntryEvent) _then)
      : super(_value, (v) => _then(v as _CreateGameModeEntryEvent));

  @override
  _CreateGameModeEntryEvent get _value =>
      super._value as _CreateGameModeEntryEvent;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? songId = freezed,
    Object? artistUid = freezed,
  }) {
    return _then(_CreateGameModeEntryEvent(
      eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      songId == freezed
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
      artistUid == freezed
          ? _value.artistUid
          : artistUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateGameModeEntryEvent implements _CreateGameModeEntryEvent {
  const _$_CreateGameModeEntryEvent(this.eventId, this.songId, this.artistUid);

  @override
  final String eventId;
  @override
  final String songId;
  @override
  final String artistUid;

  @override
  String toString() {
    return 'EventEvent.createGameModeEntryEvent(eventId: $eventId, songId: $songId, artistUid: $artistUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateGameModeEntryEvent &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.songId, songId) ||
                const DeepCollectionEquality().equals(other.songId, songId)) &&
            (identical(other.artistUid, artistUid) ||
                const DeepCollectionEquality()
                    .equals(other.artistUid, artistUid)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(songId) ^
      const DeepCollectionEquality().hash(artistUid);

  @JsonKey(ignore: true)
  @override
  _$CreateGameModeEntryEventCopyWith<_CreateGameModeEntryEvent> get copyWith =>
      __$CreateGameModeEntryEventCopyWithImpl<_CreateGameModeEntryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
  }) {
    return createGameModeEntryEvent(eventId, songId, artistUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (createGameModeEntryEvent != null) {
      return createGameModeEntryEvent(eventId, songId, artistUid);
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
  }) {
    return createGameModeEntryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (createGameModeEntryEvent != null) {
      return createGameModeEntryEvent(this);
    }
    return orElse();
  }
}

abstract class _CreateGameModeEntryEvent implements EventEvent {
  const factory _CreateGameModeEntryEvent(
          String eventId, String songId, String artistUid) =
      _$_CreateGameModeEntryEvent;

  String get eventId => throw _privateConstructorUsedError;
  String get songId => throw _privateConstructorUsedError;
  String get artistUid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CreateGameModeEntryEventCopyWith<_CreateGameModeEntryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VotingStartedEventCopyWith<$Res> {
  factory _$VotingStartedEventCopyWith(
          _VotingStartedEvent value, $Res Function(_VotingStartedEvent) then) =
      __$VotingStartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$VotingStartedEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$VotingStartedEventCopyWith<$Res> {
  __$VotingStartedEventCopyWithImpl(
      _VotingStartedEvent _value, $Res Function(_VotingStartedEvent) _then)
      : super(_value, (v) => _then(v as _VotingStartedEvent));

  @override
  _VotingStartedEvent get _value => super._value as _VotingStartedEvent;
}

/// @nodoc

class _$_VotingStartedEvent implements _VotingStartedEvent {
  const _$_VotingStartedEvent();

  @override
  String toString() {
    return 'EventEvent.votingStartedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _VotingStartedEvent);
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
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
  }) {
    return votingStartedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (votingStartedEvent != null) {
      return votingStartedEvent();
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
  }) {
    return votingStartedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (votingStartedEvent != null) {
      return votingStartedEvent(this);
    }
    return orElse();
  }
}

abstract class _VotingStartedEvent implements EventEvent {
  const factory _VotingStartedEvent() = _$_VotingStartedEvent;
}

/// @nodoc
abstract class _$ShowWinnerEventCopyWith<$Res> {
  factory _$ShowWinnerEventCopyWith(
          _ShowWinnerEvent value, $Res Function(_ShowWinnerEvent) then) =
      __$ShowWinnerEventCopyWithImpl<$Res>;
  $Res call({String eventId, String songId});
}

/// @nodoc
class __$ShowWinnerEventCopyWithImpl<$Res>
    extends _$EventEventCopyWithImpl<$Res>
    implements _$ShowWinnerEventCopyWith<$Res> {
  __$ShowWinnerEventCopyWithImpl(
      _ShowWinnerEvent _value, $Res Function(_ShowWinnerEvent) _then)
      : super(_value, (v) => _then(v as _ShowWinnerEvent));

  @override
  _ShowWinnerEvent get _value => super._value as _ShowWinnerEvent;

  @override
  $Res call({
    Object? eventId = freezed,
    Object? songId = freezed,
  }) {
    return _then(_ShowWinnerEvent(
      eventId == freezed
          ? _value.eventId
          : eventId // ignore: cast_nullable_to_non_nullable
              as String,
      songId == freezed
          ? _value.songId
          : songId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ShowWinnerEvent implements _ShowWinnerEvent {
  const _$_ShowWinnerEvent(this.eventId, this.songId);

  @override
  final String eventId;
  @override
  final String songId;

  @override
  String toString() {
    return 'EventEvent.showWinnerEvent(eventId: $eventId, songId: $songId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowWinnerEvent &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.songId, songId) ||
                const DeepCollectionEquality().equals(other.songId, songId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(songId);

  @JsonKey(ignore: true)
  @override
  _$ShowWinnerEventCopyWith<_ShowWinnerEvent> get copyWith =>
      __$ShowWinnerEventCopyWithImpl<_ShowWinnerEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic data) started,
    required TResult Function(dynamic data) displaySongs,
    required TResult Function(String songId, String uid) incrementVoteCount,
    required TResult Function() getSignedInUserEvent,
    required TResult Function(
            String songId, String artistUid, String voteSmiley)
        gameModeVoteEvent,
    required TResult Function(String songId, String artistUid)
        updateAppearedInOptionCountEvent,
    required TResult Function(String eventId, String songId, String artistUid)
        createGameModeEntryEvent,
    required TResult Function() votingStartedEvent,
    required TResult Function(String eventId, String songId) showWinnerEvent,
  }) {
    return showWinnerEvent(eventId, songId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic data)? started,
    TResult Function(dynamic data)? displaySongs,
    TResult Function(String songId, String uid)? incrementVoteCount,
    TResult Function()? getSignedInUserEvent,
    TResult Function(String songId, String artistUid, String voteSmiley)?
        gameModeVoteEvent,
    TResult Function(String songId, String artistUid)?
        updateAppearedInOptionCountEvent,
    TResult Function(String eventId, String songId, String artistUid)?
        createGameModeEntryEvent,
    TResult Function()? votingStartedEvent,
    TResult Function(String eventId, String songId)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (showWinnerEvent != null) {
      return showWinnerEvent(eventId, songId);
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
    required TResult Function(_GameModeVoteEvent value) gameModeVoteEvent,
    required TResult Function(_UpdateAppearedInOptionCountEvent value)
        updateAppearedInOptionCountEvent,
    required TResult Function(_CreateGameModeEntryEvent value)
        createGameModeEntryEvent,
    required TResult Function(_VotingStartedEvent value) votingStartedEvent,
    required TResult Function(_ShowWinnerEvent value) showWinnerEvent,
  }) {
    return showWinnerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DisplaySongs value)? displaySongs,
    TResult Function(_IncrementVoteCount value)? incrementVoteCount,
    TResult Function(_GetSignedInUserEvent value)? getSignedInUserEvent,
    TResult Function(_GameModeVoteEvent value)? gameModeVoteEvent,
    TResult Function(_UpdateAppearedInOptionCountEvent value)?
        updateAppearedInOptionCountEvent,
    TResult Function(_CreateGameModeEntryEvent value)? createGameModeEntryEvent,
    TResult Function(_VotingStartedEvent value)? votingStartedEvent,
    TResult Function(_ShowWinnerEvent value)? showWinnerEvent,
    required TResult orElse(),
  }) {
    if (showWinnerEvent != null) {
      return showWinnerEvent(this);
    }
    return orElse();
  }
}

abstract class _ShowWinnerEvent implements EventEvent {
  const factory _ShowWinnerEvent(String eventId, String songId) =
      _$_ShowWinnerEvent;

  String get eventId => throw _privateConstructorUsedError;
  String get songId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowWinnerEventCopyWith<_ShowWinnerEvent> get copyWith =>
      throw _privateConstructorUsedError;
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

  _GameModeVoteState gameModeVoteState() {
    return const _GameModeVoteState();
  }

  _UpdateAppearedInOptionCountState updateAppearedInOptionCountState(
      dynamic updatedCountInOption) {
    return _UpdateAppearedInOptionCountState(
      updatedCountInOption,
    );
  }

  _CreateGameModeEntryState createGameModeEntryState() {
    return const _CreateGameModeEntryState();
  }

  _VotingStartedState votingStartedState(String timerValue) {
    return _VotingStartedState(
      timerValue,
    );
  }

  _ShowWinnerState showWinnerState(List<dynamic> winner) {
    return _ShowWinnerState(
      winner,
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
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
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
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
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
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
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
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
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
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
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
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
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
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
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
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
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
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
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
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
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
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

/// @nodoc
abstract class _$GameModeVoteStateCopyWith<$Res> {
  factory _$GameModeVoteStateCopyWith(
          _GameModeVoteState value, $Res Function(_GameModeVoteState) then) =
      __$GameModeVoteStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$GameModeVoteStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$GameModeVoteStateCopyWith<$Res> {
  __$GameModeVoteStateCopyWithImpl(
      _GameModeVoteState _value, $Res Function(_GameModeVoteState) _then)
      : super(_value, (v) => _then(v as _GameModeVoteState));

  @override
  _GameModeVoteState get _value => super._value as _GameModeVoteState;
}

/// @nodoc

class _$_GameModeVoteState implements _GameModeVoteState {
  const _$_GameModeVoteState();

  @override
  String toString() {
    return 'EventState.gameModeVoteState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GameModeVoteState);
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
  }) {
    return gameModeVoteState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
    required TResult orElse(),
  }) {
    if (gameModeVoteState != null) {
      return gameModeVoteState();
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
  }) {
    return gameModeVoteState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
    required TResult orElse(),
  }) {
    if (gameModeVoteState != null) {
      return gameModeVoteState(this);
    }
    return orElse();
  }
}

abstract class _GameModeVoteState implements EventState {
  const factory _GameModeVoteState() = _$_GameModeVoteState;
}

/// @nodoc
abstract class _$UpdateAppearedInOptionCountStateCopyWith<$Res> {
  factory _$UpdateAppearedInOptionCountStateCopyWith(
          _UpdateAppearedInOptionCountState value,
          $Res Function(_UpdateAppearedInOptionCountState) then) =
      __$UpdateAppearedInOptionCountStateCopyWithImpl<$Res>;
  $Res call({dynamic updatedCountInOption});
}

/// @nodoc
class __$UpdateAppearedInOptionCountStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$UpdateAppearedInOptionCountStateCopyWith<$Res> {
  __$UpdateAppearedInOptionCountStateCopyWithImpl(
      _UpdateAppearedInOptionCountState _value,
      $Res Function(_UpdateAppearedInOptionCountState) _then)
      : super(_value, (v) => _then(v as _UpdateAppearedInOptionCountState));

  @override
  _UpdateAppearedInOptionCountState get _value =>
      super._value as _UpdateAppearedInOptionCountState;

  @override
  $Res call({
    Object? updatedCountInOption = freezed,
  }) {
    return _then(_UpdateAppearedInOptionCountState(
      updatedCountInOption == freezed
          ? _value.updatedCountInOption
          : updatedCountInOption // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UpdateAppearedInOptionCountState
    implements _UpdateAppearedInOptionCountState {
  const _$_UpdateAppearedInOptionCountState(this.updatedCountInOption);

  @override
  final dynamic updatedCountInOption;

  @override
  String toString() {
    return 'EventState.updateAppearedInOptionCountState(updatedCountInOption: $updatedCountInOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateAppearedInOptionCountState &&
            (identical(other.updatedCountInOption, updatedCountInOption) ||
                const DeepCollectionEquality()
                    .equals(other.updatedCountInOption, updatedCountInOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(updatedCountInOption);

  @JsonKey(ignore: true)
  @override
  _$UpdateAppearedInOptionCountStateCopyWith<_UpdateAppearedInOptionCountState>
      get copyWith => __$UpdateAppearedInOptionCountStateCopyWithImpl<
          _UpdateAppearedInOptionCountState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
  }) {
    return updateAppearedInOptionCountState(updatedCountInOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
    required TResult orElse(),
  }) {
    if (updateAppearedInOptionCountState != null) {
      return updateAppearedInOptionCountState(updatedCountInOption);
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
  }) {
    return updateAppearedInOptionCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
    required TResult orElse(),
  }) {
    if (updateAppearedInOptionCountState != null) {
      return updateAppearedInOptionCountState(this);
    }
    return orElse();
  }
}

abstract class _UpdateAppearedInOptionCountState implements EventState {
  const factory _UpdateAppearedInOptionCountState(
      dynamic updatedCountInOption) = _$_UpdateAppearedInOptionCountState;

  dynamic get updatedCountInOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UpdateAppearedInOptionCountStateCopyWith<_UpdateAppearedInOptionCountState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateGameModeEntryStateCopyWith<$Res> {
  factory _$CreateGameModeEntryStateCopyWith(_CreateGameModeEntryState value,
          $Res Function(_CreateGameModeEntryState) then) =
      __$CreateGameModeEntryStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateGameModeEntryStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$CreateGameModeEntryStateCopyWith<$Res> {
  __$CreateGameModeEntryStateCopyWithImpl(_CreateGameModeEntryState _value,
      $Res Function(_CreateGameModeEntryState) _then)
      : super(_value, (v) => _then(v as _CreateGameModeEntryState));

  @override
  _CreateGameModeEntryState get _value =>
      super._value as _CreateGameModeEntryState;
}

/// @nodoc

class _$_CreateGameModeEntryState implements _CreateGameModeEntryState {
  const _$_CreateGameModeEntryState();

  @override
  String toString() {
    return 'EventState.createGameModeEntryState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateGameModeEntryState);
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
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
  }) {
    return createGameModeEntryState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
    required TResult orElse(),
  }) {
    if (createGameModeEntryState != null) {
      return createGameModeEntryState();
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
  }) {
    return createGameModeEntryState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
    required TResult orElse(),
  }) {
    if (createGameModeEntryState != null) {
      return createGameModeEntryState(this);
    }
    return orElse();
  }
}

abstract class _CreateGameModeEntryState implements EventState {
  const factory _CreateGameModeEntryState() = _$_CreateGameModeEntryState;
}

/// @nodoc
abstract class _$VotingStartedStateCopyWith<$Res> {
  factory _$VotingStartedStateCopyWith(
          _VotingStartedState value, $Res Function(_VotingStartedState) then) =
      __$VotingStartedStateCopyWithImpl<$Res>;
  $Res call({String timerValue});
}

/// @nodoc
class __$VotingStartedStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$VotingStartedStateCopyWith<$Res> {
  __$VotingStartedStateCopyWithImpl(
      _VotingStartedState _value, $Res Function(_VotingStartedState) _then)
      : super(_value, (v) => _then(v as _VotingStartedState));

  @override
  _VotingStartedState get _value => super._value as _VotingStartedState;

  @override
  $Res call({
    Object? timerValue = freezed,
  }) {
    return _then(_VotingStartedState(
      timerValue == freezed
          ? _value.timerValue
          : timerValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VotingStartedState implements _VotingStartedState {
  const _$_VotingStartedState(this.timerValue);

  @override
  final String timerValue;

  @override
  String toString() {
    return 'EventState.votingStartedState(timerValue: $timerValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VotingStartedState &&
            (identical(other.timerValue, timerValue) ||
                const DeepCollectionEquality()
                    .equals(other.timerValue, timerValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(timerValue);

  @JsonKey(ignore: true)
  @override
  _$VotingStartedStateCopyWith<_VotingStartedState> get copyWith =>
      __$VotingStartedStateCopyWithImpl<_VotingStartedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
  }) {
    return votingStartedState(timerValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
    required TResult orElse(),
  }) {
    if (votingStartedState != null) {
      return votingStartedState(timerValue);
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
  }) {
    return votingStartedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
    required TResult orElse(),
  }) {
    if (votingStartedState != null) {
      return votingStartedState(this);
    }
    return orElse();
  }
}

abstract class _VotingStartedState implements EventState {
  const factory _VotingStartedState(String timerValue) = _$_VotingStartedState;

  String get timerValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VotingStartedStateCopyWith<_VotingStartedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ShowWinnerStateCopyWith<$Res> {
  factory _$ShowWinnerStateCopyWith(
          _ShowWinnerState value, $Res Function(_ShowWinnerState) then) =
      __$ShowWinnerStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> winner});
}

/// @nodoc
class __$ShowWinnerStateCopyWithImpl<$Res>
    extends _$EventStateCopyWithImpl<$Res>
    implements _$ShowWinnerStateCopyWith<$Res> {
  __$ShowWinnerStateCopyWithImpl(
      _ShowWinnerState _value, $Res Function(_ShowWinnerState) _then)
      : super(_value, (v) => _then(v as _ShowWinnerState));

  @override
  _ShowWinnerState get _value => super._value as _ShowWinnerState;

  @override
  $Res call({
    Object? winner = freezed,
  }) {
    return _then(_ShowWinnerState(
      winner == freezed
          ? _value.winner
          : winner // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_ShowWinnerState implements _ShowWinnerState {
  const _$_ShowWinnerState(this.winner);

  @override
  final List<dynamic> winner;

  @override
  String toString() {
    return 'EventState.showWinnerState(winner: $winner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowWinnerState &&
            (identical(other.winner, winner) ||
                const DeepCollectionEquality().equals(other.winner, winner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(winner);

  @JsonKey(ignore: true)
  @override
  _$ShowWinnerStateCopyWith<_ShowWinnerState> get copyWith =>
      __$ShowWinnerStateCopyWithImpl<_ShowWinnerState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic showFetchedSongs) showFetchedSongs,
    required TResult Function(dynamic displayFetchedSongs) displayFetchedSongs,
    required TResult Function(String updatedVoteCount) incrementedVoteCount,
    required TResult Function(String userId) getSignedInUserState,
    required TResult Function() gameModeVoteState,
    required TResult Function(dynamic updatedCountInOption)
        updateAppearedInOptionCountState,
    required TResult Function() createGameModeEntryState,
    required TResult Function(String timerValue) votingStartedState,
    required TResult Function(List<dynamic> winner) showWinnerState,
  }) {
    return showWinnerState(winner);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic showFetchedSongs)? showFetchedSongs,
    TResult Function(dynamic displayFetchedSongs)? displayFetchedSongs,
    TResult Function(String updatedVoteCount)? incrementedVoteCount,
    TResult Function(String userId)? getSignedInUserState,
    TResult Function()? gameModeVoteState,
    TResult Function(dynamic updatedCountInOption)?
        updateAppearedInOptionCountState,
    TResult Function()? createGameModeEntryState,
    TResult Function(String timerValue)? votingStartedState,
    TResult Function(List<dynamic> winner)? showWinnerState,
    required TResult orElse(),
  }) {
    if (showWinnerState != null) {
      return showWinnerState(winner);
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
    required TResult Function(_GameModeVoteState value) gameModeVoteState,
    required TResult Function(_UpdateAppearedInOptionCountState value)
        updateAppearedInOptionCountState,
    required TResult Function(_CreateGameModeEntryState value)
        createGameModeEntryState,
    required TResult Function(_VotingStartedState value) votingStartedState,
    required TResult Function(_ShowWinnerState value) showWinnerState,
  }) {
    return showWinnerState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowFetchedSongs value)? showFetchedSongs,
    TResult Function(_DisplayFetchedSongs value)? displayFetchedSongs,
    TResult Function(_IncrementedVoteCount value)? incrementedVoteCount,
    TResult Function(_GetSignedInUserState value)? getSignedInUserState,
    TResult Function(_GameModeVoteState value)? gameModeVoteState,
    TResult Function(_UpdateAppearedInOptionCountState value)?
        updateAppearedInOptionCountState,
    TResult Function(_CreateGameModeEntryState value)? createGameModeEntryState,
    TResult Function(_VotingStartedState value)? votingStartedState,
    TResult Function(_ShowWinnerState value)? showWinnerState,
    required TResult orElse(),
  }) {
    if (showWinnerState != null) {
      return showWinnerState(this);
    }
    return orElse();
  }
}

abstract class _ShowWinnerState implements EventState {
  const factory _ShowWinnerState(List<dynamic> winner) = _$_ShowWinnerState;

  List<dynamic> get winner => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowWinnerStateCopyWith<_ShowWinnerState> get copyWith =>
      throw _privateConstructorUsedError;
}
