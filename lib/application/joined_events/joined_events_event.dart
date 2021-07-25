part of 'joined_events_bloc.dart';

@freezed
class JoinedEventsEvent with _$JoinedEventsEvent {
  const factory JoinedEventsEvent.started() = _Started;
  const factory JoinedEventsEvent.onJoinedEventsPageEvent() =
      _OnJoinedEventsPageEvent;
}
