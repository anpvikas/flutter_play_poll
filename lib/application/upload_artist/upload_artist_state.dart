part of 'upload_artist_bloc.dart';

@freezed
class UploadArtistState with _$UploadArtistState {
  const factory UploadArtistState.initial() = _Initial;
  const factory UploadArtistState.selectSongFileState(
      FilePickerResult filePath) = _SelectSongFileState;

  const factory UploadArtistState.uploadFileState(dynamic uploadStatusCurrent) =
      _UploadFileState;

  const factory UploadArtistState.fileSelectedForUploadState(
          Future<StreamBuilder<TaskSnapshot>> uploadStatus) =
      _FileSelectedForUploadState;
}
