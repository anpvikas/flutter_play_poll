part of 'view_report_bloc.dart';

@freezed
class ViewReportEvent with _$ViewReportEvent {
  const factory ViewReportEvent.started() = _Started;
  const factory ViewReportEvent.onViewReportPageEvent() =
      _OnViewReportPageEvent;
  const factory ViewReportEvent.showArtistReportEvent() =
      _ShowArtistReportEvent;
}
