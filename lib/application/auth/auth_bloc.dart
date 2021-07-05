import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_play_poll/domain/auth/i_auth_facade.dart';
import 'package:flutter_play_poll/domain/auth/user.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        // final userOption = await _authFacade.signInWithGoogle();
        final userOption = await _authFacade.getSignedInUser();
        yield userOption.fold(
          () => const AuthState.unauthenticated(),
          (user) => AuthState.authenticated(user),
        );
      },
      signedOut: (e) async* {
        await _authFacade.signOut();
        print("YIELD <----");
        yield const AuthState.unauthenticated();
      },
    );
  }
}