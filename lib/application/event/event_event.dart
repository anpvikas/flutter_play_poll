part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.started(dynamic data) = _Started;
  const factory EventEvent.displaySongs(dynamic data) = _DisplaySongs;
  const factory EventEvent.incrementVoteCount(String songId, String uid) =
      _IncrementVoteCount;
  const factory EventEvent.getSignedInUserEvent() = _GetSignedInUserEvent;
  const factory EventEvent.gameModeVoteEvent(
      String songId, String artistUid, String voteSmiley) = _GameModeVoteEvent;
  const factory EventEvent.updateAppearedInOptionCountEvent(
      String songId, String artistUid) = _UpdateAppearedInOptionCountEvent;

  const factory EventEvent.createGameModeEntryEvent(
          String eventId, String songId, String artistUid) =
      _CreateGameModeEntryEvent;

  const factory EventEvent.votingStartedEvent() = _VotingStartedEvent;

  const factory EventEvent.showWinnerEvent(String eventId, String songId) =
      _ShowWinnerEvent;
}
