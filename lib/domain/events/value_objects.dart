import 'package:flutter_play_poll/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/core/value_validators.dart';
import 'package:flutter_play_poll/domain/events/event.dart';

class Name extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Name(String input) {
    assert(input != null);
    return Name._(validateStringNotEmpty(input));
  }

  const Name._(this.value);
}

class Location extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Location(String input) {
    assert(input != null);
    return Location._(validateStringNotEmpty(input));
  }

  const Location._(this.value);
}
