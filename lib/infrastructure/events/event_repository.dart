import 'dart:io';

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

      await _firestore.collection('users').doc(user!.uid).set({
        'displayName': user.displayName,
        'email': user.email,
        'uid': user.uid,
        'photoUrl': user.photoURL
      });

      final updatedUserDoc = await _firestore
          .collection('users')
          .doc(user.uid)
          .collection('createdEvents')
          .add(eventDto.toJson());

      await _firestore
          .collection('events')
          .doc(eventDto.id)
          .set(eventDto.toJson());

      // await userDoc.eventCollection.doc().set(eventDto.toJson());

      // userDoc.set({
      //   id: 'testId',
      //   name: StringSingleLine(user!.displayName.toString()),
      //   emailAddress: EmailAddress(user.email.toString()),
      //   photoUrl: PhotoUrl(user.photoURL.toString()),
      // }.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }

  // @override
  // Future<Either<EventFailure, Unit>> create(Event event) async {
  //   try {
  //     User? user = FirebaseAuth.instance.currentUser;
  //     print(user!.uid);
  //     final userDoc = _firestore
  //         .collection('users')
  //         .doc('${user.uid}')
  //         .collection('createdEvents');
  //     final eventDto = EventDto.fromDomain(event);
  //     await userDoc.doc(eventDto.id).set(eventDto.toJson());
  //     return right(unit);
  //   } on PlatformException catch (e) {
  //     // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
  //     if (e.message!.contains('PERMISSION_DENIED')) {
  //       return left(const EventFailure.insufficientPermissions());
  //     } else {
  //       return left(const EventFailure.unexpected());
  //     }
  //   }
  // }

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
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
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
          // print('${doc.data()} <-----fetching SONGS------');
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
      // updatedCount = (int.parse(currentVoteCount) + 1).toString();
      updatedCountList.add(updatedCount);
      print('INSIDE registerVote method <----');
      await _firestore
          .collection('users')
          .doc(uid)
          .collection('songs')
          .doc(songId)
          .update({
        'votes': FieldValue.arrayUnion(['${user!.uid}'])
        // 'votes': FieldValue.arrayUnion(['Test1'])
      });
      return updatedCountList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future resetVoteToZero(String songId, String uid) async {
    print('DATABASE <----');

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
  String getCurrentUserId() {
    User? user = FirebaseAuth.instance.currentUser;
    print('${user!.uid} <---- INSIDE METHOD - getCurrentUserId');
    return user.uid.toString();
  }

  // @override
  // // Future<Either<EventFailure, Unit>> myEvents() async {
  // Future myEvents() async {
  //   List itemList = [];
  //   try {
  //     User? user = FirebaseAuth.instance.currentUser;
  //     print(user!.uid);
  //     final userDoc = _firestore
  //         .collection('users')
  //         .doc('${user.uid}')
  //         .collection('createdEvents')
  //         .get()
  //         .then((QuerySnapshot querySnapshot) {
  //       querySnapshot.docs.forEach((doc) {
  //         print('${doc.data()} <-----REPO------');
  //         itemList.add(doc.data());
  //       });
  //       print('$itemList Item LIST <----');
  //       // return itemList;
  //     });

  //     print('$itemList **********');

  //     // return right(unit);
  //     return itemList;
  //   } on PlatformException catch (e) {
  //     print(e.toString());
  //     return null;
  //     //   // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
  //     //   if (e.message!.contains('PERMISSION_DENIED')) {
  //     //     return left(const EventFailure.insufficientPermissions());
  //     //   } else {
  //     //     return left(const EventFailure.unexpected());
  //     //   }
  //   }
  // }

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
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
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
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
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
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const EventFailure.insufficientPermissions());
      } else {
        return left(const EventFailure.unexpected());
      }
    }
  }
}
