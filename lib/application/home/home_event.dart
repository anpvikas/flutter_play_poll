part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.onHomePageEvent() = _OnHomePageEvent;
  const factory HomeEvent.createEventClicked() = _CreateEventClicked;
  const factory HomeEvent.onCreateEventPage() =
      _OnCreateEventPage; //Common for all other events to navigate back to the homepage
  const factory HomeEvent.onMyEventsPageEvent() = _OnMyEventsPageEvent;
  const factory HomeEvent.searchEventClicked() = _SearchEventClicked;
  const factory HomeEvent.onSearchEventsPageEvent() = _OnSearchEventsPageEvent;
  const factory HomeEvent.myEventClicked() = _MyEventClicked;
  const factory HomeEvent.joinedEventClicked() = _JoinedEventClicked;
  const factory HomeEvent.onJoinedEventsPageEvent() = _OnJoinedEventsPageEvent;
}
