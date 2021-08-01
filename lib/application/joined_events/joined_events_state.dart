part of 'joined_events_bloc.dart';

@freezed
class JoinedEventsState with _$JoinedEventsState {
  const factory JoinedEventsState.initial() = _Initial;
  const factory JoinedEventsState.showJoinedEvents(dynamic data) =
      _ShowJoinedEvents;
  const factory JoinedEventsState.onJoinedEventsPageState() =
      _OnJoinedEventsPageState;
  const factory JoinedEventsState.unjoinState(dynamic data) = _UnjoinState;
  const factory JoinedEventsState.viewSelectedEventState(dynamic data) =
      _ViewSelectedEventState;
}
