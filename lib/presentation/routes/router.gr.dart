// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:audioplayers/audioplayers.dart' as _i15;
import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../create_event/create_event_page.dart' as _i6;
import '../event/event_page.dart' as _i9;
import '../event/songs_player/songs_player.dart' as _i10;
import '../home/user_home/user_home_page.dart' as _i5;
import '../joined_events/joined_events_page.dart' as _i11;
import '../my_events/my_events_page.dart' as _i7;
import '../search_event/serach_event_page.dart' as _i8;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;
import '../upload_artist/upload_artist_page.dart' as _i13;
import '../upload_event/upload_event_page.dart' as _i12;
import '../view_report/view_report_page.dart' as _i14;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.SplashPage();
        }),
    SignInRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.SignInPage();
        }),
    UserHomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.UserHomePage();
        }),
    CreateEventRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.CreateEventPage();
        }),
    MyEventsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.MyEventsPage();
        }),
    SearchEventRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SearchEventRouteArgs>(
              orElse: () => const SearchEventRouteArgs());
          return _i8.SearchEventPage(key: args.key);
        }),
    EventRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<EventRouteArgs>();
          return _i9.EventPage(key: args.key, data: args.data);
        }),
    SongsPlayer.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<SongsPlayerArgs>();
          return _i10.SongsPlayer(
              key: args.key,
              audioPlayer: args.audioPlayer,
              songList: args.songList,
              eventData: args.eventData);
        }),
    JoinedEventsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i11.JoinedEventsPage();
        }),
    UploadEventRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i12.UploadEventPage();
        }),
    UploadArtistRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i13.UploadArtistPage();
        }),
    ViewReportRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i14.ViewReportPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(UserHomeRoute.name, path: '/user-home-page'),
        _i1.RouteConfig(CreateEventRoute.name, path: '/create-event-page'),
        _i1.RouteConfig(MyEventsRoute.name, path: '/my-events-page'),
        _i1.RouteConfig(SearchEventRoute.name, path: '/search-event-page'),
        _i1.RouteConfig(EventRoute.name, path: '/event-page'),
        _i1.RouteConfig(SongsPlayer.name, path: '/songs-player'),
        _i1.RouteConfig(JoinedEventsRoute.name, path: '/joined-events-page'),
        _i1.RouteConfig(UploadEventRoute.name, path: '/upload-event-page'),
        _i1.RouteConfig(UploadArtistRoute.name, path: '/upload-artist-page'),
        _i1.RouteConfig(ViewReportRoute.name, path: '/view-report-page')
      ];
}

class SplashRoute extends _i1.PageRouteInfo {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

class SignInRoute extends _i1.PageRouteInfo {
  const SignInRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

class UserHomeRoute extends _i1.PageRouteInfo {
  const UserHomeRoute() : super(name, path: '/user-home-page');

  static const String name = 'UserHomeRoute';
}

class CreateEventRoute extends _i1.PageRouteInfo {
  const CreateEventRoute() : super(name, path: '/create-event-page');

  static const String name = 'CreateEventRoute';
}

class MyEventsRoute extends _i1.PageRouteInfo {
  const MyEventsRoute() : super(name, path: '/my-events-page');

  static const String name = 'MyEventsRoute';
}

class SearchEventRoute extends _i1.PageRouteInfo<SearchEventRouteArgs> {
  SearchEventRoute({_i2.Key? key})
      : super(name,
            path: '/search-event-page', args: SearchEventRouteArgs(key: key));

  static const String name = 'SearchEventRoute';
}

class SearchEventRouteArgs {
  const SearchEventRouteArgs({this.key});

  final _i2.Key? key;
}

class EventRoute extends _i1.PageRouteInfo<EventRouteArgs> {
  EventRoute({_i2.Key? key, required dynamic data})
      : super(name,
            path: '/event-page', args: EventRouteArgs(key: key, data: data));

  static const String name = 'EventRoute';
}

class EventRouteArgs {
  const EventRouteArgs({this.key, required this.data});

  final _i2.Key? key;

  final dynamic data;
}

class SongsPlayer extends _i1.PageRouteInfo<SongsPlayerArgs> {
  SongsPlayer(
      {_i2.Key? key,
      required _i15.AudioPlayer audioPlayer,
      required List<dynamic> songList,
      required dynamic eventData})
      : super(name,
            path: '/songs-player',
            args: SongsPlayerArgs(
                key: key,
                audioPlayer: audioPlayer,
                songList: songList,
                eventData: eventData));

  static const String name = 'SongsPlayer';
}

class SongsPlayerArgs {
  const SongsPlayerArgs(
      {this.key,
      required this.audioPlayer,
      required this.songList,
      required this.eventData});

  final _i2.Key? key;

  final _i15.AudioPlayer audioPlayer;

  final List<dynamic> songList;

  final dynamic eventData;
}

class JoinedEventsRoute extends _i1.PageRouteInfo {
  const JoinedEventsRoute() : super(name, path: '/joined-events-page');

  static const String name = 'JoinedEventsRoute';
}

class UploadEventRoute extends _i1.PageRouteInfo {
  const UploadEventRoute() : super(name, path: '/upload-event-page');

  static const String name = 'UploadEventRoute';
}

class UploadArtistRoute extends _i1.PageRouteInfo {
  const UploadArtistRoute() : super(name, path: '/upload-artist-page');

  static const String name = 'UploadArtistRoute';
}

class ViewReportRoute extends _i1.PageRouteInfo {
  const ViewReportRoute() : super(name, path: '/view-report-page');

  static const String name = 'ViewReportRoute';
}
