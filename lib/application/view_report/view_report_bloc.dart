import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'view_report_event.dart';
part 'view_report_state.dart';
part 'view_report_bloc.freezed.dart';

@injectable
class ViewReportBloc extends Bloc<ViewReportEvent, ViewReportState> {
  ViewReportBloc(this._eventRepository) : super(_Initial());
  final IEventRepository _eventRepository;

  @override
  Stream<ViewReportState> mapEventToState(
    ViewReportEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // yield ViewReportState.initial();
        dynamic received = await _eventRepository.artistReport();
        yield ViewReportState.onViewReportPageState(received);
      },
      showArtistReportEvent: (e) async* {
        dynamic received = await _eventRepository.artistReport();
        yield ViewReportState.showArtistReportState(received);
      },
      onViewReportPageEvent: (e) async* {
        yield ViewReportState.onViewReportPageState(e);
      },
    );
  }
}
