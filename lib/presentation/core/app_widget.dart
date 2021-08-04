import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/application/create_event/create_bloc.dart';
import 'package:flutter_play_poll/application/event/event_bloc.dart';

import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/application/joined_events/joined_events_bloc.dart';
import 'package:flutter_play_poll/application/my_events/my_events_bloc.dart';
import 'package:flutter_play_poll/application/search_event/search_event_bloc.dart';
import 'package:flutter_play_poll/application/upload_event/upload_event_bloc.dart';
import 'package:flutter_play_poll/injection.dart';

import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) => getIt<HomeBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<CreateBloc>(),
        ),
        BlocProvider(
          create: (_) => getIt<MyEventsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<SearchEventBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<JoinedEventsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UploadEventBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<EventBloc>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Play Poll',
        debugShowCheckedModeBanner: false,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}
