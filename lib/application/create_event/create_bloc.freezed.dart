// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'create_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateEventTearOff {
  const _$CreateEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ValidateEventName validateEventName(Name name) {
    return _ValidateEventName(
      name,
    );
  }

  _ValidateEventLocation validateEventLocation(Location location) {
    return _ValidateEventLocation(
      location,
    );
  }

  _Create create() {
    return const _Create();
  }

  _CancelButtonClicked cancelButtonClicked() {
    return const _CancelButtonClicked();
  }

  _OnHomePage onHomePage() {
    return const _OnHomePage();
  }
}

/// @nodoc
const $CreateEvent = _$CreateEventTearOff();

/// @nodoc
mixin _$CreateEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateEventCopyWith<$Res> {
  factory $CreateEventCopyWith(
          CreateEvent value, $Res Function(CreateEvent) then) =
      _$CreateEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateEventCopyWithImpl<$Res> implements $CreateEventCopyWith<$Res> {
  _$CreateEventCopyWithImpl(this._value, this._then);

  final CreateEvent _value;
  // ignore: unused_field
  final $Res Function(CreateEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$CreateEventCopyWithImpl<$Res>
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
    return 'CreateEvent.started()';
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
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
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
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ValidateEventNameCopyWith<$Res> {
  factory _$ValidateEventNameCopyWith(
          _ValidateEventName value, $Res Function(_ValidateEventName) then) =
      __$ValidateEventNameCopyWithImpl<$Res>;
  $Res call({Name name});
}

/// @nodoc
class __$ValidateEventNameCopyWithImpl<$Res>
    extends _$CreateEventCopyWithImpl<$Res>
    implements _$ValidateEventNameCopyWith<$Res> {
  __$ValidateEventNameCopyWithImpl(
      _ValidateEventName _value, $Res Function(_ValidateEventName) _then)
      : super(_value, (v) => _then(v as _ValidateEventName));

  @override
  _ValidateEventName get _value => super._value as _ValidateEventName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_ValidateEventName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
    ));
  }
}

/// @nodoc

class _$_ValidateEventName implements _ValidateEventName {
  const _$_ValidateEventName(this.name);

  @override
  final Name name;

  @override
  String toString() {
    return 'CreateEvent.validateEventName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidateEventName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ValidateEventNameCopyWith<_ValidateEventName> get copyWith =>
      __$ValidateEventNameCopyWithImpl<_ValidateEventName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) {
    return validateEventName(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
    required TResult orElse(),
  }) {
    if (validateEventName != null) {
      return validateEventName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) {
    return validateEventName(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) {
    if (validateEventName != null) {
      return validateEventName(this);
    }
    return orElse();
  }
}

abstract class _ValidateEventName implements CreateEvent {
  const factory _ValidateEventName(Name name) = _$_ValidateEventName;

  Name get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValidateEventNameCopyWith<_ValidateEventName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ValidateEventLocationCopyWith<$Res> {
  factory _$ValidateEventLocationCopyWith(_ValidateEventLocation value,
          $Res Function(_ValidateEventLocation) then) =
      __$ValidateEventLocationCopyWithImpl<$Res>;
  $Res call({Location location});
}

/// @nodoc
class __$ValidateEventLocationCopyWithImpl<$Res>
    extends _$CreateEventCopyWithImpl<$Res>
    implements _$ValidateEventLocationCopyWith<$Res> {
  __$ValidateEventLocationCopyWithImpl(_ValidateEventLocation _value,
      $Res Function(_ValidateEventLocation) _then)
      : super(_value, (v) => _then(v as _ValidateEventLocation));

  @override
  _ValidateEventLocation get _value => super._value as _ValidateEventLocation;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_ValidateEventLocation(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc

class _$_ValidateEventLocation implements _ValidateEventLocation {
  const _$_ValidateEventLocation(this.location);

  @override
  final Location location;

  @override
  String toString() {
    return 'CreateEvent.validateEventLocation(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ValidateEventLocation &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(location);

  @JsonKey(ignore: true)
  @override
  _$ValidateEventLocationCopyWith<_ValidateEventLocation> get copyWith =>
      __$ValidateEventLocationCopyWithImpl<_ValidateEventLocation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) {
    return validateEventLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
    required TResult orElse(),
  }) {
    if (validateEventLocation != null) {
      return validateEventLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) {
    return validateEventLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) {
    if (validateEventLocation != null) {
      return validateEventLocation(this);
    }
    return orElse();
  }
}

abstract class _ValidateEventLocation implements CreateEvent {
  const factory _ValidateEventLocation(Location location) =
      _$_ValidateEventLocation;

  Location get location => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ValidateEventLocationCopyWith<_ValidateEventLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CreateCopyWith<$Res> {
  factory _$CreateCopyWith(_Create value, $Res Function(_Create) then) =
      __$CreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CreateCopyWithImpl<$Res> extends _$CreateEventCopyWithImpl<$Res>
    implements _$CreateCopyWith<$Res> {
  __$CreateCopyWithImpl(_Create _value, $Res Function(_Create) _then)
      : super(_value, (v) => _then(v as _Create));

  @override
  _Create get _value => super._value as _Create;
}

/// @nodoc

class _$_Create implements _Create {
  const _$_Create();

  @override
  String toString() {
    return 'CreateEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Create);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements CreateEvent {
  const factory _Create() = _$_Create;
}

/// @nodoc
abstract class _$CancelButtonClickedCopyWith<$Res> {
  factory _$CancelButtonClickedCopyWith(_CancelButtonClicked value,
          $Res Function(_CancelButtonClicked) then) =
      __$CancelButtonClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelButtonClickedCopyWithImpl<$Res>
    extends _$CreateEventCopyWithImpl<$Res>
    implements _$CancelButtonClickedCopyWith<$Res> {
  __$CancelButtonClickedCopyWithImpl(
      _CancelButtonClicked _value, $Res Function(_CancelButtonClicked) _then)
      : super(_value, (v) => _then(v as _CancelButtonClicked));

  @override
  _CancelButtonClicked get _value => super._value as _CancelButtonClicked;
}

/// @nodoc

class _$_CancelButtonClicked implements _CancelButtonClicked {
  const _$_CancelButtonClicked();

  @override
  String toString() {
    return 'CreateEvent.cancelButtonClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CancelButtonClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) {
    return cancelButtonClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
    required TResult orElse(),
  }) {
    if (cancelButtonClicked != null) {
      return cancelButtonClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) {
    return cancelButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) {
    if (cancelButtonClicked != null) {
      return cancelButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _CancelButtonClicked implements CreateEvent {
  const factory _CancelButtonClicked() = _$_CancelButtonClicked;
}

/// @nodoc
abstract class _$OnHomePageCopyWith<$Res> {
  factory _$OnHomePageCopyWith(
          _OnHomePage value, $Res Function(_OnHomePage) then) =
      __$OnHomePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnHomePageCopyWithImpl<$Res> extends _$CreateEventCopyWithImpl<$Res>
    implements _$OnHomePageCopyWith<$Res> {
  __$OnHomePageCopyWithImpl(
      _OnHomePage _value, $Res Function(_OnHomePage) _then)
      : super(_value, (v) => _then(v as _OnHomePage));

  @override
  _OnHomePage get _value => super._value as _OnHomePage;
}

/// @nodoc

class _$_OnHomePage implements _OnHomePage {
  const _$_OnHomePage();

  @override
  String toString() {
    return 'CreateEvent.onHomePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnHomePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Name name) validateEventName,
    required TResult Function(Location location) validateEventLocation,
    required TResult Function() create,
    required TResult Function() cancelButtonClicked,
    required TResult Function() onHomePage,
  }) {
    return onHomePage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Name name)? validateEventName,
    TResult Function(Location location)? validateEventLocation,
    TResult Function()? create,
    TResult Function()? cancelButtonClicked,
    TResult Function()? onHomePage,
    required TResult orElse(),
  }) {
    if (onHomePage != null) {
      return onHomePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ValidateEventName value) validateEventName,
    required TResult Function(_ValidateEventLocation value)
        validateEventLocation,
    required TResult Function(_Create value) create,
    required TResult Function(_CancelButtonClicked value) cancelButtonClicked,
    required TResult Function(_OnHomePage value) onHomePage,
  }) {
    return onHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ValidateEventName value)? validateEventName,
    TResult Function(_ValidateEventLocation value)? validateEventLocation,
    TResult Function(_Create value)? create,
    TResult Function(_CancelButtonClicked value)? cancelButtonClicked,
    TResult Function(_OnHomePage value)? onHomePage,
    required TResult orElse(),
  }) {
    if (onHomePage != null) {
      return onHomePage(this);
    }
    return orElse();
  }
}

abstract class _OnHomePage implements CreateEvent {
  const factory _OnHomePage() = _$_OnHomePage;
}

/// @nodoc
class _$CreateStateTearOff {
  const _$CreateStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _EventNameValidated eventNameValidated() {
    return const _EventNameValidated();
  }

  _EventLocationValidated eventLocationValidated() {
    return const _EventLocationValidated();
  }

  _EventCreated eventCreated() {
    return const _EventCreated();
  }

  _ReturnToHomePage returnToHomePage() {
    return const _ReturnToHomePage();
  }

  _OnHomePageFromCreatePage onHomePageFromCreatePage() {
    return const _OnHomePageFromCreatePage();
  }

  _EventCreationFailed eventCreationFailed() {
    return const _EventCreationFailed();
  }
}

/// @nodoc
const $CreateState = _$CreateStateTearOff();

/// @nodoc
mixin _$CreateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStateCopyWith<$Res> {
  factory $CreateStateCopyWith(
          CreateState value, $Res Function(CreateState) then) =
      _$CreateStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateStateCopyWithImpl<$Res> implements $CreateStateCopyWith<$Res> {
  _$CreateStateCopyWithImpl(this._value, this._then);

  final CreateState _value;
  // ignore: unused_field
  final $Res Function(CreateState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CreateStateCopyWithImpl<$Res>
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
    return 'CreateState.initial()';
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
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
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
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$EventNameValidatedCopyWith<$Res> {
  factory _$EventNameValidatedCopyWith(
          _EventNameValidated value, $Res Function(_EventNameValidated) then) =
      __$EventNameValidatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventNameValidatedCopyWithImpl<$Res>
    extends _$CreateStateCopyWithImpl<$Res>
    implements _$EventNameValidatedCopyWith<$Res> {
  __$EventNameValidatedCopyWithImpl(
      _EventNameValidated _value, $Res Function(_EventNameValidated) _then)
      : super(_value, (v) => _then(v as _EventNameValidated));

  @override
  _EventNameValidated get _value => super._value as _EventNameValidated;
}

/// @nodoc

class _$_EventNameValidated implements _EventNameValidated {
  const _$_EventNameValidated();

  @override
  String toString() {
    return 'CreateState.eventNameValidated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventNameValidated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return eventNameValidated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventNameValidated != null) {
      return eventNameValidated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return eventNameValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventNameValidated != null) {
      return eventNameValidated(this);
    }
    return orElse();
  }
}

abstract class _EventNameValidated implements CreateState {
  const factory _EventNameValidated() = _$_EventNameValidated;
}

/// @nodoc
abstract class _$EventLocationValidatedCopyWith<$Res> {
  factory _$EventLocationValidatedCopyWith(_EventLocationValidated value,
          $Res Function(_EventLocationValidated) then) =
      __$EventLocationValidatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventLocationValidatedCopyWithImpl<$Res>
    extends _$CreateStateCopyWithImpl<$Res>
    implements _$EventLocationValidatedCopyWith<$Res> {
  __$EventLocationValidatedCopyWithImpl(_EventLocationValidated _value,
      $Res Function(_EventLocationValidated) _then)
      : super(_value, (v) => _then(v as _EventLocationValidated));

  @override
  _EventLocationValidated get _value => super._value as _EventLocationValidated;
}

/// @nodoc

class _$_EventLocationValidated implements _EventLocationValidated {
  const _$_EventLocationValidated();

  @override
  String toString() {
    return 'CreateState.eventLocationValidated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventLocationValidated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return eventLocationValidated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventLocationValidated != null) {
      return eventLocationValidated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return eventLocationValidated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventLocationValidated != null) {
      return eventLocationValidated(this);
    }
    return orElse();
  }
}

abstract class _EventLocationValidated implements CreateState {
  const factory _EventLocationValidated() = _$_EventLocationValidated;
}

/// @nodoc
abstract class _$EventCreatedCopyWith<$Res> {
  factory _$EventCreatedCopyWith(
          _EventCreated value, $Res Function(_EventCreated) then) =
      __$EventCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventCreatedCopyWithImpl<$Res> extends _$CreateStateCopyWithImpl<$Res>
    implements _$EventCreatedCopyWith<$Res> {
  __$EventCreatedCopyWithImpl(
      _EventCreated _value, $Res Function(_EventCreated) _then)
      : super(_value, (v) => _then(v as _EventCreated));

  @override
  _EventCreated get _value => super._value as _EventCreated;
}

/// @nodoc

class _$_EventCreated implements _EventCreated {
  const _$_EventCreated();

  @override
  String toString() {
    return 'CreateState.eventCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return eventCreated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventCreated != null) {
      return eventCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return eventCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventCreated != null) {
      return eventCreated(this);
    }
    return orElse();
  }
}

abstract class _EventCreated implements CreateState {
  const factory _EventCreated() = _$_EventCreated;
}

/// @nodoc
abstract class _$ReturnToHomePageCopyWith<$Res> {
  factory _$ReturnToHomePageCopyWith(
          _ReturnToHomePage value, $Res Function(_ReturnToHomePage) then) =
      __$ReturnToHomePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReturnToHomePageCopyWithImpl<$Res>
    extends _$CreateStateCopyWithImpl<$Res>
    implements _$ReturnToHomePageCopyWith<$Res> {
  __$ReturnToHomePageCopyWithImpl(
      _ReturnToHomePage _value, $Res Function(_ReturnToHomePage) _then)
      : super(_value, (v) => _then(v as _ReturnToHomePage));

  @override
  _ReturnToHomePage get _value => super._value as _ReturnToHomePage;
}

/// @nodoc

class _$_ReturnToHomePage implements _ReturnToHomePage {
  const _$_ReturnToHomePage();

  @override
  String toString() {
    return 'CreateState.returnToHomePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReturnToHomePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return returnToHomePage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (returnToHomePage != null) {
      return returnToHomePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return returnToHomePage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (returnToHomePage != null) {
      return returnToHomePage(this);
    }
    return orElse();
  }
}

abstract class _ReturnToHomePage implements CreateState {
  const factory _ReturnToHomePage() = _$_ReturnToHomePage;
}

/// @nodoc
abstract class _$OnHomePageFromCreatePageCopyWith<$Res> {
  factory _$OnHomePageFromCreatePageCopyWith(_OnHomePageFromCreatePage value,
          $Res Function(_OnHomePageFromCreatePage) then) =
      __$OnHomePageFromCreatePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnHomePageFromCreatePageCopyWithImpl<$Res>
    extends _$CreateStateCopyWithImpl<$Res>
    implements _$OnHomePageFromCreatePageCopyWith<$Res> {
  __$OnHomePageFromCreatePageCopyWithImpl(_OnHomePageFromCreatePage _value,
      $Res Function(_OnHomePageFromCreatePage) _then)
      : super(_value, (v) => _then(v as _OnHomePageFromCreatePage));

  @override
  _OnHomePageFromCreatePage get _value =>
      super._value as _OnHomePageFromCreatePage;
}

/// @nodoc

class _$_OnHomePageFromCreatePage implements _OnHomePageFromCreatePage {
  const _$_OnHomePageFromCreatePage();

  @override
  String toString() {
    return 'CreateState.onHomePageFromCreatePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OnHomePageFromCreatePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return onHomePageFromCreatePage();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (onHomePageFromCreatePage != null) {
      return onHomePageFromCreatePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return onHomePageFromCreatePage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (onHomePageFromCreatePage != null) {
      return onHomePageFromCreatePage(this);
    }
    return orElse();
  }
}

abstract class _OnHomePageFromCreatePage implements CreateState {
  const factory _OnHomePageFromCreatePage() = _$_OnHomePageFromCreatePage;
}

/// @nodoc
abstract class _$EventCreationFailedCopyWith<$Res> {
  factory _$EventCreationFailedCopyWith(_EventCreationFailed value,
          $Res Function(_EventCreationFailed) then) =
      __$EventCreationFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$EventCreationFailedCopyWithImpl<$Res>
    extends _$CreateStateCopyWithImpl<$Res>
    implements _$EventCreationFailedCopyWith<$Res> {
  __$EventCreationFailedCopyWithImpl(
      _EventCreationFailed _value, $Res Function(_EventCreationFailed) _then)
      : super(_value, (v) => _then(v as _EventCreationFailed));

  @override
  _EventCreationFailed get _value => super._value as _EventCreationFailed;
}

/// @nodoc

class _$_EventCreationFailed implements _EventCreationFailed {
  const _$_EventCreationFailed();

  @override
  String toString() {
    return 'CreateState.eventCreationFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EventCreationFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() eventNameValidated,
    required TResult Function() eventLocationValidated,
    required TResult Function() eventCreated,
    required TResult Function() returnToHomePage,
    required TResult Function() onHomePageFromCreatePage,
    required TResult Function() eventCreationFailed,
  }) {
    return eventCreationFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? eventNameValidated,
    TResult Function()? eventLocationValidated,
    TResult Function()? eventCreated,
    TResult Function()? returnToHomePage,
    TResult Function()? onHomePageFromCreatePage,
    TResult Function()? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventCreationFailed != null) {
      return eventCreationFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EventNameValidated value) eventNameValidated,
    required TResult Function(_EventLocationValidated value)
        eventLocationValidated,
    required TResult Function(_EventCreated value) eventCreated,
    required TResult Function(_ReturnToHomePage value) returnToHomePage,
    required TResult Function(_OnHomePageFromCreatePage value)
        onHomePageFromCreatePage,
    required TResult Function(_EventCreationFailed value) eventCreationFailed,
  }) {
    return eventCreationFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EventNameValidated value)? eventNameValidated,
    TResult Function(_EventLocationValidated value)? eventLocationValidated,
    TResult Function(_EventCreated value)? eventCreated,
    TResult Function(_ReturnToHomePage value)? returnToHomePage,
    TResult Function(_OnHomePageFromCreatePage value)? onHomePageFromCreatePage,
    TResult Function(_EventCreationFailed value)? eventCreationFailed,
    required TResult orElse(),
  }) {
    if (eventCreationFailed != null) {
      return eventCreationFailed(this);
    }
    return orElse();
  }
}

abstract class _EventCreationFailed implements CreateState {
  const factory _EventCreationFailed() = _$_EventCreationFailed;
}
