import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

@injectable
class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc() : super(_Initial());

  @override
  Stream<CreateState> mapEventToState(
    CreateEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield CreateState.initial();
    }, cancelButtonClicked: (e) async* {
      yield CreateState.returnToHomePage();
    }, onHomePage: (e) async* {
      yield CreateState.onHomePageFromCreatePage();
    }, validateEventName: (e) async* {
      yield CreateState.eventNameValidated();
    }, create: (e) async* {
      yield CreateState.eventCreated();
    });
  }
}
