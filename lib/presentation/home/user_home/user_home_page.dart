import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_play_poll/domain/auth/i_auth_facade.dart';
import 'package:flutter_play_poll/domain/auth/user.dart';
import 'package:flutter_play_poll/domain/auth/value_objects.dart';
import 'package:flutter_play_poll/infrastructure/auth/firebase_auth_facade.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        print('inside Listener');
        state.map(
          initial: (_) {
            print("1-Initial <----");
          },
          authenticated: (_) {
            print("2-Authenticated <---- ");
            print('${_.user.id} ID <----');
            print(_);
          },
          unauthenticated: (_) {
            print("3-Unathuenticated <----");
            // AutoRouter.of(context).navigate((SignInRoute()));

            AutoRouter.of(context).popUntilRoot();
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Text('Play Poll'),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    context.read<AuthBloc>().add(const AuthEvent.signedOut());
                  },
                  icon: Icon(Icons.logout))
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.bottomLeft,
                stops: [0.6, 1, 3, 6],
                colors: [
                  Colors.orange.withOpacity(1),
                  Colors.orange[100]!.withOpacity(0.6),
                  Colors.pink[100]!.withOpacity(0.5),
                  Colors.blueAccent[100]!.withOpacity(0.3),
                ],
              ),
            ),
            child: Column(
              children: [
                state.maybeMap(
                  authenticated: (_) {
                    return Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Welcome ${_.user.name.getOrElse('')},',
                        style: TextStyle(fontSize: 32, color: Colors.black54),
                      ),
                    );
                  },
                  orElse: () {
                    return Text('User Not Found');
                  },
                ),
                Text(
                  'what would you like to do today?',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('Create Event Pressed <----');
                          },
                          child: Container(
                            height: height / 5,
                            width: width / 2,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey.withOpacity(0.3),
                              // border: Border.all(color: Colors.green, width: 2),
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                // center: Alignment.bottomLeft,
                                stops: [0.3, 0.85, 0.95, 1],
                                colors: [
                                  Colors.greenAccent.withOpacity(0.8),
                                  Colors.orange[100]!.withOpacity(0.6),
                                  Colors.purple[100]!.withOpacity(0.5),
                                  Colors.blueAccent[100]!.withOpacity(0.9),
                                ],
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle_outline_outlined,
                                  size: 60,
                                  color: Colors.green,
                                ),
                                SizedBox(height: height / 20),
                                Text(
                                  'Create Event',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: width / 20),
                      Expanded(
                        child: Container(
                          height: height / 5,
                          width: width / 2,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_outlined,
                                size: 60,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(height: height / 20),
                              Text(
                                'Search Event',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: height / 5,
                          width: width / 2,
                          decoration: BoxDecoration(
                            // color: Colors.lightGreen,
                            border: Border.all(color: Colors.green, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.today_outlined,
                                size: 60,
                                color: Colors.blueGrey,
                              ),
                              SizedBox(height: height / 20),
                              Text(
                                'My Events',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: width / 20),
                      Expanded(
                        child: Container(
                          height: height / 5,
                          width: width / 2,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.event_available_outlined,
                                size: 60,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(height: height / 20),
                              Text(
                                'Joined Events',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
