part of 'my_events_bloc.dart';

@freezed
class MyEventsEvent with _$MyEventsEvent {
  const factory MyEventsEvent.started() = _Started;
  const factory MyEventsEvent.onMyEventPage() = _OnMyEventPage;
  const factory MyEventsEvent.deleteEvent(Event event) = _DeleteEvent;
  const factory MyEventsEvent.updateEvent(Event event) = _UpdateEvent;
  const factory MyEventsEvent.eventSelected() = _EventSelected;
}
