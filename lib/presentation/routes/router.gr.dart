// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../create_event/create_event_page.dart' as _i6;
import '../home/user_home/user_home_page.dart' as _i5;
import '../my_events/my_events_page.dart' as _i7;
import '../sign_in/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;

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
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashRoute.name, path: '/'),
        _i1.RouteConfig(SignInRoute.name, path: '/sign-in-page'),
        _i1.RouteConfig(UserHomeRoute.name, path: '/user-home-page'),
        _i1.RouteConfig(CreateEventRoute.name, path: '/create-event-page'),
        _i1.RouteConfig(MyEventsRoute.name, path: '/my-events-page')
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
