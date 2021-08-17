part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = _Initial;
  const factory EventState.showFetchedSongs(dynamic showFetchedSongs) =
      _ShowFetchedSongs;
  const factory EventState.displayFetchedSongs(dynamic displayFetchedSongs) =
      _DisplayFetchedSongs;
  const factory EventState.incrementedVoteCount(String updatedVoteCount) =
      _IncrementedVoteCount;
  const factory EventState.getSignedInUserState(String userId) =
      _GetSignedInUserState;
  const factory EventState.gameModeVoteState() = _GameModeVoteState;
  const factory EventState.updateAppearedInOptionCountState(
      dynamic updatedCountInOption) = _UpdateAppearedInOptionCountState;

  const factory EventState.createGameModeEntryState() =
      _CreateGameModeEntryState;
  const factory EventState.votingStartedState(String timerValue) =
      _VotingStartedState;
  const factory EventState.showWinnerState(List winner) = _ShowWinnerState;
}
