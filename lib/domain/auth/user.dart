import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/auth/value_objects.dart';
import 'package:flutter_play_poll/domain/core/entity.dart';
import 'package:flutter_play_poll/domain/core/failures.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class MyUser with _$MyUser implements IEntity {
  const factory MyUser({
    required UniqueId id,
    required StringSingleLine name,
    required EmailAddress emailAddress,
    required PhotoUrl photoUrl,
  }) = _MyUser;
}

extension UserX on MyUser {
  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(emailAddress.failureOrUnit)
        .fold((l) => some(l), (r) => none());
  }
}
