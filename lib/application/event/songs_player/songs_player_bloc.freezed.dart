// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'songs_player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SongsPlayerEventTearOff {
  const _$SongsPlayerEventTearOff();

  _Started started() {
    return const _Started();
  }

  _OnDurationChangedEvent onDurationChangedEvent(dynamic duration) {
    return _OnDurationChangedEvent(
      duration,
    );
  }

  _OnAudioPositionChangedEvent onAudioPositionChangedEvent(dynamic position) {
    return _OnAudioPositionChangedEvent(
      position,
    );
  }

  _OnPlayerCompletionEvent onPlayerCompletionEvent(String songId, String uid) {
    return _OnPlayerCompletionEvent(
      songId,
      uid,
    );
  }

  _FetchArtistSongsEvent fetchArtistSongsEvent() {
    return const _FetchArtistSongsEvent();
  }

  _GenerateOptionsEvent generateOptionsEvent(dynamic gameModeFullSongList) {
    return _GenerateOptionsEvent(
      gameModeFullSongList,
    );
  }
}

/// @nodoc
const $SongsPlayerEvent = _$SongsPlayerEventTearOff();

/// @nodoc
mixin _$SongsPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsPlayerEventCopyWith<$Res> {
  factory $SongsPlayerEventCopyWith(
          SongsPlayerEvent value, $Res Function(SongsPlayerEvent) then) =
      _$SongsPlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongsPlayerEventCopyWithImpl<$Res>
    implements $SongsPlayerEventCopyWith<$Res> {
  _$SongsPlayerEventCopyWithImpl(this._value, this._then);

  final SongsPlayerEvent _value;
  // ignore: unused_field
  final $Res Function(SongsPlayerEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SongsPlayerEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SongsPlayerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SongsPlayerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnDurationChangedEventCopyWith<$Res> {
  factory _$OnDurationChangedEventCopyWith(_OnDurationChangedEvent value,
          $Res Function(_OnDurationChangedEvent) then) =
      __$OnDurationChangedEventCopyWithImpl<$Res>;
  $Res call({dynamic duration});
}

/// @nodoc
class __$OnDurationChangedEventCopyWithImpl<$Res>
    extends _$SongsPlayerEventCopyWithImpl<$Res>
    implements _$OnDurationChangedEventCopyWith<$Res> {
  __$OnDurationChangedEventCopyWithImpl(_OnDurationChangedEvent _value,
      $Res Function(_OnDurationChangedEvent) _then)
      : super(_value, (v) => _then(v as _OnDurationChangedEvent));

  @override
  _OnDurationChangedEvent get _value => super._value as _OnDurationChangedEvent;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_OnDurationChangedEvent(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnDurationChangedEvent implements _OnDurationChangedEvent {
  const _$_OnDurationChangedEvent(this.duration);

  @override
  final dynamic duration;

  @override
  String toString() {
    return 'SongsPlayerEvent.onDurationChangedEvent(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnDurationChangedEvent &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$OnDurationChangedEventCopyWith<_OnDurationChangedEvent> get copyWith =>
      __$OnDurationChangedEventCopyWithImpl<_OnDurationChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) {
    return onDurationChangedEvent(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (onDurationChangedEvent != null) {
      return onDurationChangedEvent(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) {
    return onDurationChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (onDurationChangedEvent != null) {
      return onDurationChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _OnDurationChangedEvent implements SongsPlayerEvent {
  const factory _OnDurationChangedEvent(dynamic duration) =
      _$_OnDurationChangedEvent;

  dynamic get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnDurationChangedEventCopyWith<_OnDurationChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnAudioPositionChangedEventCopyWith<$Res> {
  factory _$OnAudioPositionChangedEventCopyWith(
          _OnAudioPositionChangedEvent value,
          $Res Function(_OnAudioPositionChangedEvent) then) =
      __$OnAudioPositionChangedEventCopyWithImpl<$Res>;
  $Res call({dynamic position});
}

/// @nodoc
class __$OnAudioPositionChangedEventCopyWithImpl<$Res>
    extends _$SongsPlayerEventCopyWithImpl<$Res>
    implements _$OnAudioPositionChangedEventCopyWith<$Res> {
  __$OnAudioPositionChangedEventCopyWithImpl(
      _OnAudioPositionChangedEvent _value,
      $Res Function(_OnAudioPositionChangedEvent) _then)
      : super(_value, (v) => _then(v as _OnAudioPositionChangedEvent));

  @override
  _OnAudioPositionChangedEvent get _value =>
      super._value as _OnAudioPositionChangedEvent;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_OnAudioPositionChangedEvent(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnAudioPositionChangedEvent implements _OnAudioPositionChangedEvent {
  const _$_OnAudioPositionChangedEvent(this.position);

  @override
  final dynamic position;

  @override
  String toString() {
    return 'SongsPlayerEvent.onAudioPositionChangedEvent(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnAudioPositionChangedEvent &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$OnAudioPositionChangedEventCopyWith<_OnAudioPositionChangedEvent>
      get copyWith => __$OnAudioPositionChangedEventCopyWithImpl<
          _OnAudioPositionChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) {
    return onAudioPositionChangedEvent(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (onAudioPositionChangedEvent != null) {
      return onAudioPositionChangedEvent(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) {
    return onAudioPositionChangedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (onAudioPositionChangedEvent != null) {
      return onAudioPositionChangedEvent(this);
    }
    return orElse();
  }
}

abstract class _OnAudioPositionChangedEvent implements SongsPlayerEvent {
  const factory _OnAudioPositionChangedEvent(dynamic position) =
      _$_OnAudioPositionChangedEvent;

  dynamic get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnAudioPositionChangedEventCopyWith<_OnAudioPositionChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnPlayerCompletionEventCopyWith<$Res> {
  factory _$OnPlayerCompletionEventCopyWith(_OnPlayerCompletionEvent value,
          $Res Function(_OnPlayerCompletionEvent) then) =
      __$OnPlayerCompletionEventCopyWithImpl<$Res>;
  $Res call({String songId, String uid});
}

/// @nodoc
class __$OnPlayerCompletionEventCopyWithImpl<$Res>
    extends _$SongsPlayerEventCopyWithImpl<$Res>
    implements _$OnPlayerCompletionEventCopyWith<$Res> {
  __$OnPlayerCompletionEventCopyWithImpl(_OnPlayerCompletionEvent _value,
      $Res Function(_OnPlayerCompletionEvent) _then)
      : super(_value, (v) => _then(v as _OnPlayerCompletionEvent));

  @override
  _OnPlayerCompletionEvent get _value =>
      super._value as _OnPlayerCompletionEvent;

  @override
  $Res call({
    Object? songId = freezed,
    Object? uid = freezed,
  }) {
    return _then(_OnPlayerCompletionEvent(
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

class _$_OnPlayerCompletionEvent implements _OnPlayerCompletionEvent {
  const _$_OnPlayerCompletionEvent(this.songId, this.uid);

  @override
  final String songId;
  @override
  final String uid;

  @override
  String toString() {
    return 'SongsPlayerEvent.onPlayerCompletionEvent(songId: $songId, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnPlayerCompletionEvent &&
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
  _$OnPlayerCompletionEventCopyWith<_OnPlayerCompletionEvent> get copyWith =>
      __$OnPlayerCompletionEventCopyWithImpl<_OnPlayerCompletionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) {
    return onPlayerCompletionEvent(songId, uid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (onPlayerCompletionEvent != null) {
      return onPlayerCompletionEvent(songId, uid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) {
    return onPlayerCompletionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (onPlayerCompletionEvent != null) {
      return onPlayerCompletionEvent(this);
    }
    return orElse();
  }
}

abstract class _OnPlayerCompletionEvent implements SongsPlayerEvent {
  const factory _OnPlayerCompletionEvent(String songId, String uid) =
      _$_OnPlayerCompletionEvent;

  String get songId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnPlayerCompletionEventCopyWith<_OnPlayerCompletionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FetchArtistSongsEventCopyWith<$Res> {
  factory _$FetchArtistSongsEventCopyWith(_FetchArtistSongsEvent value,
          $Res Function(_FetchArtistSongsEvent) then) =
      __$FetchArtistSongsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchArtistSongsEventCopyWithImpl<$Res>
    extends _$SongsPlayerEventCopyWithImpl<$Res>
    implements _$FetchArtistSongsEventCopyWith<$Res> {
  __$FetchArtistSongsEventCopyWithImpl(_FetchArtistSongsEvent _value,
      $Res Function(_FetchArtistSongsEvent) _then)
      : super(_value, (v) => _then(v as _FetchArtistSongsEvent));

  @override
  _FetchArtistSongsEvent get _value => super._value as _FetchArtistSongsEvent;
}

/// @nodoc

class _$_FetchArtistSongsEvent implements _FetchArtistSongsEvent {
  const _$_FetchArtistSongsEvent();

  @override
  String toString() {
    return 'SongsPlayerEvent.fetchArtistSongsEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchArtistSongsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) {
    return fetchArtistSongsEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (fetchArtistSongsEvent != null) {
      return fetchArtistSongsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) {
    return fetchArtistSongsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (fetchArtistSongsEvent != null) {
      return fetchArtistSongsEvent(this);
    }
    return orElse();
  }
}

abstract class _FetchArtistSongsEvent implements SongsPlayerEvent {
  const factory _FetchArtistSongsEvent() = _$_FetchArtistSongsEvent;
}

/// @nodoc
abstract class _$GenerateOptionsEventCopyWith<$Res> {
  factory _$GenerateOptionsEventCopyWith(_GenerateOptionsEvent value,
          $Res Function(_GenerateOptionsEvent) then) =
      __$GenerateOptionsEventCopyWithImpl<$Res>;
  $Res call({dynamic gameModeFullSongList});
}

/// @nodoc
class __$GenerateOptionsEventCopyWithImpl<$Res>
    extends _$SongsPlayerEventCopyWithImpl<$Res>
    implements _$GenerateOptionsEventCopyWith<$Res> {
  __$GenerateOptionsEventCopyWithImpl(
      _GenerateOptionsEvent _value, $Res Function(_GenerateOptionsEvent) _then)
      : super(_value, (v) => _then(v as _GenerateOptionsEvent));

  @override
  _GenerateOptionsEvent get _value => super._value as _GenerateOptionsEvent;

  @override
  $Res call({
    Object? gameModeFullSongList = freezed,
  }) {
    return _then(_GenerateOptionsEvent(
      gameModeFullSongList == freezed
          ? _value.gameModeFullSongList
          : gameModeFullSongList // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_GenerateOptionsEvent implements _GenerateOptionsEvent {
  const _$_GenerateOptionsEvent(this.gameModeFullSongList);

  @override
  final dynamic gameModeFullSongList;

  @override
  String toString() {
    return 'SongsPlayerEvent.generateOptionsEvent(gameModeFullSongList: $gameModeFullSongList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenerateOptionsEvent &&
            (identical(other.gameModeFullSongList, gameModeFullSongList) ||
                const DeepCollectionEquality()
                    .equals(other.gameModeFullSongList, gameModeFullSongList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(gameModeFullSongList);

  @JsonKey(ignore: true)
  @override
  _$GenerateOptionsEventCopyWith<_GenerateOptionsEvent> get copyWith =>
      __$GenerateOptionsEventCopyWithImpl<_GenerateOptionsEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic duration) onDurationChangedEvent,
    required TResult Function(dynamic position) onAudioPositionChangedEvent,
    required TResult Function(String songId, String uid)
        onPlayerCompletionEvent,
    required TResult Function() fetchArtistSongsEvent,
    required TResult Function(dynamic gameModeFullSongList)
        generateOptionsEvent,
  }) {
    return generateOptionsEvent(gameModeFullSongList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic duration)? onDurationChangedEvent,
    TResult Function(dynamic position)? onAudioPositionChangedEvent,
    TResult Function(String songId, String uid)? onPlayerCompletionEvent,
    TResult Function()? fetchArtistSongsEvent,
    TResult Function(dynamic gameModeFullSongList)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (generateOptionsEvent != null) {
      return generateOptionsEvent(gameModeFullSongList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnDurationChangedEvent value)
        onDurationChangedEvent,
    required TResult Function(_OnAudioPositionChangedEvent value)
        onAudioPositionChangedEvent,
    required TResult Function(_OnPlayerCompletionEvent value)
        onPlayerCompletionEvent,
    required TResult Function(_FetchArtistSongsEvent value)
        fetchArtistSongsEvent,
    required TResult Function(_GenerateOptionsEvent value) generateOptionsEvent,
  }) {
    return generateOptionsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnDurationChangedEvent value)? onDurationChangedEvent,
    TResult Function(_OnAudioPositionChangedEvent value)?
        onAudioPositionChangedEvent,
    TResult Function(_OnPlayerCompletionEvent value)? onPlayerCompletionEvent,
    TResult Function(_FetchArtistSongsEvent value)? fetchArtistSongsEvent,
    TResult Function(_GenerateOptionsEvent value)? generateOptionsEvent,
    required TResult orElse(),
  }) {
    if (generateOptionsEvent != null) {
      return generateOptionsEvent(this);
    }
    return orElse();
  }
}

abstract class _GenerateOptionsEvent implements SongsPlayerEvent {
  const factory _GenerateOptionsEvent(dynamic gameModeFullSongList) =
      _$_GenerateOptionsEvent;

  dynamic get gameModeFullSongList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenerateOptionsEventCopyWith<_GenerateOptionsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SongsPlayerStateTearOff {
  const _$SongsPlayerStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _OnDurationChangedState onDurationChangedState(dynamic duration) {
    return _OnDurationChangedState(
      duration,
    );
  }

  _OnAudioPositionChangedState onAudioPositionChangedState(dynamic position) {
    return _OnAudioPositionChangedState(
      position,
    );
  }

  _OnPlayerCompletionState onPlayerCompletionState() {
    return const _OnPlayerCompletionState();
  }

  _FetchArtistSongsState fetchArtistSongsState(dynamic artistSongs) {
    return _FetchArtistSongsState(
      artistSongs,
    );
  }

  _GenerateOptionsState generateOptionsState(dynamic songOptions) {
    return _GenerateOptionsState(
      songOptions,
    );
  }
}

/// @nodoc
const $SongsPlayerState = _$SongsPlayerStateTearOff();

/// @nodoc
mixin _$SongsPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongsPlayerStateCopyWith<$Res> {
  factory $SongsPlayerStateCopyWith(
          SongsPlayerState value, $Res Function(SongsPlayerState) then) =
      _$SongsPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SongsPlayerStateCopyWithImpl<$Res>
    implements $SongsPlayerStateCopyWith<$Res> {
  _$SongsPlayerStateCopyWithImpl(this._value, this._then);

  final SongsPlayerState _value;
  // ignore: unused_field
  final $Res Function(SongsPlayerState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SongsPlayerStateCopyWithImpl<$Res>
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
    return 'SongsPlayerState.initial()';
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
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
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
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SongsPlayerState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$OnDurationChangedStateCopyWith<$Res> {
  factory _$OnDurationChangedStateCopyWith(_OnDurationChangedState value,
          $Res Function(_OnDurationChangedState) then) =
      __$OnDurationChangedStateCopyWithImpl<$Res>;
  $Res call({dynamic duration});
}

/// @nodoc
class __$OnDurationChangedStateCopyWithImpl<$Res>
    extends _$SongsPlayerStateCopyWithImpl<$Res>
    implements _$OnDurationChangedStateCopyWith<$Res> {
  __$OnDurationChangedStateCopyWithImpl(_OnDurationChangedState _value,
      $Res Function(_OnDurationChangedState) _then)
      : super(_value, (v) => _then(v as _OnDurationChangedState));

  @override
  _OnDurationChangedState get _value => super._value as _OnDurationChangedState;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_OnDurationChangedState(
      duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnDurationChangedState implements _OnDurationChangedState {
  const _$_OnDurationChangedState(this.duration);

  @override
  final dynamic duration;

  @override
  String toString() {
    return 'SongsPlayerState.onDurationChangedState(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnDurationChangedState &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$OnDurationChangedStateCopyWith<_OnDurationChangedState> get copyWith =>
      __$OnDurationChangedStateCopyWithImpl<_OnDurationChangedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) {
    return onDurationChangedState(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (onDurationChangedState != null) {
      return onDurationChangedState(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) {
    return onDurationChangedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (onDurationChangedState != null) {
      return onDurationChangedState(this);
    }
    return orElse();
  }
}

abstract class _OnDurationChangedState implements SongsPlayerState {
  const factory _OnDurationChangedState(dynamic duration) =
      _$_OnDurationChangedState;

  dynamic get duration => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnDurationChangedStateCopyWith<_OnDurationChangedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnAudioPositionChangedStateCopyWith<$Res> {
  factory _$OnAudioPositionChangedStateCopyWith(
          _OnAudioPositionChangedState value,
          $Res Function(_OnAudioPositionChangedState) then) =
      __$OnAudioPositionChangedStateCopyWithImpl<$Res>;
  $Res call({dynamic position});
}

/// @nodoc
class __$OnAudioPositionChangedStateCopyWithImpl<$Res>
    extends _$SongsPlayerStateCopyWithImpl<$Res>
    implements _$OnAudioPositionChangedStateCopyWith<$Res> {
  __$OnAudioPositionChangedStateCopyWithImpl(
      _OnAudioPositionChangedState _value,
      $Res Function(_OnAudioPositionChangedState) _then)
      : super(_value, (v) => _then(v as _OnAudioPositionChangedState));

  @override
  _OnAudioPositionChangedState get _value =>
      super._value as _OnAudioPositionChangedState;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_OnAudioPositionChangedState(
      position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnAudioPositionChangedState implements _OnAudioPositionChangedState {
  const _$_OnAudioPositionChangedState(this.position);

  @override
  final dynamic position;

  @override
  String toString() {
    return 'SongsPlayerState.onAudioPositionChangedState(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnAudioPositionChangedState &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
  @override
  _$OnAudioPositionChangedStateCopyWith<_OnAudioPositionChangedState>
      get copyWith => __$OnAudioPositionChangedStateCopyWithImpl<
          _OnAudioPositionChangedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) {
    return onAudioPositionChangedState(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (onAudioPositionChangedState != null) {
      return onAudioPositionChangedState(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) {
    return onAudioPositionChangedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (onAudioPositionChangedState != null) {
      return onAudioPositionChangedState(this);
    }
    return orElse();
  }
}

abstract class _OnAudioPositionChangedState implements SongsPlayerState {
  const factory _OnAudioPositionChangedState(dynamic position) =
      _$_OnAudioPositionChangedState;

  dynamic get position => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OnAudioPositionChangedStateCopyWith<_OnAudioPositionChangedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnPlayerCompletionStateCopyWith<$Res> {
  factory _$OnPlayerCompletionStateCopyWith(_OnPlayerCompletionState value,
          $Res Function(_OnPlayerCompletionState) then) =
      __$OnPlayerCompletionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnPlayerCompletionStateCopyWithImpl<$Res>
    extends _$SongsPlayerStateCopyWithImpl<$Res>
    implements _$OnPlayerCompletionStateCopyWith<$Res> {
  __$OnPlayerCompletionStateCopyWithImpl(_OnPlayerCompletionState _value,
      $Res Function(_OnPlayerCompletionState) _then)
      : super(_value, (v) => _then(v as _OnPlayerCompletionState));

  @override
  _OnPlayerCompletionState get _value =>
      super._value as _OnPlayerCompletionState;
}

/// @nodoc

class _$_OnPlayerCompletionState implements _OnPlayerCompletionState {
  const _$_OnPlayerCompletionState();

  @override
  String toString() {
    return 'SongsPlayerState.onPlayerCompletionState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnPlayerCompletionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) {
    return onPlayerCompletionState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (onPlayerCompletionState != null) {
      return onPlayerCompletionState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) {
    return onPlayerCompletionState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (onPlayerCompletionState != null) {
      return onPlayerCompletionState(this);
    }
    return orElse();
  }
}

abstract class _OnPlayerCompletionState implements SongsPlayerState {
  const factory _OnPlayerCompletionState() = _$_OnPlayerCompletionState;
}

/// @nodoc
abstract class _$FetchArtistSongsStateCopyWith<$Res> {
  factory _$FetchArtistSongsStateCopyWith(_FetchArtistSongsState value,
          $Res Function(_FetchArtistSongsState) then) =
      __$FetchArtistSongsStateCopyWithImpl<$Res>;
  $Res call({dynamic artistSongs});
}

/// @nodoc
class __$FetchArtistSongsStateCopyWithImpl<$Res>
    extends _$SongsPlayerStateCopyWithImpl<$Res>
    implements _$FetchArtistSongsStateCopyWith<$Res> {
  __$FetchArtistSongsStateCopyWithImpl(_FetchArtistSongsState _value,
      $Res Function(_FetchArtistSongsState) _then)
      : super(_value, (v) => _then(v as _FetchArtistSongsState));

  @override
  _FetchArtistSongsState get _value => super._value as _FetchArtistSongsState;

  @override
  $Res call({
    Object? artistSongs = freezed,
  }) {
    return _then(_FetchArtistSongsState(
      artistSongs == freezed
          ? _value.artistSongs
          : artistSongs // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FetchArtistSongsState implements _FetchArtistSongsState {
  const _$_FetchArtistSongsState(this.artistSongs);

  @override
  final dynamic artistSongs;

  @override
  String toString() {
    return 'SongsPlayerState.fetchArtistSongsState(artistSongs: $artistSongs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchArtistSongsState &&
            (identical(other.artistSongs, artistSongs) ||
                const DeepCollectionEquality()
                    .equals(other.artistSongs, artistSongs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(artistSongs);

  @JsonKey(ignore: true)
  @override
  _$FetchArtistSongsStateCopyWith<_FetchArtistSongsState> get copyWith =>
      __$FetchArtistSongsStateCopyWithImpl<_FetchArtistSongsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) {
    return fetchArtistSongsState(artistSongs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (fetchArtistSongsState != null) {
      return fetchArtistSongsState(artistSongs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) {
    return fetchArtistSongsState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (fetchArtistSongsState != null) {
      return fetchArtistSongsState(this);
    }
    return orElse();
  }
}

abstract class _FetchArtistSongsState implements SongsPlayerState {
  const factory _FetchArtistSongsState(dynamic artistSongs) =
      _$_FetchArtistSongsState;

  dynamic get artistSongs => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchArtistSongsStateCopyWith<_FetchArtistSongsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenerateOptionsStateCopyWith<$Res> {
  factory _$GenerateOptionsStateCopyWith(_GenerateOptionsState value,
          $Res Function(_GenerateOptionsState) then) =
      __$GenerateOptionsStateCopyWithImpl<$Res>;
  $Res call({dynamic songOptions});
}

/// @nodoc
class __$GenerateOptionsStateCopyWithImpl<$Res>
    extends _$SongsPlayerStateCopyWithImpl<$Res>
    implements _$GenerateOptionsStateCopyWith<$Res> {
  __$GenerateOptionsStateCopyWithImpl(
      _GenerateOptionsState _value, $Res Function(_GenerateOptionsState) _then)
      : super(_value, (v) => _then(v as _GenerateOptionsState));

  @override
  _GenerateOptionsState get _value => super._value as _GenerateOptionsState;

  @override
  $Res call({
    Object? songOptions = freezed,
  }) {
    return _then(_GenerateOptionsState(
      songOptions == freezed
          ? _value.songOptions
          : songOptions // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_GenerateOptionsState implements _GenerateOptionsState {
  const _$_GenerateOptionsState(this.songOptions);

  @override
  final dynamic songOptions;

  @override
  String toString() {
    return 'SongsPlayerState.generateOptionsState(songOptions: $songOptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenerateOptionsState &&
            (identical(other.songOptions, songOptions) ||
                const DeepCollectionEquality()
                    .equals(other.songOptions, songOptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(songOptions);

  @JsonKey(ignore: true)
  @override
  _$GenerateOptionsStateCopyWith<_GenerateOptionsState> get copyWith =>
      __$GenerateOptionsStateCopyWithImpl<_GenerateOptionsState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic duration) onDurationChangedState,
    required TResult Function(dynamic position) onAudioPositionChangedState,
    required TResult Function() onPlayerCompletionState,
    required TResult Function(dynamic artistSongs) fetchArtistSongsState,
    required TResult Function(dynamic songOptions) generateOptionsState,
  }) {
    return generateOptionsState(songOptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic duration)? onDurationChangedState,
    TResult Function(dynamic position)? onAudioPositionChangedState,
    TResult Function()? onPlayerCompletionState,
    TResult Function(dynamic artistSongs)? fetchArtistSongsState,
    TResult Function(dynamic songOptions)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (generateOptionsState != null) {
      return generateOptionsState(songOptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OnDurationChangedState value)
        onDurationChangedState,
    required TResult Function(_OnAudioPositionChangedState value)
        onAudioPositionChangedState,
    required TResult Function(_OnPlayerCompletionState value)
        onPlayerCompletionState,
    required TResult Function(_FetchArtistSongsState value)
        fetchArtistSongsState,
    required TResult Function(_GenerateOptionsState value) generateOptionsState,
  }) {
    return generateOptionsState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OnDurationChangedState value)? onDurationChangedState,
    TResult Function(_OnAudioPositionChangedState value)?
        onAudioPositionChangedState,
    TResult Function(_OnPlayerCompletionState value)? onPlayerCompletionState,
    TResult Function(_FetchArtistSongsState value)? fetchArtistSongsState,
    TResult Function(_GenerateOptionsState value)? generateOptionsState,
    required TResult orElse(),
  }) {
    if (generateOptionsState != null) {
      return generateOptionsState(this);
    }
    return orElse();
  }
}

abstract class _GenerateOptionsState implements SongsPlayerState {
  const factory _GenerateOptionsState(dynamic songOptions) =
      _$_GenerateOptionsState;

  dynamic get songOptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenerateOptionsStateCopyWith<_GenerateOptionsState> get copyWith =>
      throw _privateConstructorUsedError;
}
