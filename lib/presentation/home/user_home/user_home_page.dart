import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/application/create_event/create_bloc.dart';

import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/constants.dart';
import 'package:flutter_play_poll/injection.dart';

import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MultiBlocListener(
      listeners: [
        BlocListener<CreateBloc, CreateState>(
          listener: (context, state) {
            state.map(
              initial: (_) {
                print('Started Event fired');
              },
              returnToHomePage: (_) {},
              onHomePageFromCreatePage: (_) {},
              eventNameValidated: (_) {},
              eventCreated: (_) {},
            );
          },
        ),
        BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            state.map(
              onHomePageState: (_) {},
              navigatedToCreateEventPage: (_) {
                print(
                    '3-HomeBloc Listener responds to the added event and yields state = navigatedToCreateEventPage ');
                print(
                    '4-Another event = onCreateEventPage added to the HomeBloc');
                print(' 5-Navigating HomePage --> CreateEventPage');
                context.read<HomeBloc>().add(HomeEvent.onCreateEventPage());
                AutoRouter.of(context).navigate(CreateEventRoute());
              },
              navigatedToSearchEventPage: (_) {},
              navigatedToMyEventPage: (_) {},
              navigatedToJoinedEventPage: (_) {},
              onCreateEventPage: (_) {},

              // onCreateEventPage: (_) {
              //   print('State Changed');
              // },
            );
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              authenticated: (_) {},
              unauthenticated: (_) {
                print('HERE-2 <----');
                context.replaceRoute(SignInRoute());
              },
            );
          },
        ),
      ],
      child: Scaffold(
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
            gradient: forPageDesignRadial,
          ),
          child: ListView(
            children: [
              SizedBox(height: height / 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    context.read<AuthBloc>().state.maybeMap(
                      authenticated: (_) {
                        return CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                            _.user.photoUrl.getOrElse(''),
                          ),
                        );
                      },
                      orElse: () {
                        return Text('User Not Found');
                      },
                    ),
                    SizedBox(width: width / 30),
                    context.read<AuthBloc>().state.maybeMap(
                      authenticated: (_) {
                        return Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Welcome \n${_.user.name.getOrElse('')},',
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87.withOpacity(0.65)),
                          ),
                        );
                      },
                      orElse: () {
                        return Text('User Not Found');
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: height / 80),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'what would you like to do today?',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
              ),
              SizedBox(height: height / 40),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              print(
                                  '1-Create Event Pressed on HomePage<---- $context');
                              print(
                                  '2-Event added to the HomeBloc = createEventClicked <----');
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.createEventClicked());
                            },
                            child: Container(
                              height: height / 5,
                              width: width / 2,
                              decoration: BoxDecoration(
                                color: Colors.blueGrey.withOpacity(0.3),
                                // border: Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                                gradient: forContainerLinear,
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
                          );
                        },
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
      ),
    );
  }
}
