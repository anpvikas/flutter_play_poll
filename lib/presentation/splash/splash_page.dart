import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (authenticatedUser) {
            print('1-SPLASH PAGE AUTHENTICATED <----');
            print(authenticatedUser.user.name);
            context.replaceRoute(UserHomeRoute());
          },
          unauthenticated: (_) {
            print('2-SPLASH PAGE SIGNED-OUT <----');
            context.replaceRoute(SignInRoute());
          },
        );
      },
      child: Scaffold(
        backgroundColor: Colors.greenAccent,
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
