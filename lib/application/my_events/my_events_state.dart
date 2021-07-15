part of 'my_events_bloc.dart';

@freezed
class MyEventsState with _$MyEventsState {
  const factory MyEventsState.initial() = _Initial;
  // const factory MyEventsState.showEventsCreated(
  //     Either<EventFailure, Unit> failureOrSuccess) = _ShowEventsCreated;
  const factory MyEventsState.showEventsCreated(dynamic data) =
      _ShowEventsCreated;

  const factory MyEventsState.onMyEventsPageState() = _OnMyEventsPageState;
  const factory MyEventsState.deletedEventState() = _DeletedEventState;
  const factory MyEventsState.deletedFailedState() = _DeletedFailedState;
  const factory MyEventsState.updatedEventState() = _UpdatedEventState;
  const factory MyEventsState.updatedFailedState() = _UpdatedFailedState;
  const factory MyEventsState.noEventsCreated() = _NoEventsCreated;
  const factory MyEventsState.eventViewed() = _EventViewed;
}
