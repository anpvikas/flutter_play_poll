import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:flutter_play_poll/presentation/sign_in/widgets/sign_in_form_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInFormWidget(),
      ),
    );
  }
}

// class SignInPage extends StatelessWidget {
//   // const SignInPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) =>
//           getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
//       child: Column(
//         children: [
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//                 textStyle: const TextStyle(fontSize: 20)),
//             onPressed: () {
//               // context.bloc<SignInFormBloc>().add(
//               //       const SignInFormEvent.signInWithGooglePressed(),
//               //     );
//             },
//             child: Text('Google Sign In'),
//           ),
//         ],
//       ),
//     );
//   }
// }
