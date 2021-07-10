import 'package:auto_route/annotations.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_play_poll/presentation/create_event/create_event_page.dart';

import 'package:flutter_play_poll/presentation/home/user_home/user_home_page.dart';

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
    ])
class $AppRouter {}
