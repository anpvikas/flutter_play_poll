// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'upload_artist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UploadArtistEventTearOff {
  const _$UploadArtistEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SelectSongFileClicked selectSongFileClicked() {
    return const _SelectSongFileClicked();
  }

  _UplodFileClicked uplodFileClicked() {
    return const _UplodFileClicked();
  }

  _FileSelectedForUpload fileSelectedForUpload(UploadTask uploadFileTask) {
    return _FileSelectedForUpload(
      uploadFileTask,
    );
  }
}

/// @nodoc
const $UploadArtistEvent = _$UploadArtistEventTearOff();

/// @nodoc
mixin _$UploadArtistEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectSongFileClicked,
    required TResult Function() uplodFileClicked,
    required TResult Function(UploadTask uploadFileTask) fileSelectedForUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectSongFileClicked,
    TResult Function()? uplodFileClicked,
    TResult Function(UploadTask uploadFileTask)? fileSelectedForUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSongFileClicked value)
        selectSongFileClicked,
    required TResult Function(_UplodFileClicked value) uplodFileClicked,
    required TResult Function(_FileSelectedForUpload value)
        fileSelectedForUpload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSongFileClicked value)? selectSongFileClicked,
    TResult Function(_UplodFileClicked value)? uplodFileClicked,
    TResult Function(_FileSelectedForUpload value)? fileSelectedForUpload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadArtistEventCopyWith<$Res> {
  factory $UploadArtistEventCopyWith(
          UploadArtistEvent value, $Res Function(UploadArtistEvent) then) =
      _$UploadArtistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadArtistEventCopyWithImpl<$Res>
    implements $UploadArtistEventCopyWith<$Res> {
  _$UploadArtistEventCopyWithImpl(this._value, this._then);

  final UploadArtistEvent _value;
  // ignore: unused_field
  final $Res Function(UploadArtistEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$UploadArtistEventCopyWithImpl<$Res>
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
    return 'UploadArtistEvent.started()';
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
    required TResult Function() selectSongFileClicked,
    required TResult Function() uplodFileClicked,
    required TResult Function(UploadTask uploadFileTask) fileSelectedForUpload,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectSongFileClicked,
    TResult Function()? uplodFileClicked,
    TResult Function(UploadTask uploadFileTask)? fileSelectedForUpload,
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
    required TResult Function(_SelectSongFileClicked value)
        selectSongFileClicked,
    required TResult Function(_UplodFileClicked value) uplodFileClicked,
    required TResult Function(_FileSelectedForUpload value)
        fileSelectedForUpload,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSongFileClicked value)? selectSongFileClicked,
    TResult Function(_UplodFileClicked value)? uplodFileClicked,
    TResult Function(_FileSelectedForUpload value)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UploadArtistEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SelectSongFileClickedCopyWith<$Res> {
  factory _$SelectSongFileClickedCopyWith(_SelectSongFileClicked value,
          $Res Function(_SelectSongFileClicked) then) =
      __$SelectSongFileClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SelectSongFileClickedCopyWithImpl<$Res>
    extends _$UploadArtistEventCopyWithImpl<$Res>
    implements _$SelectSongFileClickedCopyWith<$Res> {
  __$SelectSongFileClickedCopyWithImpl(_SelectSongFileClicked _value,
      $Res Function(_SelectSongFileClicked) _then)
      : super(_value, (v) => _then(v as _SelectSongFileClicked));

  @override
  _SelectSongFileClicked get _value => super._value as _SelectSongFileClicked;
}

/// @nodoc

class _$_SelectSongFileClicked implements _SelectSongFileClicked {
  const _$_SelectSongFileClicked();

  @override
  String toString() {
    return 'UploadArtistEvent.selectSongFileClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SelectSongFileClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectSongFileClicked,
    required TResult Function() uplodFileClicked,
    required TResult Function(UploadTask uploadFileTask) fileSelectedForUpload,
  }) {
    return selectSongFileClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectSongFileClicked,
    TResult Function()? uplodFileClicked,
    TResult Function(UploadTask uploadFileTask)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (selectSongFileClicked != null) {
      return selectSongFileClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSongFileClicked value)
        selectSongFileClicked,
    required TResult Function(_UplodFileClicked value) uplodFileClicked,
    required TResult Function(_FileSelectedForUpload value)
        fileSelectedForUpload,
  }) {
    return selectSongFileClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSongFileClicked value)? selectSongFileClicked,
    TResult Function(_UplodFileClicked value)? uplodFileClicked,
    TResult Function(_FileSelectedForUpload value)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (selectSongFileClicked != null) {
      return selectSongFileClicked(this);
    }
    return orElse();
  }
}

abstract class _SelectSongFileClicked implements UploadArtistEvent {
  const factory _SelectSongFileClicked() = _$_SelectSongFileClicked;
}

/// @nodoc
abstract class _$UplodFileClickedCopyWith<$Res> {
  factory _$UplodFileClickedCopyWith(
          _UplodFileClicked value, $Res Function(_UplodFileClicked) then) =
      __$UplodFileClickedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UplodFileClickedCopyWithImpl<$Res>
    extends _$UploadArtistEventCopyWithImpl<$Res>
    implements _$UplodFileClickedCopyWith<$Res> {
  __$UplodFileClickedCopyWithImpl(
      _UplodFileClicked _value, $Res Function(_UplodFileClicked) _then)
      : super(_value, (v) => _then(v as _UplodFileClicked));

  @override
  _UplodFileClicked get _value => super._value as _UplodFileClicked;
}

/// @nodoc

class _$_UplodFileClicked implements _UplodFileClicked {
  const _$_UplodFileClicked();

  @override
  String toString() {
    return 'UploadArtistEvent.uplodFileClicked()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UplodFileClicked);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectSongFileClicked,
    required TResult Function() uplodFileClicked,
    required TResult Function(UploadTask uploadFileTask) fileSelectedForUpload,
  }) {
    return uplodFileClicked();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectSongFileClicked,
    TResult Function()? uplodFileClicked,
    TResult Function(UploadTask uploadFileTask)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (uplodFileClicked != null) {
      return uplodFileClicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSongFileClicked value)
        selectSongFileClicked,
    required TResult Function(_UplodFileClicked value) uplodFileClicked,
    required TResult Function(_FileSelectedForUpload value)
        fileSelectedForUpload,
  }) {
    return uplodFileClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSongFileClicked value)? selectSongFileClicked,
    TResult Function(_UplodFileClicked value)? uplodFileClicked,
    TResult Function(_FileSelectedForUpload value)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (uplodFileClicked != null) {
      return uplodFileClicked(this);
    }
    return orElse();
  }
}

abstract class _UplodFileClicked implements UploadArtistEvent {
  const factory _UplodFileClicked() = _$_UplodFileClicked;
}

/// @nodoc
abstract class _$FileSelectedForUploadCopyWith<$Res> {
  factory _$FileSelectedForUploadCopyWith(_FileSelectedForUpload value,
          $Res Function(_FileSelectedForUpload) then) =
      __$FileSelectedForUploadCopyWithImpl<$Res>;
  $Res call({UploadTask uploadFileTask});
}

/// @nodoc
class __$FileSelectedForUploadCopyWithImpl<$Res>
    extends _$UploadArtistEventCopyWithImpl<$Res>
    implements _$FileSelectedForUploadCopyWith<$Res> {
  __$FileSelectedForUploadCopyWithImpl(_FileSelectedForUpload _value,
      $Res Function(_FileSelectedForUpload) _then)
      : super(_value, (v) => _then(v as _FileSelectedForUpload));

  @override
  _FileSelectedForUpload get _value => super._value as _FileSelectedForUpload;

  @override
  $Res call({
    Object? uploadFileTask = freezed,
  }) {
    return _then(_FileSelectedForUpload(
      uploadFileTask == freezed
          ? _value.uploadFileTask
          : uploadFileTask // ignore: cast_nullable_to_non_nullable
              as UploadTask,
    ));
  }
}

/// @nodoc

class _$_FileSelectedForUpload implements _FileSelectedForUpload {
  const _$_FileSelectedForUpload(this.uploadFileTask);

  @override
  final UploadTask uploadFileTask;

  @override
  String toString() {
    return 'UploadArtistEvent.fileSelectedForUpload(uploadFileTask: $uploadFileTask)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileSelectedForUpload &&
            (identical(other.uploadFileTask, uploadFileTask) ||
                const DeepCollectionEquality()
                    .equals(other.uploadFileTask, uploadFileTask)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uploadFileTask);

  @JsonKey(ignore: true)
  @override
  _$FileSelectedForUploadCopyWith<_FileSelectedForUpload> get copyWith =>
      __$FileSelectedForUploadCopyWithImpl<_FileSelectedForUpload>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() selectSongFileClicked,
    required TResult Function() uplodFileClicked,
    required TResult Function(UploadTask uploadFileTask) fileSelectedForUpload,
  }) {
    return fileSelectedForUpload(uploadFileTask);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? selectSongFileClicked,
    TResult Function()? uplodFileClicked,
    TResult Function(UploadTask uploadFileTask)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (fileSelectedForUpload != null) {
      return fileSelectedForUpload(uploadFileTask);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SelectSongFileClicked value)
        selectSongFileClicked,
    required TResult Function(_UplodFileClicked value) uplodFileClicked,
    required TResult Function(_FileSelectedForUpload value)
        fileSelectedForUpload,
  }) {
    return fileSelectedForUpload(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SelectSongFileClicked value)? selectSongFileClicked,
    TResult Function(_UplodFileClicked value)? uplodFileClicked,
    TResult Function(_FileSelectedForUpload value)? fileSelectedForUpload,
    required TResult orElse(),
  }) {
    if (fileSelectedForUpload != null) {
      return fileSelectedForUpload(this);
    }
    return orElse();
  }
}

abstract class _FileSelectedForUpload implements UploadArtistEvent {
  const factory _FileSelectedForUpload(UploadTask uploadFileTask) =
      _$_FileSelectedForUpload;

  UploadTask get uploadFileTask => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FileSelectedForUploadCopyWith<_FileSelectedForUpload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UploadArtistStateTearOff {
  const _$UploadArtistStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _SelectSongFileState selectSongFileState(FilePickerResult filePath) {
    return _SelectSongFileState(
      filePath,
    );
  }

  _UploadFileState uploadFileState(dynamic uploadStatusCurrent) {
    return _UploadFileState(
      uploadStatusCurrent,
    );
  }

  _FileSelectedForUploadState fileSelectedForUploadState(
      Future<StreamBuilder<TaskSnapshot>> uploadStatus) {
    return _FileSelectedForUploadState(
      uploadStatus,
    );
  }
}

/// @nodoc
const $UploadArtistState = _$UploadArtistStateTearOff();

/// @nodoc
mixin _$UploadArtistState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilePickerResult filePath) selectSongFileState,
    required TResult Function(dynamic uploadStatusCurrent) uploadFileState,
    required TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)
        fileSelectedForUploadState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilePickerResult filePath)? selectSongFileState,
    TResult Function(dynamic uploadStatusCurrent)? uploadFileState,
    TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectSongFileState value) selectSongFileState,
    required TResult Function(_UploadFileState value) uploadFileState,
    required TResult Function(_FileSelectedForUploadState value)
        fileSelectedForUploadState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectSongFileState value)? selectSongFileState,
    TResult Function(_UploadFileState value)? uploadFileState,
    TResult Function(_FileSelectedForUploadState value)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadArtistStateCopyWith<$Res> {
  factory $UploadArtistStateCopyWith(
          UploadArtistState value, $Res Function(UploadArtistState) then) =
      _$UploadArtistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadArtistStateCopyWithImpl<$Res>
    implements $UploadArtistStateCopyWith<$Res> {
  _$UploadArtistStateCopyWithImpl(this._value, this._then);

  final UploadArtistState _value;
  // ignore: unused_field
  final $Res Function(UploadArtistState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$UploadArtistStateCopyWithImpl<$Res>
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
    return 'UploadArtistState.initial()';
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
    required TResult Function(FilePickerResult filePath) selectSongFileState,
    required TResult Function(dynamic uploadStatusCurrent) uploadFileState,
    required TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)
        fileSelectedForUploadState,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilePickerResult filePath)? selectSongFileState,
    TResult Function(dynamic uploadStatusCurrent)? uploadFileState,
    TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)?
        fileSelectedForUploadState,
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
    required TResult Function(_SelectSongFileState value) selectSongFileState,
    required TResult Function(_UploadFileState value) uploadFileState,
    required TResult Function(_FileSelectedForUploadState value)
        fileSelectedForUploadState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectSongFileState value)? selectSongFileState,
    TResult Function(_UploadFileState value)? uploadFileState,
    TResult Function(_FileSelectedForUploadState value)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UploadArtistState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$SelectSongFileStateCopyWith<$Res> {
  factory _$SelectSongFileStateCopyWith(_SelectSongFileState value,
          $Res Function(_SelectSongFileState) then) =
      __$SelectSongFileStateCopyWithImpl<$Res>;
  $Res call({FilePickerResult filePath});
}

/// @nodoc
class __$SelectSongFileStateCopyWithImpl<$Res>
    extends _$UploadArtistStateCopyWithImpl<$Res>
    implements _$SelectSongFileStateCopyWith<$Res> {
  __$SelectSongFileStateCopyWithImpl(
      _SelectSongFileState _value, $Res Function(_SelectSongFileState) _then)
      : super(_value, (v) => _then(v as _SelectSongFileState));

  @override
  _SelectSongFileState get _value => super._value as _SelectSongFileState;

  @override
  $Res call({
    Object? filePath = freezed,
  }) {
    return _then(_SelectSongFileState(
      filePath == freezed
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as FilePickerResult,
    ));
  }
}

/// @nodoc

class _$_SelectSongFileState implements _SelectSongFileState {
  const _$_SelectSongFileState(this.filePath);

  @override
  final FilePickerResult filePath;

  @override
  String toString() {
    return 'UploadArtistState.selectSongFileState(filePath: $filePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SelectSongFileState &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filePath);

  @JsonKey(ignore: true)
  @override
  _$SelectSongFileStateCopyWith<_SelectSongFileState> get copyWith =>
      __$SelectSongFileStateCopyWithImpl<_SelectSongFileState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilePickerResult filePath) selectSongFileState,
    required TResult Function(dynamic uploadStatusCurrent) uploadFileState,
    required TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)
        fileSelectedForUploadState,
  }) {
    return selectSongFileState(filePath);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilePickerResult filePath)? selectSongFileState,
    TResult Function(dynamic uploadStatusCurrent)? uploadFileState,
    TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (selectSongFileState != null) {
      return selectSongFileState(filePath);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectSongFileState value) selectSongFileState,
    required TResult Function(_UploadFileState value) uploadFileState,
    required TResult Function(_FileSelectedForUploadState value)
        fileSelectedForUploadState,
  }) {
    return selectSongFileState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectSongFileState value)? selectSongFileState,
    TResult Function(_UploadFileState value)? uploadFileState,
    TResult Function(_FileSelectedForUploadState value)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (selectSongFileState != null) {
      return selectSongFileState(this);
    }
    return orElse();
  }
}

abstract class _SelectSongFileState implements UploadArtistState {
  const factory _SelectSongFileState(FilePickerResult filePath) =
      _$_SelectSongFileState;

  FilePickerResult get filePath => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$SelectSongFileStateCopyWith<_SelectSongFileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UploadFileStateCopyWith<$Res> {
  factory _$UploadFileStateCopyWith(
          _UploadFileState value, $Res Function(_UploadFileState) then) =
      __$UploadFileStateCopyWithImpl<$Res>;
  $Res call({dynamic uploadStatusCurrent});
}

/// @nodoc
class __$UploadFileStateCopyWithImpl<$Res>
    extends _$UploadArtistStateCopyWithImpl<$Res>
    implements _$UploadFileStateCopyWith<$Res> {
  __$UploadFileStateCopyWithImpl(
      _UploadFileState _value, $Res Function(_UploadFileState) _then)
      : super(_value, (v) => _then(v as _UploadFileState));

  @override
  _UploadFileState get _value => super._value as _UploadFileState;

  @override
  $Res call({
    Object? uploadStatusCurrent = freezed,
  }) {
    return _then(_UploadFileState(
      uploadStatusCurrent == freezed
          ? _value.uploadStatusCurrent
          : uploadStatusCurrent // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UploadFileState implements _UploadFileState {
  const _$_UploadFileState(this.uploadStatusCurrent);

  @override
  final dynamic uploadStatusCurrent;

  @override
  String toString() {
    return 'UploadArtistState.uploadFileState(uploadStatusCurrent: $uploadStatusCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UploadFileState &&
            (identical(other.uploadStatusCurrent, uploadStatusCurrent) ||
                const DeepCollectionEquality()
                    .equals(other.uploadStatusCurrent, uploadStatusCurrent)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(uploadStatusCurrent);

  @JsonKey(ignore: true)
  @override
  _$UploadFileStateCopyWith<_UploadFileState> get copyWith =>
      __$UploadFileStateCopyWithImpl<_UploadFileState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilePickerResult filePath) selectSongFileState,
    required TResult Function(dynamic uploadStatusCurrent) uploadFileState,
    required TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)
        fileSelectedForUploadState,
  }) {
    return uploadFileState(uploadStatusCurrent);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilePickerResult filePath)? selectSongFileState,
    TResult Function(dynamic uploadStatusCurrent)? uploadFileState,
    TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (uploadFileState != null) {
      return uploadFileState(uploadStatusCurrent);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectSongFileState value) selectSongFileState,
    required TResult Function(_UploadFileState value) uploadFileState,
    required TResult Function(_FileSelectedForUploadState value)
        fileSelectedForUploadState,
  }) {
    return uploadFileState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectSongFileState value)? selectSongFileState,
    TResult Function(_UploadFileState value)? uploadFileState,
    TResult Function(_FileSelectedForUploadState value)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (uploadFileState != null) {
      return uploadFileState(this);
    }
    return orElse();
  }
}

abstract class _UploadFileState implements UploadArtistState {
  const factory _UploadFileState(dynamic uploadStatusCurrent) =
      _$_UploadFileState;

  dynamic get uploadStatusCurrent => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$UploadFileStateCopyWith<_UploadFileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FileSelectedForUploadStateCopyWith<$Res> {
  factory _$FileSelectedForUploadStateCopyWith(
          _FileSelectedForUploadState value,
          $Res Function(_FileSelectedForUploadState) then) =
      __$FileSelectedForUploadStateCopyWithImpl<$Res>;
  $Res call({Future<StreamBuilder<TaskSnapshot>> uploadStatus});
}

/// @nodoc
class __$FileSelectedForUploadStateCopyWithImpl<$Res>
    extends _$UploadArtistStateCopyWithImpl<$Res>
    implements _$FileSelectedForUploadStateCopyWith<$Res> {
  __$FileSelectedForUploadStateCopyWithImpl(_FileSelectedForUploadState _value,
      $Res Function(_FileSelectedForUploadState) _then)
      : super(_value, (v) => _then(v as _FileSelectedForUploadState));

  @override
  _FileSelectedForUploadState get _value =>
      super._value as _FileSelectedForUploadState;

  @override
  $Res call({
    Object? uploadStatus = freezed,
  }) {
    return _then(_FileSelectedForUploadState(
      uploadStatus == freezed
          ? _value.uploadStatus
          : uploadStatus // ignore: cast_nullable_to_non_nullable
              as Future<StreamBuilder<TaskSnapshot>>,
    ));
  }
}

/// @nodoc

class _$_FileSelectedForUploadState implements _FileSelectedForUploadState {
  const _$_FileSelectedForUploadState(this.uploadStatus);

  @override
  final Future<StreamBuilder<TaskSnapshot>> uploadStatus;

  @override
  String toString() {
    return 'UploadArtistState.fileSelectedForUploadState(uploadStatus: $uploadStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FileSelectedForUploadState &&
            (identical(other.uploadStatus, uploadStatus) ||
                const DeepCollectionEquality()
                    .equals(other.uploadStatus, uploadStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(uploadStatus);

  @JsonKey(ignore: true)
  @override
  _$FileSelectedForUploadStateCopyWith<_FileSelectedForUploadState>
      get copyWith => __$FileSelectedForUploadStateCopyWithImpl<
          _FileSelectedForUploadState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FilePickerResult filePath) selectSongFileState,
    required TResult Function(dynamic uploadStatusCurrent) uploadFileState,
    required TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)
        fileSelectedForUploadState,
  }) {
    return fileSelectedForUploadState(uploadStatus);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FilePickerResult filePath)? selectSongFileState,
    TResult Function(dynamic uploadStatusCurrent)? uploadFileState,
    TResult Function(Future<StreamBuilder<TaskSnapshot>> uploadStatus)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (fileSelectedForUploadState != null) {
      return fileSelectedForUploadState(uploadStatus);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SelectSongFileState value) selectSongFileState,
    required TResult Function(_UploadFileState value) uploadFileState,
    required TResult Function(_FileSelectedForUploadState value)
        fileSelectedForUploadState,
  }) {
    return fileSelectedForUploadState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SelectSongFileState value)? selectSongFileState,
    TResult Function(_UploadFileState value)? uploadFileState,
    TResult Function(_FileSelectedForUploadState value)?
        fileSelectedForUploadState,
    required TResult orElse(),
  }) {
    if (fileSelectedForUploadState != null) {
      return fileSelectedForUploadState(this);
    }
    return orElse();
  }
}

abstract class _FileSelectedForUploadState implements UploadArtistState {
  const factory _FileSelectedForUploadState(
          Future<StreamBuilder<TaskSnapshot>> uploadStatus) =
      _$_FileSelectedForUploadState;

  Future<StreamBuilder<TaskSnapshot>> get uploadStatus =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FileSelectedForUploadStateCopyWith<_FileSelectedForUploadState>
      get copyWith => throw _privateConstructorUsedError;
}
