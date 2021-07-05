import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_play_poll/domain/auth/auth_failure.dart';
import 'package:flutter_play_poll/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Option<MyUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
