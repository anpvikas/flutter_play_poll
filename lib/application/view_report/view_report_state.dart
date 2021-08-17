part of 'view_report_bloc.dart';

@freezed
class ViewReportState with _$ViewReportState {
  const factory ViewReportState.initial() = _Initial;
  const factory ViewReportState.onViewReportPageState(dynamic artistData) =
      _OnViewReportPageState;
  const factory ViewReportState.showArtistReportState(dynamic artistData) =
      _ShowArtistReportState;
}
