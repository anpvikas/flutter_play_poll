part of 'search_event_bloc.dart';

@freezed
class SearchEventEvent with _$SearchEventEvent {
  const factory SearchEventEvent.started() = _Started;
  const factory SearchEventEvent.searchButtonClicked(String queryString) =
      _SearchButtonClicked;
  const factory SearchEventEvent.searchQueryStringExistsEvent(
      String queryString) = _SearchQueryStringExistsEvent;
  const factory SearchEventEvent.emptySearchEvent() = _EmptySearchEvent;
  const factory SearchEventEvent.noDataFetchedEvent() = _NoDataFetchedEvent;
}
