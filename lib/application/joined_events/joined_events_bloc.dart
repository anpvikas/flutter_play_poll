import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
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
    );
  }
}
