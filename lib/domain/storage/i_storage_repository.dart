import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

abstract class IStorageRepository {
  Future selectSong();
  Future uploadSong();
  Future fileUploadStatus(UploadTask uploadFileTask);
}
