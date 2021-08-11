part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.onHomePageState() = _OnHomePageState;
  const factory HomeState.navigatedToCreateEventPage() =
      _NavigatedToCreateEventPage;
  const factory HomeState.onCreateEventPage() = _onCreateEventPage;
  const factory HomeState.onMyEventsPage() = _OnMyEventsPage;
  const factory HomeState.navigatedToMyEventPage() = _NavigatedToMyEventPage;
  const factory HomeState.navigatedToSearchEventPage() =
      _NavigatedToSearchEventPage;
  const factory HomeState.onSearchEventsPage() = _OnSearchEventsPage;

  const factory HomeState.navigatedToJoinedEventPage() =
      _NavigatedToJoinedEventPage;
  const factory HomeState.onJoinedEventPage() = _OnJoinedEventPage;
  const factory HomeState.navigatedToUploadEventPage() =
      _NavigatedToUploadEventPage;
  const factory HomeState.onUploadEventPage() = _OnUploadEventPage;
  const factory HomeState.navigatedToUploadArtistEventPage() =
      _NavigatedToUploadArtistEventPage;
  const factory HomeState.onUploadArtistEventPage() = _OnUploadArtistEventPage;
}
