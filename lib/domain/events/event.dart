import 'package:flutter_play_poll/domain/core/entity.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/events/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
abstract class Event with _$Event implements IEntity {
  const factory Event({
    required UniqueId id,
    required Name name,
    required Location location,
    required UniqueId eventId,
  }) = _Event;

  factory Event.empty() => Event(
        id: UniqueId(),
        eventId: UniqueId(),
        name: Name(''),
        location: Location(''),
      );
}

// extension EventX on Event {}
