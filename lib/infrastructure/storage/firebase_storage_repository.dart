import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/storage/i_storage_repository.dart';
import 'package:flutter_play_poll/infrastructure/auth/firebase_user_mapper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: IStorageRepository)
class FirebaseStorageRepository implements IStorageRepository {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;
  final FirebaseFirestore _firestore;

  FirebaseStorageRepository(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
    this._firestore,
  );
  File? fileObj;
  FilePickerResult? result;
  UploadTask? uploadFileTask;

  @override
  Future selectSong() async {
    result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
    );

    if (result == null) return;
    this.fileObj = File(result!.files.single.path.toString());
    return result;
  }

  @override
  Future uploadSong() async {
    // Future<UploadTask?> uploadSong() async {
    // Future<Stream<TaskSnapshot>?> uploadSong() async {
    if (result != null) {
      String fileName = result!.files.first.name;
      String uid = _firebaseAuth.currentUser!.uid;

      String fileType = result!.files.first.extension.toString();

      print('$fileType <---- FILE TYPE');
      // Upload file under signed-in users folder

      // uploadFileTask = FirebaseStorage.instance
      //     .ref('$uid/songs/$fileName')
      //     .putFile(fileObj!);

      // fileObj = File('');
      // fileObj!.delete();
      // fileUploadStatus(uploadFileTask!);

      // uploadFileTask = FirebaseStorage.instance
      //     .ref('$uid/songs/$fileName')
      //     .putFile(fileObj!);

      UniqueId uniqueSongId = UniqueId();

      String songId = uniqueSongId.value.fold((l) => (l.failedValue), (r) => r);

      final snapshot = await (FirebaseStorage.instance
              // .ref('$uid/songs/$fileName')
              .ref('$uid/songs/$songId')
              .putFile(fileObj!))
          .whenComplete(() {});

      final widgetOutput = await fileUploadStatus(FirebaseStorage.instance
          // .ref('$uid/songs/$fileName')
          .ref('$uid/songs/$songId')
          .putFile(fileObj!));

      // final snapshot = await (uploadFileTask)!.whenComplete(() {});

      final downloadUrl = await snapshot.ref.getDownloadURL();
      print('$downloadUrl <---- DOWNLOAD URL');

      await _firestore
          .collection('users')
          .doc(uid)
          .collection('songs')
          .doc(songId)
          .set({
        'songId': songId,
        'songUrl': downloadUrl,
        'title': fileName,
        'uid': uid,
        'votes': []
      });
      // return uploadFileTask!;
      return widgetOutput;
    } else
      return null;
  }

  Future<Widget> fileUploadStatus(UploadTask? uploadFileTask) async {
    return StreamBuilder<TaskSnapshot>(
      stream: uploadFileTask!.snapshotEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('inside <----');
          print('${snapshot.data} <---- HAS DATA');
          final fileData = snapshot.data;
          final status =
              ((fileData!.bytesTransferred / fileData.totalBytes) * 100)
                  .toStringAsFixed(2);
          print('$status <---- STATUS PERCENTAGE');
          return Text(
            '$status % Uploaded',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          );
        } else {
          print('outside <----');
          return Text(
            'Uploading ... ',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          );
        }
      },
    );
  }

  @override
  Future uploadArtistSong() async {
    if (result != null) {
      String fileName = result!.files.first.name;
      String uid = _firebaseAuth.currentUser!.uid;
      final user = _firebaseAuth.currentUser!;

      String fileType = result!.files.first.extension.toString();

      print('$fileType <---- FILE TYPE FOR ARTIST');

      UniqueId uniqueSongId = UniqueId();

      String songId = uniqueSongId.value.fold((l) => (l.failedValue), (r) => r);

      final snapshot = await (FirebaseStorage.instance
              .ref('$uid/songs/$songId')
              .putFile(fileObj!))
          .whenComplete(() {});

      final widgetOutput = await fileUploadStatus(
          FirebaseStorage.instance.ref('$uid/songs/$songId').putFile(fileObj!));

      final downloadUrl = await snapshot.ref.getDownloadURL();
      print('$downloadUrl <---- DOWNLOAD URL');

      await _firestore.collection('artists').doc(uid).set({
        'displayName': user.displayName,
        'email': user.email,
        'uid': user.uid,
        'photoUrl': user.photoURL
      });

      await _firestore
          .collection('artists')
          .doc(uid)
          .collection('songs')
          .doc(songId)
          .set({
        'songId': songId,
        'songUrl': downloadUrl,
        'title': fileName,
        'artistUid': uid,
        'votes': [],
        'appearedInOption': 0
      });

      return widgetOutput;
    } else
      return null;
  }

  @override
  Future fetchArtistSongs() async {
    List itemsList = [];
    List items = [];
    List artistUid = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;
      await _firestore
          .collection('artists')
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) async {
          print('${doc.data()} <-----REPO-ARTISTS-SONGS------');
          items.add(doc.data());
        });
      });

      for (var item in items) {
        print('$item <---- PRINTING ITEM');
        artistUid.add(item['uid']);
      }

      print('$artistUid <---- ARTIST UID ');

      for (var artist in artistUid) {
        await _firestore
            .collection('artists')
            .doc(artist)
            .collection('songs')
            .get()
            .then(
          (QuerySnapshot _querySnapshot) {
            _querySnapshot.docs.forEach(
              (doc) {
                print('${doc.data()} <-----REPO------');
                itemsList.add(doc.data());
              },
            );
          },
        );
      }

      print('$itemsList <---- ITEMS RETURNED ----');
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future generateSongOptions(gameModeFullSongList) async {
    List itemsList = [];
    Random random = Random();

    try {
      // print('----------> INSIDE STORAGE REPO $gameModeFullSongList ');

      itemsList = List.generate(
          2,
          (_) => gameModeFullSongList[
              random.nextInt(gameModeFullSongList.length)]);

      // for (var song in gameModeFullSongList) {
      //   print('${song['votes'].length} <---- PRINTING ITEM Length');
      // }
      print('------> FINAL SONG OPTIONS $itemsList ');

      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
