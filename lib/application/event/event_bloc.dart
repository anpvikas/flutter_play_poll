import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_play_poll/domain/auth/i_auth_facade.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event_event.dart';
part 'event_state.dart';
part 'event_bloc.freezed.dart';

@injectable
class EventBloc extends Bloc<EventEvent, EventState> {
  final IEventRepository _eventRepository;

  EventBloc(this._eventRepository) : super(_Initial());

  // static get fetchEventSongs => fetchEventSongs;

  @override
  Stream<EventState> mapEventToState(
    EventEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        print('On Main Event page ${e.data}');
        dynamic received = await _eventRepository.fetchCreatorSongs(e.data);
        print('$received <---- INSIDE Bloc');
        // yield EventState.initial();
        yield EventState.showFetchedSongs(received);
      },
      displaySongs: (e) async* {
        yield EventState.displayFetchedSongs(e.data);
      },
      incrementVoteCount: (e) async* {
        // print('${e.currentVoteCount} INSIDE Increment <----');

        // dynamic received = await _eventRepository.incrementSongVote(
        //     e.currentVoteCount, e.songId, e.uid);

        dynamic received = await _eventRepository.registerVote(e.songId, e.uid);
        yield EventState.incrementedVoteCount('$received');
      },
      getSignedInUserEvent: (e) async* {
        dynamic userId = _eventRepository.getCurrentUserId();
        yield EventState.getSignedInUserState(userId.toString());
      },
    );
  }
}
