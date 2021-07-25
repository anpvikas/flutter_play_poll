// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i16;
import 'application/auth/sign_in_form/sign_in_form_bloc.dart' as _i15;
import 'application/create_event/create_bloc.dart' as _i17;
import 'application/home/home_bloc.dart' as _i7;
import 'application/joined_events/joined_events_bloc.dart' as _i12;
import 'application/my_events/my_events_bloc.dart' as _i13;
import 'application/search_event/search_event_bloc.dart' as _i14;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/events/i_event_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/auth/firebase_user_mapper.dart' as _i5;
import 'infrastructure/core/firebase_injectable_module.dart' as _i18;
import 'infrastructure/events/event_repository.dart' as _i11;

const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.FirebaseUserMapper>(() => _i5.FirebaseUserMapper());
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc());
  gh.lazySingleton<_i8.IAuthFacade>(() => _i9.FirebaseAuthFacade(
      get<_i3.FirebaseAuth>(),
      get<_i6.GoogleSignIn>(),
      get<_i5.FirebaseUserMapper>()));
  gh.lazySingleton<_i10.IEventRepository>(
      () => _i11.EventRepository(get<_i4.FirebaseFirestore>(),
          get<_i3.FirebaseAuth>(), get<_i5.FirebaseUserMapper>()),
      registerFor: {_prod});
  gh.factory<_i12.JoinedEventsBloc>(
      () => _i12.JoinedEventsBloc(get<_i10.IEventRepository>()));
  gh.factory<_i13.MyEventsBloc>(
      () => _i13.MyEventsBloc(get<_i10.IEventRepository>()));
  gh.factory<_i14.SearchEventBloc>(
      () => _i14.SearchEventBloc(get<_i10.IEventRepository>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i17.CreateBloc>(
      () => _i17.CreateBloc(get<_i10.IEventRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i18.FirebaseInjectableModule {}
