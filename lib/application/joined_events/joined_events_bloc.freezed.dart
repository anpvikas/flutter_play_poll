// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'joined_events_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$JoinedEventsEventTearOff {
  const _$JoinedEventsEventTearOff();

  _Started started() {
    return const _Started();
  }

  _OnJoinedEventsPageEvent onJoinedEventsPageEvent() {
    return const _OnJoinedEventsPageEvent();
  }

  _UnjoinEvent unjoinEvent(dynamic data) {
    return _UnjoinEvent(
      data,
    );
  }

  _ViewSelectedEvent viewSelectedEvent(dynamic data) {
    return _ViewSelectedEvent(
      data,
    );
  }
}

/// @nodoc
const $JoinedEventsEvent = _$JoinedEventsEventTearOff();

/// @nodoc
mixin _$JoinedEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onJoinedEventsPageEvent,
    required TResult Function(dynamic data) unjoinEvent,
    required TResult Function(dynamic data) viewSelectedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onJoinedEventsPageEvent,
    TResult Function(dynamic data)? unjoinEvent,
    TResult Function(dynamic data)? viewSelectedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnJoinedEventsPageEvent value)
        onJoinedEventsPageEvent,
    required TResult Function(_UnjoinEvent value) unjoinEvent,
    required TResult Function(_ViewSelectedEvent value) viewSelectedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnJoinedEventsPageEvent value)? onJoinedEventsPageEvent,
    TResult Function(_UnjoinEvent value)? unjoinEvent,
    TResult Function(_ViewSelectedEvent value)? viewSelectedEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedEventsEventCopyWith<$Res> {
  factory $JoinedEventsEventCopyWith(
          JoinedEventsEvent value, $Res Function(JoinedEventsEvent) then) =
      _$JoinedEventsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinedEventsEventCopyWithImpl<$Res>
    implements $JoinedEventsEventCopyWith<$Res> {
  _$JoinedEventsEventCopyWithImpl(this._value, this._then);

  final JoinedEventsEvent _value;
  // ignore: unused_field
  final $Res Function(JoinedEventsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$JoinedEventsEventCopyWithImpl<$Res>
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
    return 'JoinedEventsEvent.started()';
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
    required TResult Function() onJoinedEventsPageEvent,
    required TResult Function(dynamic data) unjoinEvent,
    required TResult Function(dynamic data) viewSelectedEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onJoinedEventsPageEvent,
    TResult Function(dynamic data)? unjoinEvent,
    TResult Function(dynamic data)? viewSelectedEvent,
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
    required TResult Function(_OnJoinedEventsPageEvent value)
        onJoinedEventsPageEvent,
    required TResult Function(_UnjoinEvent value) unjoinEvent,
    required TResult Function(_ViewSelectedEvent value) viewSelectedEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnJoinedEventsPageEvent value)? onJoinedEventsPageEvent,
    TResult Function(_UnjoinEvent value)? unjoinEvent,
    TResult Function(_ViewSelectedEvent value)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements JoinedEventsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$OnJoinedEventsPageEventCopyWith<$Res> {
  factory _$OnJoinedEventsPageEventCopyWith(_OnJoinedEventsPageEvent value,
          $Res Function(_OnJoinedEventsPageEvent) then) =
      __$OnJoinedEventsPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnJoinedEventsPageEventCopyWithImpl<$Res>
    extends _$JoinedEventsEventCopyWithImpl<$Res>
    implements _$OnJoinedEventsPageEventCopyWith<$Res> {
  __$OnJoinedEventsPageEventCopyWithImpl(_OnJoinedEventsPageEvent _value,
      $Res Function(_OnJoinedEventsPageEvent) _then)
      : super(_value, (v) => _then(v as _OnJoinedEventsPageEvent));

  @override
  _OnJoinedEventsPageEvent get _value =>
      super._value as _OnJoinedEventsPageEvent;
}

/// @nodoc

class _$_OnJoinedEventsPageEvent implements _OnJoinedEventsPageEvent {
  const _$_OnJoinedEventsPageEvent();

  @override
  String toString() {
    return 'JoinedEventsEvent.onJoinedEventsPageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnJoinedEventsPageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onJoinedEventsPageEvent,
    required TResult Function(dynamic data) unjoinEvent,
    required TResult Function(dynamic data) viewSelectedEvent,
  }) {
    return onJoinedEventsPageEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onJoinedEventsPageEvent,
    TResult Function(dynamic data)? unjoinEvent,
    TResult Function(dynamic data)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (onJoinedEventsPageEvent != null) {
      return onJoinedEventsPageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnJoinedEventsPageEvent value)
        onJoinedEventsPageEvent,
    required TResult Function(_UnjoinEvent value) unjoinEvent,
    required TResult Function(_ViewSelectedEvent value) viewSelectedEvent,
  }) {
    return onJoinedEventsPageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnJoinedEventsPageEvent value)? onJoinedEventsPageEvent,
    TResult Function(_UnjoinEvent value)? unjoinEvent,
    TResult Function(_ViewSelectedEvent value)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (onJoinedEventsPageEvent != null) {
      return onJoinedEventsPageEvent(this);
    }
    return orElse();
  }
}

abstract class _OnJoinedEventsPageEvent implements JoinedEventsEvent {
  const factory _OnJoinedEventsPageEvent() = _$_OnJoinedEventsPageEvent;
}

/// @nodoc
abstract class _$UnjoinEventCopyWith<$Res> {
  factory _$UnjoinEventCopyWith(
          _UnjoinEvent value, $Res Function(_UnjoinEvent) then) =
      __$UnjoinEventCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$UnjoinEventCopyWithImpl<$Res>
    extends _$JoinedEventsEventCopyWithImpl<$Res>
    implements _$UnjoinEventCopyWith<$Res> {
  __$UnjoinEventCopyWithImpl(
      _UnjoinEvent _value, $Res Function(_UnjoinEvent) _then)
      : super(_value, (v) => _then(v as _UnjoinEvent));

  @override
  _UnjoinEvent get _value => super._value as _UnjoinEvent;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UnjoinEvent(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UnjoinEvent implements _UnjoinEvent {
  const _$_UnjoinEvent(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'JoinedEventsEvent.unjoinEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnjoinEvent &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$UnjoinEventCopyWith<_UnjoinEvent> get copyWith =>
      __$UnjoinEventCopyWithImpl<_UnjoinEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onJoinedEventsPageEvent,
    required TResult Function(dynamic data) unjoinEvent,
    required TResult Function(dynamic data) viewSelectedEvent,
  }) {
    return unjoinEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onJoinedEventsPageEvent,
    TResult Function(dynamic data)? unjoinEvent,
    TResult Function(dynamic data)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (unjoinEvent != null) {
      return unjoinEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnJoinedEventsPageEvent value)
        onJoinedEventsPageEvent,
    required TResult Function(_UnjoinEvent value) unjoinEvent,
    required TResult Function(_ViewSelectedEvent value) viewSelectedEvent,
  }) {
    return unjoinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnJoinedEventsPageEvent value)? onJoinedEventsPageEvent,
    TResult Function(_UnjoinEvent value)? unjoinEvent,
    TResult Function(_ViewSelectedEvent value)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (unjoinEvent != null) {
      return unjoinEvent(this);
    }
    return orElse();
  }
}

abstract class _UnjoinEvent implements JoinedEventsEvent {
  const factory _UnjoinEvent(dynamic data) = _$_UnjoinEvent;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnjoinEventCopyWith<_UnjoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewSelectedEventCopyWith<$Res> {
  factory _$ViewSelectedEventCopyWith(
          _ViewSelectedEvent value, $Res Function(_ViewSelectedEvent) then) =
      __$ViewSelectedEventCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$ViewSelectedEventCopyWithImpl<$Res>
    extends _$JoinedEventsEventCopyWithImpl<$Res>
    implements _$ViewSelectedEventCopyWith<$Res> {
  __$ViewSelectedEventCopyWithImpl(
      _ViewSelectedEvent _value, $Res Function(_ViewSelectedEvent) _then)
      : super(_value, (v) => _then(v as _ViewSelectedEvent));

  @override
  _ViewSelectedEvent get _value => super._value as _ViewSelectedEvent;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ViewSelectedEvent(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ViewSelectedEvent implements _ViewSelectedEvent {
  const _$_ViewSelectedEvent(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'JoinedEventsEvent.viewSelectedEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewSelectedEvent &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ViewSelectedEventCopyWith<_ViewSelectedEvent> get copyWith =>
      __$ViewSelectedEventCopyWithImpl<_ViewSelectedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onJoinedEventsPageEvent,
    required TResult Function(dynamic data) unjoinEvent,
    required TResult Function(dynamic data) viewSelectedEvent,
  }) {
    return viewSelectedEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onJoinedEventsPageEvent,
    TResult Function(dynamic data)? unjoinEvent,
    TResult Function(dynamic data)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (viewSelectedEvent != null) {
      return viewSelectedEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_OnJoinedEventsPageEvent value)
        onJoinedEventsPageEvent,
    required TResult Function(_UnjoinEvent value) unjoinEvent,
    required TResult Function(_ViewSelectedEvent value) viewSelectedEvent,
  }) {
    return viewSelectedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_OnJoinedEventsPageEvent value)? onJoinedEventsPageEvent,
    TResult Function(_UnjoinEvent value)? unjoinEvent,
    TResult Function(_ViewSelectedEvent value)? viewSelectedEvent,
    required TResult orElse(),
  }) {
    if (viewSelectedEvent != null) {
      return viewSelectedEvent(this);
    }
    return orElse();
  }
}

abstract class _ViewSelectedEvent implements JoinedEventsEvent {
  const factory _ViewSelectedEvent(dynamic data) = _$_ViewSelectedEvent;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewSelectedEventCopyWith<_ViewSelectedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$JoinedEventsStateTearOff {
  const _$JoinedEventsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowJoinedEvents showJoinedEvents(dynamic data) {
    return _ShowJoinedEvents(
      data,
    );
  }

  _OnJoinedEventsPageState onJoinedEventsPageState() {
    return const _OnJoinedEventsPageState();
  }

  _UnjoinState unjoinState(dynamic data) {
    return _UnjoinState(
      data,
    );
  }

  _ViewSelectedEventState viewSelectedEventState(dynamic data) {
    return _ViewSelectedEventState(
      data,
    );
  }
}

/// @nodoc
const $JoinedEventsState = _$JoinedEventsStateTearOff();

/// @nodoc
mixin _$JoinedEventsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showJoinedEvents,
    required TResult Function() onJoinedEventsPageState,
    required TResult Function(dynamic data) unjoinState,
    required TResult Function(dynamic data) viewSelectedEventState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showJoinedEvents,
    TResult Function()? onJoinedEventsPageState,
    TResult Function(dynamic data)? unjoinState,
    TResult Function(dynamic data)? viewSelectedEventState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowJoinedEvents value) showJoinedEvents,
    required TResult Function(_OnJoinedEventsPageState value)
        onJoinedEventsPageState,
    required TResult Function(_UnjoinState value) unjoinState,
    required TResult Function(_ViewSelectedEventState value)
        viewSelectedEventState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowJoinedEvents value)? showJoinedEvents,
    TResult Function(_OnJoinedEventsPageState value)? onJoinedEventsPageState,
    TResult Function(_UnjoinState value)? unjoinState,
    TResult Function(_ViewSelectedEventState value)? viewSelectedEventState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinedEventsStateCopyWith<$Res> {
  factory $JoinedEventsStateCopyWith(
          JoinedEventsState value, $Res Function(JoinedEventsState) then) =
      _$JoinedEventsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinedEventsStateCopyWithImpl<$Res>
    implements $JoinedEventsStateCopyWith<$Res> {
  _$JoinedEventsStateCopyWithImpl(this._value, this._then);

  final JoinedEventsState _value;
  // ignore: unused_field
  final $Res Function(JoinedEventsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$JoinedEventsStateCopyWithImpl<$Res>
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
    return 'JoinedEventsState.initial()';
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
    required TResult Function(dynamic data) showJoinedEvents,
    required TResult Function() onJoinedEventsPageState,
    required TResult Function(dynamic data) unjoinState,
    required TResult Function(dynamic data) viewSelectedEventState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showJoinedEvents,
    TResult Function()? onJoinedEventsPageState,
    TResult Function(dynamic data)? unjoinState,
    TResult Function(dynamic data)? viewSelectedEventState,
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
    required TResult Function(_ShowJoinedEvents value) showJoinedEvents,
    required TResult Function(_OnJoinedEventsPageState value)
        onJoinedEventsPageState,
    required TResult Function(_UnjoinState value) unjoinState,
    required TResult Function(_ViewSelectedEventState value)
        viewSelectedEventState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowJoinedEvents value)? showJoinedEvents,
    TResult Function(_OnJoinedEventsPageState value)? onJoinedEventsPageState,
    TResult Function(_UnjoinState value)? unjoinState,
    TResult Function(_ViewSelectedEventState value)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements JoinedEventsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowJoinedEventsCopyWith<$Res> {
  factory _$ShowJoinedEventsCopyWith(
          _ShowJoinedEvents value, $Res Function(_ShowJoinedEvents) then) =
      __$ShowJoinedEventsCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$ShowJoinedEventsCopyWithImpl<$Res>
    extends _$JoinedEventsStateCopyWithImpl<$Res>
    implements _$ShowJoinedEventsCopyWith<$Res> {
  __$ShowJoinedEventsCopyWithImpl(
      _ShowJoinedEvents _value, $Res Function(_ShowJoinedEvents) _then)
      : super(_value, (v) => _then(v as _ShowJoinedEvents));

  @override
  _ShowJoinedEvents get _value => super._value as _ShowJoinedEvents;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ShowJoinedEvents(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ShowJoinedEvents implements _ShowJoinedEvents {
  const _$_ShowJoinedEvents(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'JoinedEventsState.showJoinedEvents(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowJoinedEvents &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ShowJoinedEventsCopyWith<_ShowJoinedEvents> get copyWith =>
      __$ShowJoinedEventsCopyWithImpl<_ShowJoinedEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showJoinedEvents,
    required TResult Function() onJoinedEventsPageState,
    required TResult Function(dynamic data) unjoinState,
    required TResult Function(dynamic data) viewSelectedEventState,
  }) {
    return showJoinedEvents(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showJoinedEvents,
    TResult Function()? onJoinedEventsPageState,
    TResult Function(dynamic data)? unjoinState,
    TResult Function(dynamic data)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (showJoinedEvents != null) {
      return showJoinedEvents(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowJoinedEvents value) showJoinedEvents,
    required TResult Function(_OnJoinedEventsPageState value)
        onJoinedEventsPageState,
    required TResult Function(_UnjoinState value) unjoinState,
    required TResult Function(_ViewSelectedEventState value)
        viewSelectedEventState,
  }) {
    return showJoinedEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowJoinedEvents value)? showJoinedEvents,
    TResult Function(_OnJoinedEventsPageState value)? onJoinedEventsPageState,
    TResult Function(_UnjoinState value)? unjoinState,
    TResult Function(_ViewSelectedEventState value)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (showJoinedEvents != null) {
      return showJoinedEvents(this);
    }
    return orElse();
  }
}

abstract class _ShowJoinedEvents implements JoinedEventsState {
  const factory _ShowJoinedEvents(dynamic data) = _$_ShowJoinedEvents;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowJoinedEventsCopyWith<_ShowJoinedEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OnJoinedEventsPageStateCopyWith<$Res> {
  factory _$OnJoinedEventsPageStateCopyWith(_OnJoinedEventsPageState value,
          $Res Function(_OnJoinedEventsPageState) then) =
      __$OnJoinedEventsPageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnJoinedEventsPageStateCopyWithImpl<$Res>
    extends _$JoinedEventsStateCopyWithImpl<$Res>
    implements _$OnJoinedEventsPageStateCopyWith<$Res> {
  __$OnJoinedEventsPageStateCopyWithImpl(_OnJoinedEventsPageState _value,
      $Res Function(_OnJoinedEventsPageState) _then)
      : super(_value, (v) => _then(v as _OnJoinedEventsPageState));

  @override
  _OnJoinedEventsPageState get _value =>
      super._value as _OnJoinedEventsPageState;
}

/// @nodoc

class _$_OnJoinedEventsPageState implements _OnJoinedEventsPageState {
  const _$_OnJoinedEventsPageState();

  @override
  String toString() {
    return 'JoinedEventsState.onJoinedEventsPageState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnJoinedEventsPageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showJoinedEvents,
    required TResult Function() onJoinedEventsPageState,
    required TResult Function(dynamic data) unjoinState,
    required TResult Function(dynamic data) viewSelectedEventState,
  }) {
    return onJoinedEventsPageState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showJoinedEvents,
    TResult Function()? onJoinedEventsPageState,
    TResult Function(dynamic data)? unjoinState,
    TResult Function(dynamic data)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (onJoinedEventsPageState != null) {
      return onJoinedEventsPageState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowJoinedEvents value) showJoinedEvents,
    required TResult Function(_OnJoinedEventsPageState value)
        onJoinedEventsPageState,
    required TResult Function(_UnjoinState value) unjoinState,
    required TResult Function(_ViewSelectedEventState value)
        viewSelectedEventState,
  }) {
    return onJoinedEventsPageState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowJoinedEvents value)? showJoinedEvents,
    TResult Function(_OnJoinedEventsPageState value)? onJoinedEventsPageState,
    TResult Function(_UnjoinState value)? unjoinState,
    TResult Function(_ViewSelectedEventState value)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (onJoinedEventsPageState != null) {
      return onJoinedEventsPageState(this);
    }
    return orElse();
  }
}

abstract class _OnJoinedEventsPageState implements JoinedEventsState {
  const factory _OnJoinedEventsPageState() = _$_OnJoinedEventsPageState;
}

/// @nodoc
abstract class _$UnjoinStateCopyWith<$Res> {
  factory _$UnjoinStateCopyWith(
          _UnjoinState value, $Res Function(_UnjoinState) then) =
      __$UnjoinStateCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$UnjoinStateCopyWithImpl<$Res>
    extends _$JoinedEventsStateCopyWithImpl<$Res>
    implements _$UnjoinStateCopyWith<$Res> {
  __$UnjoinStateCopyWithImpl(
      _UnjoinState _value, $Res Function(_UnjoinState) _then)
      : super(_value, (v) => _then(v as _UnjoinState));

  @override
  _UnjoinState get _value => super._value as _UnjoinState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_UnjoinState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UnjoinState implements _UnjoinState {
  const _$_UnjoinState(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'JoinedEventsState.unjoinState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnjoinState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$UnjoinStateCopyWith<_UnjoinState> get copyWith =>
      __$UnjoinStateCopyWithImpl<_UnjoinState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showJoinedEvents,
    required TResult Function() onJoinedEventsPageState,
    required TResult Function(dynamic data) unjoinState,
    required TResult Function(dynamic data) viewSelectedEventState,
  }) {
    return unjoinState(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showJoinedEvents,
    TResult Function()? onJoinedEventsPageState,
    TResult Function(dynamic data)? unjoinState,
    TResult Function(dynamic data)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (unjoinState != null) {
      return unjoinState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowJoinedEvents value) showJoinedEvents,
    required TResult Function(_OnJoinedEventsPageState value)
        onJoinedEventsPageState,
    required TResult Function(_UnjoinState value) unjoinState,
    required TResult Function(_ViewSelectedEventState value)
        viewSelectedEventState,
  }) {
    return unjoinState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowJoinedEvents value)? showJoinedEvents,
    TResult Function(_OnJoinedEventsPageState value)? onJoinedEventsPageState,
    TResult Function(_UnjoinState value)? unjoinState,
    TResult Function(_ViewSelectedEventState value)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (unjoinState != null) {
      return unjoinState(this);
    }
    return orElse();
  }
}

abstract class _UnjoinState implements JoinedEventsState {
  const factory _UnjoinState(dynamic data) = _$_UnjoinState;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UnjoinStateCopyWith<_UnjoinState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ViewSelectedEventStateCopyWith<$Res> {
  factory _$ViewSelectedEventStateCopyWith(_ViewSelectedEventState value,
          $Res Function(_ViewSelectedEventState) then) =
      __$ViewSelectedEventStateCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$ViewSelectedEventStateCopyWithImpl<$Res>
    extends _$JoinedEventsStateCopyWithImpl<$Res>
    implements _$ViewSelectedEventStateCopyWith<$Res> {
  __$ViewSelectedEventStateCopyWithImpl(_ViewSelectedEventState _value,
      $Res Function(_ViewSelectedEventState) _then)
      : super(_value, (v) => _then(v as _ViewSelectedEventState));

  @override
  _ViewSelectedEventState get _value => super._value as _ViewSelectedEventState;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ViewSelectedEventState(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ViewSelectedEventState implements _ViewSelectedEventState {
  const _$_ViewSelectedEventState(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'JoinedEventsState.viewSelectedEventState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ViewSelectedEventState &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ViewSelectedEventStateCopyWith<_ViewSelectedEventState> get copyWith =>
      __$ViewSelectedEventStateCopyWithImpl<_ViewSelectedEventState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showJoinedEvents,
    required TResult Function() onJoinedEventsPageState,
    required TResult Function(dynamic data) unjoinState,
    required TResult Function(dynamic data) viewSelectedEventState,
  }) {
    return viewSelectedEventState(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showJoinedEvents,
    TResult Function()? onJoinedEventsPageState,
    TResult Function(dynamic data)? unjoinState,
    TResult Function(dynamic data)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (viewSelectedEventState != null) {
      return viewSelectedEventState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowJoinedEvents value) showJoinedEvents,
    required TResult Function(_OnJoinedEventsPageState value)
        onJoinedEventsPageState,
    required TResult Function(_UnjoinState value) unjoinState,
    required TResult Function(_ViewSelectedEventState value)
        viewSelectedEventState,
  }) {
    return viewSelectedEventState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowJoinedEvents value)? showJoinedEvents,
    TResult Function(_OnJoinedEventsPageState value)? onJoinedEventsPageState,
    TResult Function(_UnjoinState value)? unjoinState,
    TResult Function(_ViewSelectedEventState value)? viewSelectedEventState,
    required TResult orElse(),
  }) {
    if (viewSelectedEventState != null) {
      return viewSelectedEventState(this);
    }
    return orElse();
  }
}

abstract class _ViewSelectedEventState implements JoinedEventsState {
  const factory _ViewSelectedEventState(dynamic data) =
      _$_ViewSelectedEventState;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ViewSelectedEventStateCopyWith<_ViewSelectedEventState> get copyWith =>
      throw _privateConstructorUsedError;
}
