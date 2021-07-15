import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/domain/events/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_play_poll/domain/events/event_failure.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

@injectable
class CreateBloc extends Bloc<CreateEvent, CreateState> {
  final IEventRepository _eventRepository;

  CreateBloc(this._eventRepository) : super(CreateState.initial());

  // get location => Location('location');

  // get name => Name('name');

  // get id => UniqueId();

  Name? eventName;
  Location? eventLocation;
  @override
  Stream<CreateState> mapEventToState(
    CreateEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield CreateState.initial();
      },
      cancelButtonClicked: (e) async* {
        yield CreateState.returnToHomePage();
      },
      onHomePage: (e) async* {
        yield CreateState.onHomePageFromCreatePage();
      },
      validateEventName: (e) async* {
        print('${e.name} <------------');
        eventName = e.name;
        yield CreateState.eventNameValidated();
      },
      validateEventLocation: (e) async* {
        print('${e.location} <--------');
        eventLocation = e.location;
        yield CreateState.eventLocationValidated();
      },
      create: (e) async* {
        Either<EventFailure, Unit> failureOrSuccess;
        print('CREATE <----');
        // if (eventName == null && eventLocation == null) {
        //   yield CreateState.eventCreationFailed();
        // } else {
        failureOrSuccess = await _eventRepository.create(Event(
          id: UniqueId(),
          name: eventName!,
          location: eventLocation!,
          eventId: UniqueId(),
        ));

        eventLocation = Location('');
        eventName = Name('');
        yield CreateState.eventCreated();
      },
      // },
    );
  }
}
