part of 'create_bloc.dart';

@freezed
class CreateEvent with _$CreateEvent {
  const factory CreateEvent.started() = _Started;
  const factory CreateEvent.validateEventName(Name name) = _ValidateEventName;
  const factory CreateEvent.validateEventLocation(Location location) =
      _ValidateEventLocation;
  const factory CreateEvent.create() = _Create;
  const factory CreateEvent.cancelButtonClicked() = _CancelButtonClicked;
  const factory CreateEvent.onHomePage() = _OnHomePage;
}
