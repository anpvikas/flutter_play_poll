// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  _OnHomePageEvent onHomePageEvent() {
    return const _OnHomePageEvent();
  }

  _CreateEventClicked createEventClicked() {
    return const _CreateEventClicked();
  }

  _OnCreateEventPage onCreateEventPage() {
    return const _OnCreateEventPage();
  }

  _SearchEventClicked searchEventClicked() {
    return const _SearchEventClicked();
  }

  _MyEventClicked myEventClicked() {
    return const _MyEventClicked();
  }

  _JoinedEventClicked joinedEventClicked() {
    return const _JoinedEventClicked();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$OnHomePageEventCopyWith<$Res> {
  factory _$OnHomePageEventCopyWith(
          _OnHomePageEvent value, $Res Function(_OnHomePageEvent) then) =
      __$OnHomePageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnHomePageEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$OnHomePageEventCopyWith<$Res> {
  __$OnHomePageEventCopyWithImpl(
      _OnHomePageEvent _value, $Res Function(_OnHomePageEvent) _then)
      : super(_value, (v) => _then(v as _OnHomePageEvent));

  @override
  _OnHomePageEvent get _value => super._value as _OnHomePageEvent;
}

/// @nodoc

class _$_OnHomePageEvent implements _OnHomePageEvent {
  const _$_OnHomePageEvent();

  @override
  String toString() {
    return 'HomeEvent.onHomePageEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnHomePageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) {
    return onHomePageEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (onHomePageEvent != null) {
      return onHomePageEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) {
    return onHomePageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (onHomePageEvent != null) {
      return onHomePageEvent(this);
    }
    return orElse();
  }
}

abstract class _OnHomePageEvent implements HomeEvent {
  const factory _OnHomePageEvent() = _$_OnHomePageEvent;
}

/// @nodoc
abstract class _$CreateEventClickedCopyWith<$Res> {
  factory _$CreateEventClickedCopyWith(
          _CreateEventClicked value, $Res Function(_CreateEventClicked) then) =
      __$CreateEventClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateEventClickedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$CreateEventClickedCopyWith<$Res> {
  __$CreateEventClickedCopyWithImpl(
      _CreateEventClicked _value, $Res Function(_CreateEventClicked) _then)
      : super(_value, (v) => _then(v as _CreateEventClicked));

  @override
  _CreateEventClicked get _value => super._value as _CreateEventClicked;
}

/// @nodoc

class _$_CreateEventClicked implements _CreateEventClicked {
  const _$_CreateEventClicked();

  @override
  String toString() {
    return 'HomeEvent.createEventClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreateEventClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) {
    return createEventClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (createEventClicked != null) {
      return createEventClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) {
    return createEventClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (createEventClicked != null) {
      return createEventClicked(this);
    }
    return orElse();
  }
}

abstract class _CreateEventClicked implements HomeEvent {
  const factory _CreateEventClicked() = _$_CreateEventClicked;
}

/// @nodoc
abstract class _$OnCreateEventPageCopyWith<$Res> {
  factory _$OnCreateEventPageCopyWith(
          _OnCreateEventPage value, $Res Function(_OnCreateEventPage) then) =
      __$OnCreateEventPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnCreateEventPageCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$OnCreateEventPageCopyWith<$Res> {
  __$OnCreateEventPageCopyWithImpl(
      _OnCreateEventPage _value, $Res Function(_OnCreateEventPage) _then)
      : super(_value, (v) => _then(v as _OnCreateEventPage));

  @override
  _OnCreateEventPage get _value => super._value as _OnCreateEventPage;
}

/// @nodoc

class _$_OnCreateEventPage implements _OnCreateEventPage {
  const _$_OnCreateEventPage();

  @override
  String toString() {
    return 'HomeEvent.onCreateEventPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnCreateEventPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) {
    return onCreateEventPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (onCreateEventPage != null) {
      return onCreateEventPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) {
    return onCreateEventPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (onCreateEventPage != null) {
      return onCreateEventPage(this);
    }
    return orElse();
  }
}

abstract class _OnCreateEventPage implements HomeEvent {
  const factory _OnCreateEventPage() = _$_OnCreateEventPage;
}

/// @nodoc
abstract class _$SearchEventClickedCopyWith<$Res> {
  factory _$SearchEventClickedCopyWith(
          _SearchEventClicked value, $Res Function(_SearchEventClicked) then) =
      __$SearchEventClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchEventClickedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$SearchEventClickedCopyWith<$Res> {
  __$SearchEventClickedCopyWithImpl(
      _SearchEventClicked _value, $Res Function(_SearchEventClicked) _then)
      : super(_value, (v) => _then(v as _SearchEventClicked));

  @override
  _SearchEventClicked get _value => super._value as _SearchEventClicked;
}

/// @nodoc

class _$_SearchEventClicked implements _SearchEventClicked {
  const _$_SearchEventClicked();

  @override
  String toString() {
    return 'HomeEvent.searchEventClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchEventClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) {
    return searchEventClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (searchEventClicked != null) {
      return searchEventClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) {
    return searchEventClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (searchEventClicked != null) {
      return searchEventClicked(this);
    }
    return orElse();
  }
}

abstract class _SearchEventClicked implements HomeEvent {
  const factory _SearchEventClicked() = _$_SearchEventClicked;
}

/// @nodoc
abstract class _$MyEventClickedCopyWith<$Res> {
  factory _$MyEventClickedCopyWith(
          _MyEventClicked value, $Res Function(_MyEventClicked) then) =
      __$MyEventClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$MyEventClickedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$MyEventClickedCopyWith<$Res> {
  __$MyEventClickedCopyWithImpl(
      _MyEventClicked _value, $Res Function(_MyEventClicked) _then)
      : super(_value, (v) => _then(v as _MyEventClicked));

  @override
  _MyEventClicked get _value => super._value as _MyEventClicked;
}

/// @nodoc

class _$_MyEventClicked implements _MyEventClicked {
  const _$_MyEventClicked();

  @override
  String toString() {
    return 'HomeEvent.myEventClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _MyEventClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) {
    return myEventClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (myEventClicked != null) {
      return myEventClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) {
    return myEventClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (myEventClicked != null) {
      return myEventClicked(this);
    }
    return orElse();
  }
}

abstract class _MyEventClicked implements HomeEvent {
  const factory _MyEventClicked() = _$_MyEventClicked;
}

/// @nodoc
abstract class _$JoinedEventClickedCopyWith<$Res> {
  factory _$JoinedEventClickedCopyWith(
          _JoinedEventClicked value, $Res Function(_JoinedEventClicked) then) =
      __$JoinedEventClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$JoinedEventClickedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$JoinedEventClickedCopyWith<$Res> {
  __$JoinedEventClickedCopyWithImpl(
      _JoinedEventClicked _value, $Res Function(_JoinedEventClicked) _then)
      : super(_value, (v) => _then(v as _JoinedEventClicked));

  @override
  _JoinedEventClicked get _value => super._value as _JoinedEventClicked;
}

/// @nodoc

class _$_JoinedEventClicked implements _JoinedEventClicked {
  const _$_JoinedEventClicked();

  @override
  String toString() {
    return 'HomeEvent.joinedEventClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _JoinedEventClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageEvent,
    required TResult Function() createEventClicked,
    required TResult Function() onCreateEventPage,
    required TResult Function() searchEventClicked,
    required TResult Function() myEventClicked,
    required TResult Function() joinedEventClicked,
  }) {
    return joinedEventClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageEvent,
    TResult Function()? createEventClicked,
    TResult Function()? onCreateEventPage,
    TResult Function()? searchEventClicked,
    TResult Function()? myEventClicked,
    TResult Function()? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (joinedEventClicked != null) {
      return joinedEventClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageEvent value) onHomePageEvent,
    required TResult Function(_CreateEventClicked value) createEventClicked,
    required TResult Function(_OnCreateEventPage value) onCreateEventPage,
    required TResult Function(_SearchEventClicked value) searchEventClicked,
    required TResult Function(_MyEventClicked value) myEventClicked,
    required TResult Function(_JoinedEventClicked value) joinedEventClicked,
  }) {
    return joinedEventClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageEvent value)? onHomePageEvent,
    TResult Function(_CreateEventClicked value)? createEventClicked,
    TResult Function(_OnCreateEventPage value)? onCreateEventPage,
    TResult Function(_SearchEventClicked value)? searchEventClicked,
    TResult Function(_MyEventClicked value)? myEventClicked,
    TResult Function(_JoinedEventClicked value)? joinedEventClicked,
    required TResult orElse(),
  }) {
    if (joinedEventClicked != null) {
      return joinedEventClicked(this);
    }
    return orElse();
  }
}

abstract class _JoinedEventClicked implements HomeEvent {
  const factory _JoinedEventClicked() = _$_JoinedEventClicked;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _OnHomePageState onHomePageState() {
    return const _OnHomePageState();
  }

  _NavigatedToCreateEventPage navigatedToCreateEventPage() {
    return const _NavigatedToCreateEventPage();
  }

  _onCreateEventPage onCreateEventPage() {
    return const _onCreateEventPage();
  }

  _NavigatedToSearchEventPage navigatedToSearchEventPage() {
    return const _NavigatedToSearchEventPage();
  }

  _NavigatedToMyEventPage navigatedToMyEventPage() {
    return const _NavigatedToMyEventPage();
  }

  _NavigatedToJoinedEventPage navigatedToJoinedEventPage() {
    return const _NavigatedToJoinedEventPage();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$OnHomePageStateCopyWith<$Res> {
  factory _$OnHomePageStateCopyWith(
          _OnHomePageState value, $Res Function(_OnHomePageState) then) =
      __$OnHomePageStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnHomePageStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$OnHomePageStateCopyWith<$Res> {
  __$OnHomePageStateCopyWithImpl(
      _OnHomePageState _value, $Res Function(_OnHomePageState) _then)
      : super(_value, (v) => _then(v as _OnHomePageState));

  @override
  _OnHomePageState get _value => super._value as _OnHomePageState;
}

/// @nodoc

class _$_OnHomePageState implements _OnHomePageState {
  const _$_OnHomePageState();

  @override
  String toString() {
    return 'HomeState.onHomePageState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnHomePageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) {
    return onHomePageState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (onHomePageState != null) {
      return onHomePageState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) {
    return onHomePageState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (onHomePageState != null) {
      return onHomePageState(this);
    }
    return orElse();
  }
}

abstract class _OnHomePageState implements HomeState {
  const factory _OnHomePageState() = _$_OnHomePageState;
}

/// @nodoc
abstract class _$NavigatedToCreateEventPageCopyWith<$Res> {
  factory _$NavigatedToCreateEventPageCopyWith(
          _NavigatedToCreateEventPage value,
          $Res Function(_NavigatedToCreateEventPage) then) =
      __$NavigatedToCreateEventPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavigatedToCreateEventPageCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$NavigatedToCreateEventPageCopyWith<$Res> {
  __$NavigatedToCreateEventPageCopyWithImpl(_NavigatedToCreateEventPage _value,
      $Res Function(_NavigatedToCreateEventPage) _then)
      : super(_value, (v) => _then(v as _NavigatedToCreateEventPage));

  @override
  _NavigatedToCreateEventPage get _value =>
      super._value as _NavigatedToCreateEventPage;
}

/// @nodoc

class _$_NavigatedToCreateEventPage implements _NavigatedToCreateEventPage {
  const _$_NavigatedToCreateEventPage();

  @override
  String toString() {
    return 'HomeState.navigatedToCreateEventPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavigatedToCreateEventPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) {
    return navigatedToCreateEventPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToCreateEventPage != null) {
      return navigatedToCreateEventPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) {
    return navigatedToCreateEventPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToCreateEventPage != null) {
      return navigatedToCreateEventPage(this);
    }
    return orElse();
  }
}

abstract class _NavigatedToCreateEventPage implements HomeState {
  const factory _NavigatedToCreateEventPage() = _$_NavigatedToCreateEventPage;
}

/// @nodoc
abstract class _$onCreateEventPageCopyWith<$Res> {
  factory _$onCreateEventPageCopyWith(
          _onCreateEventPage value, $Res Function(_onCreateEventPage) then) =
      __$onCreateEventPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$onCreateEventPageCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$onCreateEventPageCopyWith<$Res> {
  __$onCreateEventPageCopyWithImpl(
      _onCreateEventPage _value, $Res Function(_onCreateEventPage) _then)
      : super(_value, (v) => _then(v as _onCreateEventPage));

  @override
  _onCreateEventPage get _value => super._value as _onCreateEventPage;
}

/// @nodoc

class _$_onCreateEventPage implements _onCreateEventPage {
  const _$_onCreateEventPage();

  @override
  String toString() {
    return 'HomeState.onCreateEventPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _onCreateEventPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) {
    return onCreateEventPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (onCreateEventPage != null) {
      return onCreateEventPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) {
    return onCreateEventPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (onCreateEventPage != null) {
      return onCreateEventPage(this);
    }
    return orElse();
  }
}

abstract class _onCreateEventPage implements HomeState {
  const factory _onCreateEventPage() = _$_onCreateEventPage;
}

/// @nodoc
abstract class _$NavigatedToSearchEventPageCopyWith<$Res> {
  factory _$NavigatedToSearchEventPageCopyWith(
          _NavigatedToSearchEventPage value,
          $Res Function(_NavigatedToSearchEventPage) then) =
      __$NavigatedToSearchEventPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavigatedToSearchEventPageCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$NavigatedToSearchEventPageCopyWith<$Res> {
  __$NavigatedToSearchEventPageCopyWithImpl(_NavigatedToSearchEventPage _value,
      $Res Function(_NavigatedToSearchEventPage) _then)
      : super(_value, (v) => _then(v as _NavigatedToSearchEventPage));

  @override
  _NavigatedToSearchEventPage get _value =>
      super._value as _NavigatedToSearchEventPage;
}

/// @nodoc

class _$_NavigatedToSearchEventPage implements _NavigatedToSearchEventPage {
  const _$_NavigatedToSearchEventPage();

  @override
  String toString() {
    return 'HomeState.navigatedToSearchEventPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavigatedToSearchEventPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) {
    return navigatedToSearchEventPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToSearchEventPage != null) {
      return navigatedToSearchEventPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) {
    return navigatedToSearchEventPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToSearchEventPage != null) {
      return navigatedToSearchEventPage(this);
    }
    return orElse();
  }
}

abstract class _NavigatedToSearchEventPage implements HomeState {
  const factory _NavigatedToSearchEventPage() = _$_NavigatedToSearchEventPage;
}

/// @nodoc
abstract class _$NavigatedToMyEventPageCopyWith<$Res> {
  factory _$NavigatedToMyEventPageCopyWith(_NavigatedToMyEventPage value,
          $Res Function(_NavigatedToMyEventPage) then) =
      __$NavigatedToMyEventPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavigatedToMyEventPageCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$NavigatedToMyEventPageCopyWith<$Res> {
  __$NavigatedToMyEventPageCopyWithImpl(_NavigatedToMyEventPage _value,
      $Res Function(_NavigatedToMyEventPage) _then)
      : super(_value, (v) => _then(v as _NavigatedToMyEventPage));

  @override
  _NavigatedToMyEventPage get _value => super._value as _NavigatedToMyEventPage;
}

/// @nodoc

class _$_NavigatedToMyEventPage implements _NavigatedToMyEventPage {
  const _$_NavigatedToMyEventPage();

  @override
  String toString() {
    return 'HomeState.navigatedToMyEventPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavigatedToMyEventPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) {
    return navigatedToMyEventPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToMyEventPage != null) {
      return navigatedToMyEventPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) {
    return navigatedToMyEventPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToMyEventPage != null) {
      return navigatedToMyEventPage(this);
    }
    return orElse();
  }
}

abstract class _NavigatedToMyEventPage implements HomeState {
  const factory _NavigatedToMyEventPage() = _$_NavigatedToMyEventPage;
}

/// @nodoc
abstract class _$NavigatedToJoinedEventPageCopyWith<$Res> {
  factory _$NavigatedToJoinedEventPageCopyWith(
          _NavigatedToJoinedEventPage value,
          $Res Function(_NavigatedToJoinedEventPage) then) =
      __$NavigatedToJoinedEventPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$NavigatedToJoinedEventPageCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$NavigatedToJoinedEventPageCopyWith<$Res> {
  __$NavigatedToJoinedEventPageCopyWithImpl(_NavigatedToJoinedEventPage _value,
      $Res Function(_NavigatedToJoinedEventPage) _then)
      : super(_value, (v) => _then(v as _NavigatedToJoinedEventPage));

  @override
  _NavigatedToJoinedEventPage get _value =>
      super._value as _NavigatedToJoinedEventPage;
}

/// @nodoc

class _$_NavigatedToJoinedEventPage implements _NavigatedToJoinedEventPage {
  const _$_NavigatedToJoinedEventPage();

  @override
  String toString() {
    return 'HomeState.navigatedToJoinedEventPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NavigatedToJoinedEventPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onHomePageState,
    required TResult Function() navigatedToCreateEventPage,
    required TResult Function() onCreateEventPage,
    required TResult Function() navigatedToSearchEventPage,
    required TResult Function() navigatedToMyEventPage,
    required TResult Function() navigatedToJoinedEventPage,
  }) {
    return navigatedToJoinedEventPage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onHomePageState,
    TResult Function()? navigatedToCreateEventPage,
    TResult Function()? onCreateEventPage,
    TResult Function()? navigatedToSearchEventPage,
    TResult Function()? navigatedToMyEventPage,
    TResult Function()? navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToJoinedEventPage != null) {
      return navigatedToJoinedEventPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnHomePageState value) onHomePageState,
    required TResult Function(_NavigatedToCreateEventPage value)
        navigatedToCreateEventPage,
    required TResult Function(_onCreateEventPage value) onCreateEventPage,
    required TResult Function(_NavigatedToSearchEventPage value)
        navigatedToSearchEventPage,
    required TResult Function(_NavigatedToMyEventPage value)
        navigatedToMyEventPage,
    required TResult Function(_NavigatedToJoinedEventPage value)
        navigatedToJoinedEventPage,
  }) {
    return navigatedToJoinedEventPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnHomePageState value)? onHomePageState,
    TResult Function(_NavigatedToCreateEventPage value)?
        navigatedToCreateEventPage,
    TResult Function(_onCreateEventPage value)? onCreateEventPage,
    TResult Function(_NavigatedToSearchEventPage value)?
        navigatedToSearchEventPage,
    TResult Function(_NavigatedToMyEventPage value)? navigatedToMyEventPage,
    TResult Function(_NavigatedToJoinedEventPage value)?
        navigatedToJoinedEventPage,
    required TResult orElse(),
  }) {
    if (navigatedToJoinedEventPage != null) {
      return navigatedToJoinedEventPage(this);
    }
    return orElse();
  }
}

abstract class _NavigatedToJoinedEventPage implements HomeState {
  const factory _NavigatedToJoinedEventPage() = _$_NavigatedToJoinedEventPage;
}
