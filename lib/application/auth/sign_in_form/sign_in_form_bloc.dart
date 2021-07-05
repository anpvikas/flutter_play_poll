import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_play_poll/domain/auth/auth_failure.dart';
import 'package:flutter_play_poll/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState.initial());

  @override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(signInWithGooglePressed: (e) async* {
      yield state.copyWith(
        // isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );
      final failureOrsuccess = await _authFacade.signInWithGoogle();
      yield state.copyWith(
        // isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrsuccess),
      );
    });
  }
}
