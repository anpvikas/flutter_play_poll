import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:flutter_play_poll/presentation/home/user_home/user_home_page.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';
import 'package:flutter_play_poll/presentation/sign_in/sign_in_page.dart';
import 'package:flutter_play_poll/presentation/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(AuthEvent.authCheckRequested()),
      child: MaterialApp.router(
        title: 'Play Poll',
        debugShowCheckedModeBanner: false,
        // home: AutoRouter(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),

        // home: UserHomePage(),
        // home: SignInPage(),

        // builder:

        // onGenerateRoute: AutoRoute(),
        // initialRoute: 'SplashRoute',
        // navigatorKey: Router.navigator.key,
      ),
    );
  }
}
