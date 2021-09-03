import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_play_poll/infrastructure/auth/firebase_auth_facade.dart';
import 'package:flutter_play_poll/presentation/home/user_home/user_home_page.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class SignInFormWidget extends StatelessWidget {
  const SignInFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) {
            either.fold(
              (failure) {
                print('Sing-In Failure <----');
              },
              (_) {
                print('SignInForm widget <---- $context');

                // AutoRouter.of(context).navigate((UserHomeRoute()));
                // AutoRouter.of(context).navigate(UserHomeRoute());
                // AutoRouter.of(context).popAndPush(UserHomeRoute());

                context.replaceRoute(UserHomeRoute());
                context
                    .read<AuthBloc>()
                    .add(const AuthEvent.authCheckRequested());
              },
            );
          },
        );
      },
      builder: (context, state) {
        return Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                Text(
                  'Play Poll',
                  style: TextStyle(fontSize: 50),
                  textAlign: TextAlign.center,
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                  ),
                  autocorrect: false,
                ),
                SizedBox(height: 8),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Password',
                  ),
                  autocorrect: false,
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          // context.read<SignInFormBloc>().add(
                          //     const SignInFormEvent.signInWithGooglePressed());
                        },
                        child: Text('Sing In'),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          // context.read<SignInFormBloc>().add(
                          //     const SignInFormEvent.signInWithGooglePressed());
                        },
                        child: Text('Register'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                BlocBuilder<SignInFormBloc, SignInFormState>(
                  builder: (context, state) {
                    return ElevatedButton(
                      onPressed: () {
                        print('On Sign-In Page <---- ');

                        context
                            .read<SignInFormBloc>()
                            .add(SignInFormEvent.signInWithGooglePressed());
                      },
                      child: Text('Sing in With Google'),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
