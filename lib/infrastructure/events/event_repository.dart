import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:flutter/services.dart';

import 'package:flutter_play_poll/domain/events/event_failure.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/infrastructure/auth/firebase_user_mapper.dart';
import 'package:flutter_play_poll/infrastructure/events/event_dtos.dart';
import 'package:flutter_play_poll/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: IEventRepository)
class EventRepository implements IEventRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FirebaseUserMapper _firebaseUserMapper;
  // final FirebaseStorage _firebaseStorage;

  var id;

  var name;

  var emailAddress;

  var photoUrl;

  EventRepository(
    this._firestore,
    this._firebaseAuth,
    this._firebaseUserMapper,
  );

  @override
  Future<Either<EventFailure, Unit>> create(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventDto = EventDto.fromDomain(event);
      print('${_firebaseAuth.currentUser} CURRENT USER<-----');

      final user = _firebaseAuth.currentUser;
      print('${eventDto.creatorId} CREATOR <----');

      /// Create the user
      await _firestore.collection('users').doc(user!.uid).set({
        'displayName': user.displayName,
        'email': user.email,
        'uid': user.uid,
        'photoUrl': user.photoURL
      });

      /// Create the evnet entry under the logged-in user
      final updatedUserDoc = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('createdEvents')
          .add(eventDto.toJson());

      /// Create the event entry in the events collection
      await _firestore
          .collection('events')
          .doc(eventDto.id)
          .set(eventDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }

  @override
  Future myEvents() async {
    List itemsList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;

      await _firestore
          .collection('users')
          .doc('${user!.uid}')
          .collection('createdEvents')
          .where('creatorId', isEqualTo: user.uid)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          print('${doc.data()} <-----REPO------');
          itemsList.add(doc.data());
        });
      });

      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<Either<EventFailure, Unit>> join(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventDto = EventDto.fromDomain(event);
      User? user = FirebaseAuth.instance.currentUser;
      print('${eventDto.creatorId} CREATOR <----');

      if (event.creatorId == user!.uid) {
        print('The creator dont need to join their events <----');
        return left(const EventFailure.insufficientPermissions());
      }

      await _firestore.collection('users').doc(user.uid).set({
        'displayName': user.displayName,
        'email': user.email,
        'uid': user.uid,
        'photoUrl': user.photoURL
      });

      _firestore
          .collection('events')
          .doc(eventDto.id)
          .collection('members')
          .doc(user.uid)
          .set(
            EventDto(
              eventId: eventDto.eventId,
              creatorId: event.creatorId,
              name: eventDto.name,
              location: eventDto.location,
            ).toJson(),
          );

      // .set(eventDto.toJson());

      userDoc.joinedEventCollection.doc(eventDto.id).set(EventDto(
            eventId: eventDto.eventId,
            creatorId: event.creatorId,
            name: eventDto.name,
            location: eventDto.location,
          ).toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }

  @override
  Future joinedEvents() async {
    List itemsList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;
      await _firestore
          .collection('users')
          .doc('${user!.uid}')
          .collection('joinedEvents')
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          // print('${doc.data()} <-----REPO------');
          itemsList.add(doc.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future fetchCreatorSongs(String creatorId) async {
    List itemsList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;
      await _firestore
          .collection('users')
          .doc(creatorId)
          .collection('songs')
          .orderBy('votes', descending: true)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          itemsList.add(doc.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future incrementSongVote(
      String currentVoteCount, String songId, String uid) async {
    List updatedCountList = [];
    try {
      String updatedCount = '0';
      updatedCount = (int.parse(currentVoteCount) + 1).toString();
      updatedCountList.add(updatedCount);

      await _firestore
          .collection('users')
          .doc(uid)
          .collection('songs')
          .doc(songId)
          .update({'votes': updatedCount});
      return updatedCountList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future registerVote(String songId, String uid) async {
    List updatedCountList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;
      String updatedCount = '0';

      updatedCountList.add(updatedCount);

      await _firestore
          .collection('users')
          .doc(uid)
          .collection('songs')
          .doc(songId)
          .update({
        'votes': FieldValue.arrayUnion(['${user!.uid}'])
      });
      return updatedCountList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// ------------------------------------------------------------------------///
  /// ------------------------ RESET SONG VOTE TO ZERO -----------------------///
  /// ------------------------------------------------------------------------///
  @override
  Future resetVoteToZero(String songId, String uid) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      String updatedCount = '0';

      print('INSIDE resetVoteToZero method <----');
      await _firestore
          .collection('users')
          .doc(uid)
          .collection('songs')
          .doc(songId)
          .update({'votes': []});
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future updateAppearedInOptionCount(String songId, String artistUid) async {
    print('DATABASE <----');

    try {
      _firestore
          .collection('artists')
          .doc(artistUid)
          .collection('songs')
          .doc(songId)
          .update(
        {'appearedInOption': FieldValue.increment(1)},
      );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// ------------------------------------------------------------------------///
  /// ------------------------- CREATE GAME MODE ENTRY -----------------------///
  /// ------------------------------------------------------------------------///

  @override
  Future createGameModeEntry(
      String eventId, String songId, String artistUid) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      print('INSIDE createGameModeEntry method <----');
      await _firestore.collection('game_mode').doc().set(
        {
          'eventId': eventId,
          'songId': songId,
          'artistUid': artistUid,
          'yesVotes': [],
          'noVotes': [],
          'winner': '',
          'isSongPlayed': true,
          'dateTimeStamp': DateTime.now()
        },
      );
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// ------------------------------------------------------------------------///
  /// ------------------------ REGISTER GAME MODE VOTE -----------------------///
  /// ------------------------------------------------------------------------///

  @override
  Future registerGameModeVote(
      String songId, String artistUid, String voteSmiley) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;

      print('INSIDE registerGameModeVote method <----');

      _firestore
          .collection('game_mode')
          .orderBy('dateTimeStamp', descending: true)
          .limit(1)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            if (voteSmiley == 'sentiment_very_dissatisfied') {
              _firestore.collection('game_mode').doc(doc.id).update({
                'noVotes': FieldValue.arrayUnion(['${user!.uid}'])
              });
            } else {
              _firestore.collection('game_mode').doc(doc.id).update({
                'yesVotes': FieldValue.arrayUnion(['${user!.uid}'])
              });
            }
          },
        );
      });
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// ------------------------------------------------------------------------///
  /// ----------------------------- GAME-MODE WINNER -------------------------///
  /// ------------------------------------------------------------------------///

  @override
  Future decideGameModeWinner(String eventId, String songId) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      Random random = Random();
      List gameModeFullData = [];
      List yesVotesList = [];
      List noVotesList = [];
      String winnerUid = '';
      List winnerData = [];
      String documentId = '';

      print('INSIDE decideGameModeWinner method <----');

      await _firestore
          .collection('game_mode')
          .where('eventId', isEqualTo: eventId)
          .where('songId', isEqualTo: songId)
          .orderBy('dateTimeStamp', descending: true)
          .limit(1)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            gameModeFullData.add(doc.data());
            documentId = doc.id;
          },
        );
      });

      print('~~~~> gameModeFullData - ${gameModeFullData}');
      yesVotesList = gameModeFullData[0]['yesVotes'];
      print('~~~~> gameModeFullData YES - ${gameModeFullData[0]['yesVotes']}');
      print('yesVotesList - $yesVotesList');

      noVotesList = gameModeFullData[0]['noVotes'];
      print('~~~~> gameModeFullData NO - ${gameModeFullData[0]['noVotes']}');
      print('noVotesList - $noVotesList');

      if (yesVotesList.length >= noVotesList.length) {
        winnerUid = yesVotesList[random.nextInt(yesVotesList.length)];
      } else {
        winnerUid = noVotesList[random.nextInt(noVotesList.length)];
        await _firestore.collection('game_mode').doc(documentId).update({
          'isSongPlayed': false,
        });
      }
      await _firestore.collection('game_mode').doc(documentId).update({
        'winner': winnerUid,
      });

      await _firestore
          .collection('users')
          .where('uid', isEqualTo: winnerUid)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach(
          (doc) {
            winnerData.add(doc.data());
          },
        );
      });

      /// Below code is to add the vote counts to the winnerData list
      /// to show it on the game mode page

      /// Zero length check
      if (yesVotesList.length == 0) {
        winnerData.add(0);
      } else {
        winnerData.add(yesVotesList.length);
      }

      /// Zero length check
      if (noVotesList.length == 0) {
        winnerData.add(0);
      } else {
        winnerData.add(noVotesList.length);
      }

      // return yesVotesList[random.nextInt(yesVotesList.length)];
      return winnerData;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  /// ------------------------------------------------------------------------///
  /// ------------------------------ ARTIST REPORT ---------------------------///
  /// ------------------------------------------------------------------------///
  @override
  Future artistReport() async {
    List artistData = [];
    List items = [];
    List gameModeDocIdsForLoggedInArtist = [];

    ///----------------------
    List songIdList = [];
    List songNameList = [];
    List timesSongAppearedAsOption = [];
    List yesCountList = [];
    List noCountList = [];
    List isSongPlayedCountList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;

      /// Prepairing the list of Song Ids for the current logged in Artist
      await _firestore
          .collection('artists')
          .doc(user!.uid)
          .collection('songs')
          .where('artistUid', isEqualTo: user.uid)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          songIdList.add(doc.id);
          songNameList.add(doc.get('title'.split('.')[0]));
        });
      });

      // print('songIdList --> $songIdList');
      // print('songNameList --> $songNameList');

      /// Iterating for each song in the songIdList and performing analysis

      for (var songId in songIdList) {
        await _firestore
            .collection('game_mode')
            .where('songId', isEqualTo: songId)
            .get()
            .then((QuerySnapshot querySnapshot) {
          // print(songId + '-' + querySnapshot.size.toString());
          timesSongAppearedAsOption.add(querySnapshot.size.toString());

          int yesCount = 0;
          int noCount = 0;
          int isSongPlayedCount = 0;
          querySnapshot.docs.forEach((doc) {
            /// FETCHING YES COUNT - HAPPY SMILEY
            yesCount =
                yesCount + int.parse(((doc.get('yesVotes')).length.toString()));

            /// FETCHING NO COUNT - SAD SMILEY
            noCount =
                noCount + int.parse(((doc.get('noVotes')).length.toString()));

            /// FETCHING NUMBER OF TIMES THE SONG GOT PLAYED
            if (doc.get('isSongPlayed') == true) {
              isSongPlayedCount = isSongPlayedCount + 1;
            }
          });
          yesCountList.add(yesCount.toString());
          noCountList.add(noCount.toString());
          isSongPlayedCountList.add(isSongPlayedCount.toString());
        });
      }

      // print('timesSongAppearedAsOption --> $timesSongAppearedAsOption');
      // print('isSongPlayedCountList --> $isSongPlayedCountList');
      // print('yesCountList --> $yesCountList');
      // print('noCountList --> $noCountList');

      artistData.add(songIdList);
      artistData.add(songNameList);
      artistData.add(timesSongAppearedAsOption);
      artistData.add(isSongPlayedCountList);
      artistData.add(yesCountList);
      artistData.add(noCountList);

      return artistData;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  String getCurrentUserId() {
    User? user = FirebaseAuth.instance.currentUser;
    print('${user!.uid} <---- INSIDE METHOD - getCurrentUserId');
    return user.uid.toString();
  }

  @override
  Future<Either<EventFailure, Unit>> update(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventDto = EventDto.fromDomain(event);
      final eventId = event.id.getOrCrash();

      await userDoc.createdEventCollection
          .doc(eventDto.id)
          .update(eventDto.toJson());

      await _firestore
          .collection('events')
          .doc(eventId)
          .update(eventDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }

  @override
  Future allEventsFetched() async {
    List itemsList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;

      await _firestore
          .collection('events')
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          print('${doc.data()} <-----REPO------');
          itemsList.add(doc.data());
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future search(String inputText) async {
    List itemsList = [];

    try {
      User? user = FirebaseAuth.instance.currentUser;

      await _firestore
          .collection('events')
          .where('name', isEqualTo: inputText)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((doc) {
          print('${doc.data()} <-----REPO------');
          itemsList.add(doc.data());
        });
      });

      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<Either<EventFailure, Unit>> view(Event event) async {
    // TODO: implement view
    throw UnimplementedError();
  }

  @override
  Future<Either<EventFailure, Unit>> unjoin(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventId = event.id.getOrCrash();
      final user = _firebaseAuth.currentUser;

      await _firestore
          .collection('users')
          .doc(user!.uid)
          .collection('joinedEvents')
          .where('eventId', isEqualTo: eventId)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((element) {
          print('${element.id} <<<<-UNJOIN_AFTERDELETE----');
          _firestore
              .collection('users')
              .doc(user.uid)
              .collection('joinedEvents')
              .doc(element.id)
              .delete();
        });
      });

      /// --------------------------------------------------------------------
      /// Delete the members of the deleted event
      /// --------------------------------------------------------------------
      await _firestore
          .collection('events')
          .doc(eventId)
          .collection('members')
          .doc(user.uid)
          .delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<EventFailure, Unit>> delete(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventId = event.id.getOrCrash();
      final user = _firebaseAuth.currentUser;
// If a user deleted an event then the event should get deleted from:
//                1. events collection
      // events > doc > members
//                2. createdEvents collection for the creator
//                3. from users collection joined events for other users
      /// --------------------------------------------------------------------
      /// 2-Delete the event from createdEvent collection
      /// --------------------------------------------------------------------
      // await userDoc.createdEventCollection.doc(eventId).delete();
      await _firestore
          .collection('users')
          .doc(user!.uid)
          .collection('createdEvents')
          .where('eventId', isEqualTo: eventId)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((element) {
          print('${element.id} <<<<-AFTERDELETE----');
          _firestore
              .collection('users')
              .doc(user.uid)
              .collection('createdEvents')
              .doc(element.id)
              .delete();
        });
      });

      /// --------------------------------------------------------------------
      /// 3-Delete the event from joinedEvent collection for other users/members
      /// --------------------------------------------------------------------

      await _firestore
          .collection('users')
          .where('uid', isNotEqualTo: user.uid)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((element) {
          print('${element.id} <<<<-AFTERJOINED_DELETE----');

          _firestore
              .collection('users')
              .doc(element.id)
              .collection('joinedEvents')
              // .where('eventId', isEqualTo: eventId)
              .doc(eventId)
              .delete();
        });
      });

      /// --------------------------------------------------------------------
      /// Delete the members of the deleted event
      /// --------------------------------------------------------------------
      await _firestore
          .collection('events')
          .doc(eventId)
          .collection('members')
          .where('eventId', isEqualTo: eventId)
          .get()
          .then((QuerySnapshot querySnapshot) {
        querySnapshot.docs.forEach((element) {
          print('${element.id} <<<<-AFTERDELETE----');
          _firestore
              .collection('events')
              .doc(eventId)
              .collection('members')
              .doc(element.id)
              .delete();
        });
      });

      /// Delete the event from the events collection
      await _firestore.collection('events').doc(eventId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }
}
