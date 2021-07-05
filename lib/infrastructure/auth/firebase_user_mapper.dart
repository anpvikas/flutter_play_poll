import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_play_poll/domain/auth/user.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_play_poll/domain/auth/value_objects.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';

@lazySingleton
class FirebaseUserMapper {
  MyUser? toDomain(User _) {
    if (_ == null) {
      return null;
    } else {
      return MyUser(
        id: UniqueId.fromUniqueString(_.uid),
        name: StringSingleLine(_.displayName ?? _.email!.split('@').first),
        emailAddress: EmailAddress(_.email!),
      );
    }
  }
}
