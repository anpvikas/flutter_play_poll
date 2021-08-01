import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/domain/storage/i_storage_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'upload_event_event.dart';
part 'upload_event_state.dart';
part 'upload_event_bloc.freezed.dart';

@injectable
class UploadEventBloc extends Bloc<UploadEventEvent, UploadEventState> {
  final IEventRepository _iEventRepository;
  final IStorageRepository _iStorageRepository;
  UploadEventBloc(
    this._iEventRepository,
    this._iStorageRepository,
  ) : super(_Initial());

  @override
  Stream<UploadEventState> mapEventToState(
    UploadEventEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield UploadEventState.initial();
      },
      selectSongFileClicked: (e) async* {
        // print(await _iEventRepository.selectSong().toString());
        // dynamic filePath = File(await _iEventRepository.selectSong());

        dynamic filePath = await _iStorageRepository.selectSong();

        // if (fileObj != null) {
        //   print(fileObj.path);
        // }
        yield UploadEventState.selectSongFileState(filePath);
      },
      uplodFileClicked: (e) async* {
        dynamic uploadFileTask = await _iStorageRepository.uploadSong();
        // dynamic statusWidget =
        //     await _iStorageRepository.fileUploadStatus(uploadFileTask);

        yield UploadEventState.uploadFileState(uploadFileTask);
        // yield UploadEventState.uploadFileState(statusWidget);
      },
      fileSelectedForUpload: (e) async* {
        dynamic statusWidget =
            _iStorageRepository.fileUploadStatus(e.uploadFileTask);
        yield UploadEventState.fileSelectedForUploadState(statusWidget);
      },
    );
  }
}
