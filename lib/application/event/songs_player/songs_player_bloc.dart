import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/domain/storage/i_storage_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'songs_player_event.dart';
part 'songs_player_state.dart';
part 'songs_player_bloc.freezed.dart';

@injectable
class SongsPlayerBloc extends Bloc<SongsPlayerEvent, SongsPlayerState> {
  final IEventRepository _eventRepository;
  final IStorageRepository _iStorageRepository;
  SongsPlayerBloc(this._eventRepository, this._iStorageRepository)
      : super(_Initial());

  @override
  Stream<SongsPlayerState> mapEventToState(
    SongsPlayerEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield SongsPlayerState.initial();
      },
      onAudioPositionChangedEvent: (e) async* {
        yield SongsPlayerState.onAudioPositionChangedState(e.position);
      },
      onDurationChangedEvent: (e) async* {
        yield SongsPlayerState.onDurationChangedState(e.duration);
      },
      onPlayerCompletionEvent: (e) async* {
        dynamic received =
            await _eventRepository.resetVoteToZero(e.songId, e.uid);
        yield SongsPlayerState.onPlayerCompletionState();
      },
      fetchArtistSongsEvent: (e) async* {
        dynamic received = await _iStorageRepository.fetchArtistSongs();

        print('\n HERE \n $received <----');
        yield SongsPlayerState.fetchArtistSongsState(received);
      },
      generateOptionsEvent: (e) async* {
        print('\n INSIDE generateOptionsEvent Bloc Event <---- \n');
        dynamic received = await _iStorageRepository
            .generateSongOptions(e.gameModeFullSongList);
        yield SongsPlayerState.generateOptionsState(received);
      },
    );
  }
}
