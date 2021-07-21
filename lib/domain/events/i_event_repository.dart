import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:flutter_play_poll/domain/events/event_failure.dart';

abstract class IEventRepository {
  Future<Either<EventFailure, Unit>> create(Event event);
  // Future<Either<EventFailure, Unit>> myEvents();
  Future myEvents();
  // Future<Either<EventFailure, Unit>> search(String event);
  Future allEventsFetched();
  Future search(String event);
  Future<Either<EventFailure, Unit>> view(Event event);
  Future<Either<EventFailure, Unit>> join(Event event);
  Future<Either<EventFailure, Unit>> update(Event event);
  Future<Either<EventFailure, Unit>> delete(Event event);
}
