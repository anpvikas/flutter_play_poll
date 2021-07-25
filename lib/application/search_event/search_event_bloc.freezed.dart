// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_event_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventEventTearOff {
  const _$SearchEventEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SearchButtonClicked searchButtonClicked(String queryString) {
    return _SearchButtonClicked(
      queryString,
    );
  }

  _SearchQueryStringExistsEvent searchQueryStringExistsEvent(
      String queryString) {
    return _SearchQueryStringExistsEvent(
      queryString,
    );
  }

  _EmptySearchEvent emptySearchEvent() {
    return const _EmptySearchEvent();
  }

  _NoDataFetchedEvent noDataFetchedEvent() {
    return const _NoDataFetchedEvent();
  }

  _JoinEvent joinEvent(dynamic data) {
    return _JoinEvent(
      data,
    );
  }
}

/// @nodoc
const $SearchEventEvent = _$SearchEventEventTearOff();

/// @nodoc
mixin _$SearchEventEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventEventCopyWith<$Res> {
  factory $SearchEventEventCopyWith(
          SearchEventEvent value, $Res Function(SearchEventEvent) then) =
      _$SearchEventEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventEventCopyWithImpl<$Res>
    implements $SearchEventEventCopyWith<$Res> {
  _$SearchEventEventCopyWithImpl(this._value, this._then);

  final SearchEventEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEventEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SearchEventEventCopyWithImpl<$Res>
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
    return 'SearchEventEvent.started()';
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
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
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
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEventEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SearchButtonClickedCopyWith<$Res> {
  factory _$SearchButtonClickedCopyWith(_SearchButtonClicked value,
          $Res Function(_SearchButtonClicked) then) =
      __$SearchButtonClickedCopyWithImpl<$Res>;
  $Res call({String queryString});
}

/// @nodoc
class __$SearchButtonClickedCopyWithImpl<$Res>
    extends _$SearchEventEventCopyWithImpl<$Res>
    implements _$SearchButtonClickedCopyWith<$Res> {
  __$SearchButtonClickedCopyWithImpl(
      _SearchButtonClicked _value, $Res Function(_SearchButtonClicked) _then)
      : super(_value, (v) => _then(v as _SearchButtonClicked));

  @override
  _SearchButtonClicked get _value => super._value as _SearchButtonClicked;

  @override
  $Res call({
    Object? queryString = freezed,
  }) {
    return _then(_SearchButtonClicked(
      queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchButtonClicked implements _SearchButtonClicked {
  const _$_SearchButtonClicked(this.queryString);

  @override
  final String queryString;

  @override
  String toString() {
    return 'SearchEventEvent.searchButtonClicked(queryString: $queryString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchButtonClicked &&
            (identical(other.queryString, queryString) ||
                const DeepCollectionEquality()
                    .equals(other.queryString, queryString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryString);

  @JsonKey(ignore: true)
  @override
  _$SearchButtonClickedCopyWith<_SearchButtonClicked> get copyWith =>
      __$SearchButtonClickedCopyWithImpl<_SearchButtonClicked>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) {
    return searchButtonClicked(queryString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
    required TResult orElse(),
  }) {
    if (searchButtonClicked != null) {
      return searchButtonClicked(queryString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) {
    return searchButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) {
    if (searchButtonClicked != null) {
      return searchButtonClicked(this);
    }
    return orElse();
  }
}

abstract class _SearchButtonClicked implements SearchEventEvent {
  const factory _SearchButtonClicked(String queryString) =
      _$_SearchButtonClicked;

  String get queryString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchButtonClickedCopyWith<_SearchButtonClicked> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchQueryStringExistsEventCopyWith<$Res> {
  factory _$SearchQueryStringExistsEventCopyWith(
          _SearchQueryStringExistsEvent value,
          $Res Function(_SearchQueryStringExistsEvent) then) =
      __$SearchQueryStringExistsEventCopyWithImpl<$Res>;
  $Res call({String queryString});
}

/// @nodoc
class __$SearchQueryStringExistsEventCopyWithImpl<$Res>
    extends _$SearchEventEventCopyWithImpl<$Res>
    implements _$SearchQueryStringExistsEventCopyWith<$Res> {
  __$SearchQueryStringExistsEventCopyWithImpl(
      _SearchQueryStringExistsEvent _value,
      $Res Function(_SearchQueryStringExistsEvent) _then)
      : super(_value, (v) => _then(v as _SearchQueryStringExistsEvent));

  @override
  _SearchQueryStringExistsEvent get _value =>
      super._value as _SearchQueryStringExistsEvent;

  @override
  $Res call({
    Object? queryString = freezed,
  }) {
    return _then(_SearchQueryStringExistsEvent(
      queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchQueryStringExistsEvent implements _SearchQueryStringExistsEvent {
  const _$_SearchQueryStringExistsEvent(this.queryString);

  @override
  final String queryString;

  @override
  String toString() {
    return 'SearchEventEvent.searchQueryStringExistsEvent(queryString: $queryString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchQueryStringExistsEvent &&
            (identical(other.queryString, queryString) ||
                const DeepCollectionEquality()
                    .equals(other.queryString, queryString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryString);

  @JsonKey(ignore: true)
  @override
  _$SearchQueryStringExistsEventCopyWith<_SearchQueryStringExistsEvent>
      get copyWith => __$SearchQueryStringExistsEventCopyWithImpl<
          _SearchQueryStringExistsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) {
    return searchQueryStringExistsEvent(queryString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
    required TResult orElse(),
  }) {
    if (searchQueryStringExistsEvent != null) {
      return searchQueryStringExistsEvent(queryString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) {
    return searchQueryStringExistsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) {
    if (searchQueryStringExistsEvent != null) {
      return searchQueryStringExistsEvent(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryStringExistsEvent implements SearchEventEvent {
  const factory _SearchQueryStringExistsEvent(String queryString) =
      _$_SearchQueryStringExistsEvent;

  String get queryString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchQueryStringExistsEventCopyWith<_SearchQueryStringExistsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptySearchEventCopyWith<$Res> {
  factory _$EmptySearchEventCopyWith(
          _EmptySearchEvent value, $Res Function(_EmptySearchEvent) then) =
      __$EmptySearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptySearchEventCopyWithImpl<$Res>
    extends _$SearchEventEventCopyWithImpl<$Res>
    implements _$EmptySearchEventCopyWith<$Res> {
  __$EmptySearchEventCopyWithImpl(
      _EmptySearchEvent _value, $Res Function(_EmptySearchEvent) _then)
      : super(_value, (v) => _then(v as _EmptySearchEvent));

  @override
  _EmptySearchEvent get _value => super._value as _EmptySearchEvent;
}

/// @nodoc

class _$_EmptySearchEvent implements _EmptySearchEvent {
  const _$_EmptySearchEvent();

  @override
  String toString() {
    return 'SearchEventEvent.emptySearchEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptySearchEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) {
    return emptySearchEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
    required TResult orElse(),
  }) {
    if (emptySearchEvent != null) {
      return emptySearchEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) {
    return emptySearchEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) {
    if (emptySearchEvent != null) {
      return emptySearchEvent(this);
    }
    return orElse();
  }
}

abstract class _EmptySearchEvent implements SearchEventEvent {
  const factory _EmptySearchEvent() = _$_EmptySearchEvent;
}

/// @nodoc
abstract class _$NoDataFetchedEventCopyWith<$Res> {
  factory _$NoDataFetchedEventCopyWith(
          _NoDataFetchedEvent value, $Res Function(_NoDataFetchedEvent) then) =
      __$NoDataFetchedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataFetchedEventCopyWithImpl<$Res>
    extends _$SearchEventEventCopyWithImpl<$Res>
    implements _$NoDataFetchedEventCopyWith<$Res> {
  __$NoDataFetchedEventCopyWithImpl(
      _NoDataFetchedEvent _value, $Res Function(_NoDataFetchedEvent) _then)
      : super(_value, (v) => _then(v as _NoDataFetchedEvent));

  @override
  _NoDataFetchedEvent get _value => super._value as _NoDataFetchedEvent;
}

/// @nodoc

class _$_NoDataFetchedEvent implements _NoDataFetchedEvent {
  const _$_NoDataFetchedEvent();

  @override
  String toString() {
    return 'SearchEventEvent.noDataFetchedEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoDataFetchedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) {
    return noDataFetchedEvent();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
    required TResult orElse(),
  }) {
    if (noDataFetchedEvent != null) {
      return noDataFetchedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) {
    return noDataFetchedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) {
    if (noDataFetchedEvent != null) {
      return noDataFetchedEvent(this);
    }
    return orElse();
  }
}

abstract class _NoDataFetchedEvent implements SearchEventEvent {
  const factory _NoDataFetchedEvent() = _$_NoDataFetchedEvent;
}

/// @nodoc
abstract class _$JoinEventCopyWith<$Res> {
  factory _$JoinEventCopyWith(
          _JoinEvent value, $Res Function(_JoinEvent) then) =
      __$JoinEventCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$JoinEventCopyWithImpl<$Res>
    extends _$SearchEventEventCopyWithImpl<$Res>
    implements _$JoinEventCopyWith<$Res> {
  __$JoinEventCopyWithImpl(_JoinEvent _value, $Res Function(_JoinEvent) _then)
      : super(_value, (v) => _then(v as _JoinEvent));

  @override
  _JoinEvent get _value => super._value as _JoinEvent;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_JoinEvent(
      data == freezed ? _value.data : data,
    ));
  }
}

/// @nodoc

class _$_JoinEvent implements _JoinEvent {
  const _$_JoinEvent(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'SearchEventEvent.joinEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinEvent &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$JoinEventCopyWith<_JoinEvent> get copyWith =>
      __$JoinEventCopyWithImpl<_JoinEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String queryString) searchButtonClicked,
    required TResult Function(String queryString) searchQueryStringExistsEvent,
    required TResult Function() emptySearchEvent,
    required TResult Function() noDataFetchedEvent,
    required TResult Function(dynamic data) joinEvent,
  }) {
    return joinEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String queryString)? searchButtonClicked,
    TResult Function(String queryString)? searchQueryStringExistsEvent,
    TResult Function()? emptySearchEvent,
    TResult Function()? noDataFetchedEvent,
    TResult Function(dynamic data)? joinEvent,
    required TResult orElse(),
  }) {
    if (joinEvent != null) {
      return joinEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchButtonClicked value) searchButtonClicked,
    required TResult Function(_SearchQueryStringExistsEvent value)
        searchQueryStringExistsEvent,
    required TResult Function(_EmptySearchEvent value) emptySearchEvent,
    required TResult Function(_NoDataFetchedEvent value) noDataFetchedEvent,
    required TResult Function(_JoinEvent value) joinEvent,
  }) {
    return joinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchButtonClicked value)? searchButtonClicked,
    TResult Function(_SearchQueryStringExistsEvent value)?
        searchQueryStringExistsEvent,
    TResult Function(_EmptySearchEvent value)? emptySearchEvent,
    TResult Function(_NoDataFetchedEvent value)? noDataFetchedEvent,
    TResult Function(_JoinEvent value)? joinEvent,
    required TResult orElse(),
  }) {
    if (joinEvent != null) {
      return joinEvent(this);
    }
    return orElse();
  }
}

abstract class _JoinEvent implements SearchEventEvent {
  const factory _JoinEvent(dynamic data) = _$_JoinEvent;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$JoinEventCopyWith<_JoinEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchEventStateTearOff {
  const _$SearchEventStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ShowAllEvents showAllEvents(dynamic data) {
    return _ShowAllEvents(
      data,
    );
  }

  _SearchResultsDisplayed searchResultsDisplayed(dynamic data) {
    return _SearchResultsDisplayed(
      data,
    );
  }

  _SearchQueryStringExistsState searchQueryStringExistsState(
      String queryString) {
    return _SearchQueryStringExistsState(
      queryString,
    );
  }

  _EmptySearchState emptySearchState() {
    return const _EmptySearchState();
  }

  _NoDataFetchedState noDataFetchedState() {
    return const _NoDataFetchedState();
  }

  _JoinState joinState() {
    return const _JoinState();
  }
}

/// @nodoc
const $SearchEventState = _$SearchEventStateTearOff();

/// @nodoc
mixin _$SearchEventState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventStateCopyWith<$Res> {
  factory $SearchEventStateCopyWith(
          SearchEventState value, $Res Function(SearchEventState) then) =
      _$SearchEventStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventStateCopyWithImpl<$Res>
    implements $SearchEventStateCopyWith<$Res> {
  _$SearchEventStateCopyWithImpl(this._value, this._then);

  final SearchEventState _value;
  // ignore: unused_field
  final $Res Function(SearchEventState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SearchEventStateCopyWithImpl<$Res>
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
    return 'SearchEventState.initial()';
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
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
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
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SearchEventState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ShowAllEventsCopyWith<$Res> {
  factory _$ShowAllEventsCopyWith(
          _ShowAllEvents value, $Res Function(_ShowAllEvents) then) =
      __$ShowAllEventsCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$ShowAllEventsCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res>
    implements _$ShowAllEventsCopyWith<$Res> {
  __$ShowAllEventsCopyWithImpl(
      _ShowAllEvents _value, $Res Function(_ShowAllEvents) _then)
      : super(_value, (v) => _then(v as _ShowAllEvents));

  @override
  _ShowAllEvents get _value => super._value as _ShowAllEvents;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_ShowAllEvents(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_ShowAllEvents implements _ShowAllEvents {
  const _$_ShowAllEvents(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'SearchEventState.showAllEvents(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowAllEvents &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$ShowAllEventsCopyWith<_ShowAllEvents> get copyWith =>
      __$ShowAllEventsCopyWithImpl<_ShowAllEvents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return showAllEvents(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) {
    if (showAllEvents != null) {
      return showAllEvents(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return showAllEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (showAllEvents != null) {
      return showAllEvents(this);
    }
    return orElse();
  }
}

abstract class _ShowAllEvents implements SearchEventState {
  const factory _ShowAllEvents(dynamic data) = _$_ShowAllEvents;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ShowAllEventsCopyWith<_ShowAllEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchResultsDisplayedCopyWith<$Res> {
  factory _$SearchResultsDisplayedCopyWith(_SearchResultsDisplayed value,
          $Res Function(_SearchResultsDisplayed) then) =
      __$SearchResultsDisplayedCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$SearchResultsDisplayedCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res>
    implements _$SearchResultsDisplayedCopyWith<$Res> {
  __$SearchResultsDisplayedCopyWithImpl(_SearchResultsDisplayed _value,
      $Res Function(_SearchResultsDisplayed) _then)
      : super(_value, (v) => _then(v as _SearchResultsDisplayed));

  @override
  _SearchResultsDisplayed get _value => super._value as _SearchResultsDisplayed;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_SearchResultsDisplayed(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchResultsDisplayed implements _SearchResultsDisplayed {
  const _$_SearchResultsDisplayed(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'SearchEventState.searchResultsDisplayed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchResultsDisplayed &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$SearchResultsDisplayedCopyWith<_SearchResultsDisplayed> get copyWith =>
      __$SearchResultsDisplayedCopyWithImpl<_SearchResultsDisplayed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return searchResultsDisplayed(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) {
    if (searchResultsDisplayed != null) {
      return searchResultsDisplayed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return searchResultsDisplayed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (searchResultsDisplayed != null) {
      return searchResultsDisplayed(this);
    }
    return orElse();
  }
}

abstract class _SearchResultsDisplayed implements SearchEventState {
  const factory _SearchResultsDisplayed(dynamic data) =
      _$_SearchResultsDisplayed;

  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchResultsDisplayedCopyWith<_SearchResultsDisplayed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchQueryStringExistsStateCopyWith<$Res> {
  factory _$SearchQueryStringExistsStateCopyWith(
          _SearchQueryStringExistsState value,
          $Res Function(_SearchQueryStringExistsState) then) =
      __$SearchQueryStringExistsStateCopyWithImpl<$Res>;
  $Res call({String queryString});
}

/// @nodoc
class __$SearchQueryStringExistsStateCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res>
    implements _$SearchQueryStringExistsStateCopyWith<$Res> {
  __$SearchQueryStringExistsStateCopyWithImpl(
      _SearchQueryStringExistsState _value,
      $Res Function(_SearchQueryStringExistsState) _then)
      : super(_value, (v) => _then(v as _SearchQueryStringExistsState));

  @override
  _SearchQueryStringExistsState get _value =>
      super._value as _SearchQueryStringExistsState;

  @override
  $Res call({
    Object? queryString = freezed,
  }) {
    return _then(_SearchQueryStringExistsState(
      queryString == freezed
          ? _value.queryString
          : queryString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchQueryStringExistsState implements _SearchQueryStringExistsState {
  const _$_SearchQueryStringExistsState(this.queryString);

  @override
  final String queryString;

  @override
  String toString() {
    return 'SearchEventState.searchQueryStringExistsState(queryString: $queryString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchQueryStringExistsState &&
            (identical(other.queryString, queryString) ||
                const DeepCollectionEquality()
                    .equals(other.queryString, queryString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(queryString);

  @JsonKey(ignore: true)
  @override
  _$SearchQueryStringExistsStateCopyWith<_SearchQueryStringExistsState>
      get copyWith => __$SearchQueryStringExistsStateCopyWithImpl<
          _SearchQueryStringExistsState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return searchQueryStringExistsState(queryString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) {
    if (searchQueryStringExistsState != null) {
      return searchQueryStringExistsState(queryString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return searchQueryStringExistsState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (searchQueryStringExistsState != null) {
      return searchQueryStringExistsState(this);
    }
    return orElse();
  }
}

abstract class _SearchQueryStringExistsState implements SearchEventState {
  const factory _SearchQueryStringExistsState(String queryString) =
      _$_SearchQueryStringExistsState;

  String get queryString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SearchQueryStringExistsStateCopyWith<_SearchQueryStringExistsState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptySearchStateCopyWith<$Res> {
  factory _$EmptySearchStateCopyWith(
          _EmptySearchState value, $Res Function(_EmptySearchState) then) =
      __$EmptySearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptySearchStateCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res>
    implements _$EmptySearchStateCopyWith<$Res> {
  __$EmptySearchStateCopyWithImpl(
      _EmptySearchState _value, $Res Function(_EmptySearchState) _then)
      : super(_value, (v) => _then(v as _EmptySearchState));

  @override
  _EmptySearchState get _value => super._value as _EmptySearchState;
}

/// @nodoc

class _$_EmptySearchState implements _EmptySearchState {
  const _$_EmptySearchState();

  @override
  String toString() {
    return 'SearchEventState.emptySearchState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmptySearchState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return emptySearchState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) {
    if (emptySearchState != null) {
      return emptySearchState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return emptySearchState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (emptySearchState != null) {
      return emptySearchState(this);
    }
    return orElse();
  }
}

abstract class _EmptySearchState implements SearchEventState {
  const factory _EmptySearchState() = _$_EmptySearchState;
}

/// @nodoc
abstract class _$NoDataFetchedStateCopyWith<$Res> {
  factory _$NoDataFetchedStateCopyWith(
          _NoDataFetchedState value, $Res Function(_NoDataFetchedState) then) =
      __$NoDataFetchedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDataFetchedStateCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res>
    implements _$NoDataFetchedStateCopyWith<$Res> {
  __$NoDataFetchedStateCopyWithImpl(
      _NoDataFetchedState _value, $Res Function(_NoDataFetchedState) _then)
      : super(_value, (v) => _then(v as _NoDataFetchedState));

  @override
  _NoDataFetchedState get _value => super._value as _NoDataFetchedState;
}

/// @nodoc

class _$_NoDataFetchedState implements _NoDataFetchedState {
  const _$_NoDataFetchedState();

  @override
  String toString() {
    return 'SearchEventState.noDataFetchedState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoDataFetchedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return noDataFetchedState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) {
    if (noDataFetchedState != null) {
      return noDataFetchedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return noDataFetchedState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (noDataFetchedState != null) {
      return noDataFetchedState(this);
    }
    return orElse();
  }
}

abstract class _NoDataFetchedState implements SearchEventState {
  const factory _NoDataFetchedState() = _$_NoDataFetchedState;
}

/// @nodoc
abstract class _$JoinStateCopyWith<$Res> {
  factory _$JoinStateCopyWith(
          _JoinState value, $Res Function(_JoinState) then) =
      __$JoinStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$JoinStateCopyWithImpl<$Res>
    extends _$SearchEventStateCopyWithImpl<$Res>
    implements _$JoinStateCopyWith<$Res> {
  __$JoinStateCopyWithImpl(_JoinState _value, $Res Function(_JoinState) _then)
      : super(_value, (v) => _then(v as _JoinState));

  @override
  _JoinState get _value => super._value as _JoinState;
}

/// @nodoc

class _$_JoinState implements _JoinState {
  const _$_JoinState();

  @override
  String toString() {
    return 'SearchEventState.joinState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _JoinState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(dynamic data) showAllEvents,
    required TResult Function(dynamic data) searchResultsDisplayed,
    required TResult Function(String queryString) searchQueryStringExistsState,
    required TResult Function() emptySearchState,
    required TResult Function() noDataFetchedState,
    required TResult Function() joinState,
  }) {
    return joinState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(dynamic data)? showAllEvents,
    TResult Function(dynamic data)? searchResultsDisplayed,
    TResult Function(String queryString)? searchQueryStringExistsState,
    TResult Function()? emptySearchState,
    TResult Function()? noDataFetchedState,
    TResult Function()? joinState,
    required TResult orElse(),
  }) {
    if (joinState != null) {
      return joinState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ShowAllEvents value) showAllEvents,
    required TResult Function(_SearchResultsDisplayed value)
        searchResultsDisplayed,
    required TResult Function(_SearchQueryStringExistsState value)
        searchQueryStringExistsState,
    required TResult Function(_EmptySearchState value) emptySearchState,
    required TResult Function(_NoDataFetchedState value) noDataFetchedState,
    required TResult Function(_JoinState value) joinState,
  }) {
    return joinState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ShowAllEvents value)? showAllEvents,
    TResult Function(_SearchResultsDisplayed value)? searchResultsDisplayed,
    TResult Function(_SearchQueryStringExistsState value)?
        searchQueryStringExistsState,
    TResult Function(_EmptySearchState value)? emptySearchState,
    TResult Function(_NoDataFetchedState value)? noDataFetchedState,
    TResult Function(_JoinState value)? joinState,
    required TResult orElse(),
  }) {
    if (joinState != null) {
      return joinState(this);
    }
    return orElse();
  }
}

abstract class _JoinState implements SearchEventState {
  const factory _JoinState() = _$_JoinState;
}
