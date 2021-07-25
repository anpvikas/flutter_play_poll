part of 'search_event_bloc.dart';

@freezed
class SearchEventState with _$SearchEventState {
  const factory SearchEventState.initial() = _Initial;
  const factory SearchEventState.showAllEvents(dynamic data) = _ShowAllEvents;
  const factory SearchEventState.searchResultsDisplayed(dynamic data) =
      _SearchResultsDisplayed;
  const factory SearchEventState.searchQueryStringExistsState(
      String queryString) = _SearchQueryStringExistsState;
  const factory SearchEventState.emptySearchState() = _EmptySearchState;
  const factory SearchEventState.noDataFetchedState() = _NoDataFetchedState;
  const factory SearchEventState.joinState() = _JoinState;
}
