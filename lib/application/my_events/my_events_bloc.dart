import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_events_event.dart';
part 'my_events_state.dart';
part 'my_events_bloc.freezed.dart';

@injectable
class MyEventsBloc extends Bloc<MyEventsEvent, MyEventsState> {
  final IEventRepository _eventRepository;

  MyEventsBloc(this._eventRepository) : super(_Initial());

  @override
  Stream<MyEventsState> mapEventToState(
    MyEventsEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // Either<EventFailure, Unit> failureOrSuccess;
        // // Document received;
        // print('MY EVENTS BLOC <----');
        // failureOrSuccess = await _eventRepository.myEvents();

        dynamic received = await _eventRepository.myEvents();
        print('$received RECIEVED DATA <----');
        // // yield MyEventsState.initial();
        // yield await failureOrSuccess.fold(
        //   (l) => MyEventsState.noEventsCreated(),
        //   (data) {
        //     print('VKG $data');
        //     return MyEventsState.showEventsCreated(failureOrSuccess);
        //   },
        // );
        yield MyEventsState.showEventsCreated(received);
      },
      eventSelected: (e) async* {},
      onMyEventPage: (e) async* {
        print('Event = onMyEventPage inside MY EVENTS BLOC <----');
        // yield MyEventsState.initial();
        yield MyEventsState.onMyEventsPageState();
      },
      deleteEvent: (e) async* {
        print('Deleting Event');
        final possibleFailure = await _eventRepository.delete(
          Event(
              id: e.event.id,
              name: e.event.name,
              location: e.event.location,
              eventId: e.event.eventId,
              creatorId: e.event.creatorId),
        );
        yield possibleFailure.fold(
          (f) => MyEventsState.deletedFailedState(),
          (_) => const MyEventsState.deletedEventState(),
        );
        // yield MyEventsState.deletedEventState();
      },
      updateEvent: (e) async* {
        print('Updating Event');
        final possibleFailure = await _eventRepository.update(
          Event(
              id: e.event.id,
              name: e.event.name,
              location: e.event.location,
              eventId: e.event.eventId,
              creatorId: e.event.creatorId),
        );
        yield possibleFailure.fold(
          (f) => MyEventsState.updatedFailedState(),
          (_) => const MyEventsState.updatedEventState(),
        );
      },
    );
  }
}
