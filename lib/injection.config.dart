// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i12;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i11;
import 'application/create_event/create_bloc.dart' as _i3;
import 'application/home/home_bloc.dart' as _i8;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i6;
import 'infrastructure/core/firebase_injectable_module.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.CreateBloc>(() => _i3.CreateBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseUserMapper>(() => _i6.FirebaseUserMapper());
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc());
  gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
      get<_i4.FirebaseAuth>(),
      get<_i7.GoogleSignIn>(),
      get<_i6.FirebaseUserMapper>()));
  gh.factory<_i11.SignInFormBloc>(
      () => _i11.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(get<_i9.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
