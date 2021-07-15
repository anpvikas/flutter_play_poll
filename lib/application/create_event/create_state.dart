part of 'create_bloc.dart';

@freezed
// abstract class CreateState with _$CreateState {
//   const factory CreateState({
//     required Event event,
//     required Name name,
//     required Location location,
//     required bool showErrorMessages,
//     required bool isEditing,
//     required bool isSaving,
//     required Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption,
//   }) = _EventState;

//   factory CreateState.initial() => CreateState(
//         event: Event.empty(),
//         isEditing: false,
//         isSaving: false,
//         saveFailureOrSuccessOption: none(),
//         location: Location(''),
//         name: Name(''),
//         showErrorMessages: false,
//       );

//   const factory CreateState.eventNameValidated() = _EventNameValidated;
//   const factory CreateState.eventCreated() = _EventCreated;
//   const factory CreateState.returnToHomePage() = _ReturnToHomePage;
//   const factory CreateState.onHomePageFromCreatePage() =
//       _OnHomePageFromCreatePage;
// }

class CreateState with _$CreateState {
  const factory CreateState.initial() = _Initial;
  const factory CreateState.eventNameValidated() = _EventNameValidated;
  const factory CreateState.eventLocationValidated() = _EventLocationValidated;
  const factory CreateState.eventCreated(
      // Name name,
      // Location location,
      // Option<Either<EventFailure, Unit>> saveFailureOrSuccessOption,
      ) = _EventCreated;

  const factory CreateState.returnToHomePage() = _ReturnToHomePage;
  const factory CreateState.onHomePageFromCreatePage() =
      _OnHomePageFromCreatePage;
  const factory CreateState.eventCreationFailed() = _EventCreationFailed;
}
