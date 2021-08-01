part of 'upload_event_bloc.dart';

@freezed
class UploadEventEvent with _$UploadEventEvent {
  const factory UploadEventEvent.started() = _Started;
  const factory UploadEventEvent.selectSongFileClicked() =
      _SelectSongFileClicked;
  const factory UploadEventEvent.uplodFileClicked() = _UplodFileClicked;
  const factory UploadEventEvent.fileSelectedForUpload(
      UploadTask uploadFileTask) = _FileSelectedForUpload;
}
