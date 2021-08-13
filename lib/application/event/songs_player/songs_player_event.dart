part of 'songs_player_bloc.dart';

@freezed
class SongsPlayerEvent with _$SongsPlayerEvent {
  const factory SongsPlayerEvent.started() = _Started;
  const factory SongsPlayerEvent.onDurationChangedEvent(dynamic duration) =
      _OnDurationChangedEvent;
  const factory SongsPlayerEvent.onAudioPositionChangedEvent(dynamic position) =
      _OnAudioPositionChangedEvent;
  const factory SongsPlayerEvent.onPlayerCompletionEvent(
      String songId, String uid) = _OnPlayerCompletionEvent;
  const factory SongsPlayerEvent.fetchArtistSongsEvent() =
      _FetchArtistSongsEvent;
  const factory SongsPlayerEvent.generateOptionsEvent(
      dynamic gameModeFullSongList) = _GenerateOptionsEvent;
}
