import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/domain/events/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'joined_events_event.dart';
part 'joined_events_state.dart';
part 'joined_events_bloc.freezed.dart';

@injectable
class JoinedEventsBloc extends Bloc<JoinedEventsEvent, JoinedEventsState> {
  final IEventRepository _eventRepository;
  JoinedEventsBloc(this._eventRepository) : super(_Initial());

  @override
  Stream<JoinedEventsState> mapEventToState(
    JoinedEventsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        dynamic received = await _eventRepository.joinedEvents();
        // yield JoinedEventsState.initial();
        yield JoinedEventsState.showJoinedEvents(received);
      },
      onJoinedEventsPageEvent: (e) async* {
        yield JoinedEventsState.onJoinedEventsPageState();
      },
      unjoinEvent: (e) async* {
        dynamic received = await _eventRepository.unjoin(
          Event(
              id: UniqueId.fromUniqueString(e.data['eventId']),
              name: Name((e.data['name']).toString()),
              location: Location((e.data['location']).toString()),
              eventId: UniqueId.fromUniqueString(e.data['eventId']),
              creatorId: (e.data['creatorId']).toString()),
        );
        yield JoinedEventsState.unjoinState(received);
      },
      viewSelectedEvent: (e) async* {
        print('$e SELECTED EVENT<----');
        yield JoinedEventsState.viewSelectedEventState(e);
      },
    );
  }
}
