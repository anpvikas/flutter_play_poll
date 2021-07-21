import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_play_poll/domain/auth/i_auth_facade.dart';
import 'package:flutter_play_poll/domain/core/errors.dart';
import 'package:flutter_play_poll/injection.dart';

extension FirestoreX on FirebaseFirestore {
  /// The user must be already authenticated when calling this method.
  /// Otherwise, throws [NotAuthenticatedError].
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get createdEventCollection => collection('createdEvents');
  CollectionReference get joinedEventCollection => collection('joinedEvents');
}
