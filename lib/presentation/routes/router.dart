import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_play_poll/presentation/create_event/create_event_page.dart';
import 'package:flutter_play_poll/presentation/event/event_page.dart';

import 'package:flutter_play_poll/presentation/home/user_home/user_home_page.dart';
import 'package:flutter_play_poll/presentation/joined_events/joined_events_page.dart';
import 'package:flutter_play_poll/presentation/my_events/my_events_page.dart';
import 'package:flutter_play_poll/presentation/search_event/serach_event_page.dart';

import 'package:flutter_play_poll/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_play_poll/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
    // generateNavigationHelperExtension: true,
    replaceInRouteName: 'Page,Route',
    routes: <AutoRoute>[
      AutoRoute(page: SplashPage, initial: true),
      AutoRoute(page: SignInPage),
      AutoRoute(page: UserHomePage),
      AutoRoute(page: CreateEventPage),
      AutoRoute(page: MyEventsPage),
      AutoRoute(page: SearchEventPage),
      AutoRoute(page: EventPage),
      AutoRoute(page: JoinedEventsPage),
    ])
class $AppRouter {}
