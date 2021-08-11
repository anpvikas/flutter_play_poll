part of 'event_bloc.dart';

@freezed
class EventEvent with _$EventEvent {
  const factory EventEvent.started(dynamic data) = _Started;
  const factory EventEvent.displaySongs(dynamic data) = _DisplaySongs;
  const factory EventEvent.incrementVoteCount(String songId, String uid) =
      _IncrementVoteCount;
  const factory EventEvent.getSignedInUserEvent() = _GetSignedInUserEvent;
}
