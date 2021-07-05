import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
// import 'package:flutter_play_poll/presentation/home/user_home/user_home_page.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';
// import 'package:flutter_play_poll/presentation/sign_in/sign_in_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (authenticatedUser) {
            print('SPLASH PAGE AUTHENTICATED <----');
            print(authenticatedUser.user.name);

            AutoRouter.of(context).navigate(UserHomeRoute());

            // AutoRouter.of(context).pushNamed('UserHomePage');

            // AutoRouter.of(context).popAndPush(UserHomeRoute());
            // AutoRouter.of(context).(UserHomePage());
          },
          // UserHomePage()
          unauthenticated: (_) {
            print('SPLASH PAGE SIGNED-OUT <----');
            AutoRouter.of(context).navigate((SignInRoute()));
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
