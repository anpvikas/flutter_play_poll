part of 'songs_player_bloc.dart';

@freezed
class SongsPlayerState with _$SongsPlayerState {
  const factory SongsPlayerState.initial() = _Initial;
  const factory SongsPlayerState.onDurationChangedState(dynamic duration) =
      _OnDurationChangedState;
  const factory SongsPlayerState.onAudioPositionChangedState(dynamic position) =
      _OnAudioPositionChangedState;

  const factory SongsPlayerState.onPlayerCompletionState() =
      _OnPlayerCompletionState;
  const factory SongsPlayerState.fetchArtistSongsState(dynamic artistSongs) =
      _FetchArtistSongsState;
}
