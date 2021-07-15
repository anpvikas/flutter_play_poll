import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/create_event/create_bloc.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(_OnHomePageState());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    yield* event.map(
      onHomePageEvent: (e) async* {
        print('Back on HomePage');
        yield HomeState.onHomePageState();
      },
      createEventClicked: (e) async* {
        // yield AutoRoute(page: )
        print('Home Bloc Create Event Bloc <----');
        yield HomeState.navigatedToCreateEventPage();
      },
      searchEventClicked: (e) async* {},
      myEventClicked: (e) async* {
        print('Home Bloc My Event Bloc <----');
        yield HomeState.navigatedToMyEventPage();
      },
      joinedEventClicked: (e) async* {},
      onCreateEventPage: (e) async* {
        yield HomeState.onCreateEventPage();
      },
      onMyEventsPageEvent: (e) async* {
        print('GUESS-1');
        yield HomeState.onMyEventsPage();
      },
    );
  }
}
