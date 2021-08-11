import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/application/my_events/my_events_bloc.dart';
import 'package:flutter_play_poll/domain/core/value_objects.dart';
import 'package:flutter_play_poll/domain/events/event.dart';
import 'package:flutter_play_poll/domain/events/value_objects.dart';

class MyEventsPage extends StatelessWidget {
  const MyEventsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    TextEditingController _eventNameController = TextEditingController();
    TextEditingController _eventLocationController = TextEditingController();
    return MultiBlocListener(
      listeners: [
        BlocListener<MyEventsBloc, MyEventsState>(listener: (context, state) {
          print('HERE1 <---- ');
          state.map(
              initial: (_) {},
              eventViewed: (_) {},
              noEventsCreated: (_) {},
              showEventsCreated: (allEvents) {},
              onMyEventsPageState: (_) {},
              deletedEventState: (_) {},
              deletedFailedState: (_) {},
              updatedEventState: (_) {},
              updatedFailedState: (_) {});
        }),
        BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            print('HERE2 <---- ');
            state.map(
              navigatedToCreateEventPage: (_) {},
              navigatedToSearchEventPage: (_) {},
              navigatedToMyEventPage: (_) {},
              navigatedToJoinedEventPage: (_) {},
              onCreateEventPage: (_) {},
              onHomePageState: (_) {},
              onMyEventsPage: (_) {},
              onSearchEventsPage: (_) {},
              onJoinedEventPage: (_) {},
              navigatedToUploadEventPage: (_) {},
              onUploadEventPage: (_) {},
              navigatedToUploadArtistEventPage: (_) {},
              onUploadArtistEventPage: (_) {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Events'),
        ),
        body: BlocBuilder<MyEventsBloc, MyEventsState>(
          builder: (context, state) {
            context.read<MyEventsBloc>().add(MyEventsEvent.started());
            print('Printing CONTEXT ');
            return context.read<MyEventsBloc>().state.maybeMap(
              showEventsCreated: (received) {
                if (received.data.length > 0) {
                  print(received);
                  return ListView.builder(
                    itemCount: received.data.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text('${received.data[index]['name']}'),
                          subtitle: Text('${received.data[index]['location']}'),
                          leading: Icon(
                            Icons.date_range_outlined,
                            color: Colors.blue,
                            size: 40,
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        title: Text(
                                            'Update: ${received.data[index]['name']} event'),
                                        content: SingleChildScrollView(
                                          child: Container(
                                            height: height / 0.5,
                                            width: width,
                                            child: ListView(
                                              shrinkWrap: true,
                                              children: [
                                                TextFormField(
                                                  controller:
                                                      _eventNameController,
                                                  decoration: InputDecoration(
                                                    helperText:
                                                        'Current Name: ${received.data[index]['name']}',
                                                    labelText: 'Name',
                                                  ),
                                                ),
                                                TextFormField(
                                                  controller:
                                                      _eventLocationController,
                                                  decoration: InputDecoration(
                                                    helperText:
                                                        'Current Location: ${received.data[index]['location']}',
                                                    labelText: 'Location',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        actions: [
                                          OutlinedButton(
                                            onPressed: () {
                                              print(
                                                  '${received.data[index]} <-----RECEIVED----');
                                              context.read<MyEventsBloc>().add(
                                                      MyEventsEvent.deleteEvent(
                                                    Event(
                                                      name: Name(received
                                                          .data[index]['name']),
                                                      eventId: UniqueId
                                                          .fromUniqueString(
                                                              received.data[
                                                                      index]
                                                                  ['eventId']),
                                                      creatorId:
                                                          received.data[index]
                                                              ['creatorId'],
                                                      id: UniqueId
                                                          .fromUniqueString(
                                                              received.data[
                                                                      index]
                                                                  ['eventId']),
                                                      location: Location(
                                                          received.data[index]
                                                              ['location']),
                                                    ),
                                                  ));

                                              AutoRouter.of(context).pop();
                                            },
                                            child: Text(
                                              'Delete',
                                              style:
                                                  TextStyle(color: Colors.red),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              print('UPDATE');
                                              context.read<MyEventsBloc>().add(
                                                      MyEventsEvent.updateEvent(
                                                    Event(
                                                      name: Name(
                                                          _eventNameController
                                                              .text),
                                                      eventId: UniqueId
                                                          .fromUniqueString(
                                                              received.data[
                                                                      index]
                                                                  ['eventId']),
                                                      creatorId:
                                                          received.data[index]
                                                              ['creatorId'],
                                                      id: UniqueId
                                                          .fromUniqueString(
                                                              received.data[
                                                                      index]
                                                                  ['eventId']),
                                                      location: Location(
                                                          _eventLocationController
                                                              .text),
                                                    ),
                                                  ));
                                              AutoRouter.of(context).pop();
                                            },
                                            child: Text('Update'),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              AutoRouter.of(context).pop();
                                            },
                                            child: Text('Cancel'),
                                          ),
                                        ],
                                      );
                                    });
                              },
                              icon: Icon(
                                Icons.edit,
                                color: Colors.redAccent,
                                size: 30,
                              )),
                          onTap: () {
                            print(received.data[index]['eventId']);
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                      child: Text(
                    'No Events Created',
                    style: TextStyle(fontSize: 20),
                  ));
                }
              },
              orElse: () {
                return Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
      ),
    );
  }
}
