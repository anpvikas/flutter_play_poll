part of 'create_bloc.dart';

@freezed
class CreateState with _$CreateState {
  const factory CreateState.initial() = _Initial;
  const factory CreateState.eventNameValidated() = _EventNameValidated;
  const factory CreateState.eventCreated() = _EventCreated;
  const factory CreateState.returnToHomePage() = _ReturnToHomePage;
  const factory CreateState.onHomePageFromCreatePage() =
      _OnHomePageFromCreatePage;
}
