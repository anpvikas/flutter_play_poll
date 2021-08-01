part of 'upload_event_bloc.dart';

@freezed
class UploadEventState with _$UploadEventState {
  const factory UploadEventState.initial() = _Initial;
  const factory UploadEventState.selectSongFileState(
      FilePickerResult filePath) = _SelectSongFileState;

  const factory UploadEventState.uploadFileState(dynamic uploadStatusCurrent) =
      _UploadFileState;

  const factory UploadEventState.fileSelectedForUploadState(
          Future<StreamBuilder<TaskSnapshot>> uploadStatus) =
      _FileSelectedForUploadState;
}
