import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

abstract class IStorageRepository {
  Future selectSong();
  Future uploadSong();
  Future uploadArtistSong();
  Future fetchArtistSongs();
  Future generateSongOptions(dynamic gameModeFullSongList);
  Future fileUploadStatus(UploadTask uploadFileTask);
}
