import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/auth/auth_bloc.dart';
import 'package:flutter_play_poll/application/create_event/create_bloc.dart';

import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/application/my_events/my_events_bloc.dart';
import 'package:flutter_play_poll/application/search_event/search_event_bloc.dart';
import 'package:flutter_play_poll/application/view_report/view_report_bloc.dart';
import 'package:flutter_play_poll/constants.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:flutter_play_poll/presentation/my_events/my_events_page.dart';

import 'package:flutter_play_poll/presentation/routes/router.gr.dart';
import 'package:flutter_play_poll/presentation/upload_event/upload_event_page.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return MultiBlocListener(
      listeners: [
        // BlocListener<CreateBloc, CreateState>(
        //   listener: (context, state) {
        //     state.map(
        //       initial: (_) {
        //         print('Started Event fired');
        //       },
        //       returnToHomePage: (_) {},
        //       onHomePageFromCreatePage: (_) {},
        //       eventNameValidated: (_) {},
        //       eventCreated: (_) {},
        //       eventLocationValidated: (_) {},
        //       eventCreationFailed: (_) {},
        //     );
        //   },
        // ),
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
              navigatedToSearchEventPage: (_) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.onSearchEventsPageEvent());
                context.read<SearchEventBloc>().add(SearchEventEvent.started());
                AutoRouter.of(context).navigate(SearchEventRoute());
              },
              navigatedToMyEventPage: (_) {
                context.read<HomeBloc>().add(HomeEvent.onMyEventsPageEvent());
                // context.read<MyEventsBloc>().add(MyEventsEvent.onMyEventPage());
                AutoRouter.of(context).navigate(MyEventsRoute());
              },
              navigatedToJoinedEventPage: (_) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.onJoinedEventsPageEvent());
                AutoRouter.of(context).navigate(JoinedEventsRoute());
              },
              onCreateEventPage: (_) {},
              onMyEventsPage: (_) {},
              onSearchEventsPage: (_) {},
              onJoinedEventPage: (_) {},
              navigatedToUploadEventPage: (_) {
                context.read<HomeBloc>().add(HomeEvent.onUploadPageEvent());
                AutoRouter.of(context).navigate(UploadEventRoute());
              },
              onUploadEventPage: (_) {},
              navigatedToUploadArtistEventPage: (_) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.onUploadArtistPageEvent());
                AutoRouter.of(context).navigate(UploadArtistRoute());
              },
              onUploadArtistEventPage: (_) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.onUploadArtistPageEvent());
                AutoRouter.of(context).navigate(UploadArtistRoute());
              },
              navigatedToViewReportEventPage: (_) {
                // context.read<HomeBloc>().add(HomeEvent.onViewReportPageEvent());
                context.read<ViewReportBloc>().add(ViewReportEvent.started());
                context
                    .read<ViewReportBloc>()
                    .add(ViewReportEvent.showArtistReportEvent());
                AutoRouter.of(context).navigate(ViewReportRoute());
              },
              onViewReportEventPage: (_) {
                context.read<HomeBloc>().add(HomeEvent.onViewReportPageEvent());
                // AutoRouter.of(context).navigate(ViewReportRoute());
              },
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
          decoration: BoxDecoration(gradient: forPageDesignRadial),
          child: ListView(
            children: [
              SizedBox(height: height / 200),
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
                                color: Colors.white,
                                // color: Colors.blueGrey.withOpacity(0.3),
                                // border: Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                                // gradient: forContainerLinear,
                                boxShadow: [boxTopShadow, boxBotomShadow],
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
                      child: GestureDetector(
                        onTap: () {
                          print('1-Search Event Pressed on HomePage<---- ');
                          print(
                              '2-Event added to the HomeBloc = searchEventClicked <----');
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.searchEventClicked());
                        },
                        child: Container(
                          height: height / 5,
                          width: width / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border:
                            //     Border.all(color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [boxTopShadow, boxBotomShadow],
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              print('1-My Event Pressed on HomePage<---- ');
                              print(
                                  '2-Event added to the HomeBloc = myEventClicked <----');
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.myEventClicked());

                              // context
                              //     .read<MyEventsBloc>()
                              //     .add(MyEventsEvent.started());
                            },
                            child: Container(
                              height: height / 5,
                              width: width / 2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // color: Colors.lightGreen,
                                // border:
                                //     Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [boxTopShadow, boxBotomShadow],
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
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.joinedEventClicked());
                        },
                        child: Container(
                          height: height / 5,
                          width: width / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border:
                            // Border.all(color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [boxTopShadow, boxBotomShadow],
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              print('1-My Event Pressed on HomePage<---- ');
                              print(
                                  '2-Event added to the HomeBloc = uploadEventClicked <----');
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.uploadEventClicked());

                              // context
                              //     .read<MyEventsBloc>()
                              //     .add(MyEventsEvent.started());
                            },
                            child: Container(
                              height: height / 5,
                              width: width / 2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // color: Colors.lightGreen,
                                // border:
                                //     Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [boxTopShadow, boxBotomShadow],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.my_library_music_outlined,
                                    size: 60,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  SizedBox(height: height / 20),
                                  Text(
                                    'Event Songs',
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
                      child: GestureDetector(
                        onTap: () {
                          context
                              .read<HomeBloc>()
                              .add(HomeEvent.viewReportEventClicked());
                        },
                        child: Container(
                          height: height / 5,
                          width: width / 2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            // border:
                            // Border.all(color: Colors.blueAccent, width: 2),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [boxTopShadow, boxBotomShadow],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.stacked_bar_chart_outlined,
                                size: 60,
                                color: Colors.blueAccent,
                              ),
                              SizedBox(height: height / 20),
                              Text(
                                'View Report',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
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
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              print(
                                  '1-uploadArtistEventClicked Pressed on HomePage<---- ');
                              print(
                                  '2-Event added to the HomeBloc = uploadArtistEventClicked <----');
                              context
                                  .read<HomeBloc>()
                                  .add(HomeEvent.uploadArtistEventClicked());

                              // context
                              //     .read<MyEventsBloc>()
                              //     .add(MyEventsEvent.started());
                            },
                            child: Container(
                              height: height / 5,
                              width: width / 2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // color: Colors.lightGreen,
                                // border:
                                //     Border.all(color: Colors.green, width: 2),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [boxTopShadow, boxBotomShadow],
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.my_library_music_outlined,
                                    size: 60,
                                    color: Colors.deepOrange,
                                  ),
                                  SizedBox(height: height / 20),
                                  Text(
                                    'Upload Artist Songs',
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
