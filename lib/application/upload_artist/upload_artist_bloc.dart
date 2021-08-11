import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/domain/storage/i_storage_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_artist_event.dart';
part 'upload_artist_state.dart';
part 'upload_artist_bloc.freezed.dart';

@injectable
class UploadArtistBloc extends Bloc<UploadArtistEvent, UploadArtistState> {
  UploadArtistBloc(this._iEventRepository, this._iStorageRepository)
      : super(_Initial());
  final IEventRepository _iEventRepository;
  final IStorageRepository _iStorageRepository;

  @override
  Stream<UploadArtistState> mapEventToState(
    UploadArtistEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield UploadArtistState.initial();
      },
      selectSongFileClicked: (e) async* {
        // print(await _iEventRepository.selectSong().toString());
        // dynamic filePath = File(await _iEventRepository.selectSong());

        dynamic filePath = await _iStorageRepository.selectSong();

        // if (fileObj != null) {
        //   print(fileObj.path);
        // }
        yield UploadArtistState.selectSongFileState(filePath);
      },
      uplodFileClicked: (e) async* {
        dynamic uploadFileTask = await _iStorageRepository.uploadArtistSong();
        // dynamic statusWidget =
        //     await _iStorageRepository.fileUploadStatus(uploadFileTask);

        yield UploadArtistState.uploadFileState(uploadFileTask);
        // yield UploadArtistState.uploadFileState(statusWidget);
      },
      fileSelectedForUpload: (e) async* {
        dynamic statusWidget =
            _iStorageRepository.fileUploadStatus(e.uploadFileTask);
        yield UploadArtistState.fileSelectedForUploadState(statusWidget);
      },
    );
  }
}
