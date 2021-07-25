import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_play_poll/domain/auth/i_auth_facade.dart';
import 'package:flutter_play_poll/domain/core/errors.dart';

import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:flutter_play_poll/domain/events/value_objects.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_dtos.freezed.dart';
part 'event_dtos.g.dart';

@freezed
abstract class EventDto with _$EventDto {
  factory EventDto({
    @JsonKey(ignore: true) String? id,
    // @JsonKey(ignore: true) String? eventId,
    required String eventId,
    required String creatorId,
    required String name,
    required String location,
  }) = _EventDto;

  factory EventDto.fromDomain(Event event) {
    return EventDto(
      id: event.id.getOrCrash(),
      eventId: event.id.getOrCrash(),
      creatorId: FirebaseAuth.instance.currentUser!.uid,
      name: event.name.getOrCrash(),
      location: event.location.getOrCrash(),
    );
  }

  factory EventDto.fromJson(Map<String, dynamic> json) =>
      _$EventDtoFromJson(json);

  factory EventDto.fromFirestore(DocumentSnapshot doc) {
    return EventDto.fromJson(doc.data() as Map<String,
            dynamic>) // data property is now changed to data() method
        .copyWith(id: doc.id);
  }
}

extension EventDtoX on EventDto {
  Event toDomain() {
    return Event(
        id: UniqueId.fromUniqueString(id!),
        eventId: UniqueId.fromUniqueString(id!),
        creatorId: FirebaseAuth.instance.currentUser!.uid,
        // creatorId: ' ',
        name: Name(name),
        location: Location(location));
  }
}
