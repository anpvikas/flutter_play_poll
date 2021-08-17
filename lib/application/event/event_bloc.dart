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
      gameModeVoteEvent: (e) async* {
        await _eventRepository.registerGameModeVote(
            e.songId, e.artistUid, e.voteSmiley);
        yield EventState.gameModeVoteState();
      },
      updateAppearedInOptionCountEvent: (e) async* {
        dynamic updatedCount =
            _eventRepository.updateAppearedInOptionCount(e.songId, e.artistUid);
        yield EventState.updateAppearedInOptionCountState(updatedCount);
      },
      showWinnerEvent: (e) async* {
        dynamic selectedWinner =
            await _eventRepository.decideGameModeWinner(e.eventId, e.songId);
        yield EventState.showWinnerState(selectedWinner);
      },
      createGameModeEntryEvent: (e) async* {
        await _eventRepository.createGameModeEntry(
            e.eventId, e.songId, e.artistUid);
        yield EventState.createGameModeEntryState();
      },
      votingStartedEvent: (e) async* {
        int value = 10;
        int output = 0;
        Timer votingTimer = Timer.periodic(Duration(seconds: 1), (votingTimer) {
          value = value - 1;
          print('FROM TIMER ----> $value');
          print(votingTimer.tick.toString());
          output = value;

          if (value == 0) {
            votingTimer.cancel();
          }
        });

        yield EventState.votingStartedState(votingTimer.tick.toString());
      },
    );
  }
}
