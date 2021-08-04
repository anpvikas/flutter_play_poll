part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = _Initial;
  const factory EventState.showFetchedSongs(dynamic showFetchedSongs) =
      _ShowFetchedSongs;
  const factory EventState.incrementedVoteCount(String updatedVoteCount) =
      _IncrementedVoteCount;
  const factory EventState.getSignedInUserState(String userId) =
      _GetSignedInUserState;
}
