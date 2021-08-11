part of 'upload_artist_bloc.dart';

@freezed
class UploadArtistEvent with _$UploadArtistEvent {
  const factory UploadArtistEvent.started() = _Started;
  const factory UploadArtistEvent.selectSongFileClicked() =
      _SelectSongFileClicked;
  const factory UploadArtistEvent.uplodFileClicked() = _UplodFileClicked;
  const factory UploadArtistEvent.fileSelectedForUpload(
      UploadTask uploadFileTask) = _FileSelectedForUpload;
}
