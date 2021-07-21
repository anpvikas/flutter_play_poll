import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_play_poll/domain/events/event_failure.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/infrastructure/events/event_dtos.dart';
import 'package:flutter_play_poll/infrastructure/core/firestore_helpers.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: IEventRepository)
class EventRepository implements IEventRepository {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;

  EventRepository(this._firestore, this._firebaseAuth);

  @override
  Future<Either<EventFailure, Unit>> create(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventDto = EventDto.fromDomain(event);

      print('${eventDto.creatorId} CREATOR <----');
      await _firestore
          .collection('events')
          .doc(eventDto.id)
          .set(eventDto.toJson());

      userDoc.createdEventCollection.doc(eventDto.id).set(eventDto.toJson());

      // await userDoc.eventCollection.doc().set(eventDto.toJson());

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

      // await _firestore
      //     .collection('users')
      //     .doc('${user!.uid}')
      //     .collection('createdEvents')
      //     .get()
      //     .then((QuerySnapshot querySnapshot) {
      //   querySnapshot.docs.forEach((doc) {
      //     print('${doc.data()} <-----REPO------');
      //     itemsList.add(doc.data());
      //   });
      // });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<Either<EventFailure, Unit>> join(Event event) async {
    // TODO: implement join
    throw UnimplementedError();
  }

  @override
  Future<Either<EventFailure, Unit>> view(Event event) async {
    // TODO: implement view
    throw UnimplementedError();
  }

  @override
  Future<Either<EventFailure, Unit>> delete(Event event) async {
    try {
      final userDoc = await _firestore.userDocument();
      final eventId = event.id.getOrCrash();

      await userDoc.createdEventCollection.doc(eventId).delete();
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

// final userDoc = _firestore
      //     .collection('users')
      //     .doc('events')
      //     .collection('eventCollection');

      // /${_firebaseAuth.currentUser!.uid}/

      // userDoc.add(
      //   {'event': _firebaseAuth.currentUser!.uid},
      // );

      // print(optionOf(_firebaseAuth!.currentUser!.uid));