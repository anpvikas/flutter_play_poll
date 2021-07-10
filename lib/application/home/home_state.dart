part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.onHomePageState() = _OnHomePageState;
  const factory HomeState.navigatedToCreateEventPage() =
      _NavigatedToCreateEventPage;
  const factory HomeState.onCreateEventPage() = _onCreateEventPage;
  const factory HomeState.navigatedToSearchEventPage() =
      _NavigatedToSearchEventPage;
  const factory HomeState.navigatedToMyEventPage() = _NavigatedToMyEventPage;
  const factory HomeState.navigatedToJoinedEventPage() =
      _NavigatedToJoinedEventPage;
}
