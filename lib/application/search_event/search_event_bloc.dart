import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_event_event.dart';
part 'search_event_state.dart';
part 'search_event_bloc.freezed.dart';

@injectable
class SearchEventBloc extends Bloc<SearchEventEvent, SearchEventState> {
  final IEventRepository _eventRepository;
  SearchEventBloc(this._eventRepository) : super(_Initial());

  @override
  Stream<SearchEventState> mapEventToState(
    SearchEventEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // yield SearchEventState.initial();
        dynamic received = await _eventRepository.allEventsFetched();
        print('$received RECIEVED ALL EVENTS DATA <----');
        yield SearchEventState.showAllEvents(received);
      },
      searchButtonClicked: (e) async* {
        dynamic received = await _eventRepository.search(e.queryString);
        print('$received RECIEVED SEARCH RESULTS DATA ${e.queryString}<----');
        // yield SearchEventState.searchResultsDisplayed(received);
        if (received.length > 0) {
          print('1 - SOME DATA RECEIVED <~~~~');
          yield SearchEventState.searchResultsDisplayed(received);
        } else {
          print('2 - NO DATA in Search BLoC <~~~~');
          yield SearchEventState.noDataFetchedState();
        }
      },
      emptySearchEvent: (e) async* {
        yield SearchEventState.emptySearchState();
      },
      noDataFetchedEvent: (e) async* {
        yield SearchEventState.noDataFetchedState();
      },
      searchQueryStringExistsEvent: (e) async* {
        yield SearchEventState.searchQueryStringExistsState(e.queryString);
      },
    );
  }
}
