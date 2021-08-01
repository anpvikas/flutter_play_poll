import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/joined_events/joined_events_bloc.dart';
import 'package:flutter_play_poll/presentation/event/event_page.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class JoinedEventsPage extends StatelessWidget {
  const JoinedEventsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<JoinedEventsBloc, JoinedEventsState>(
            listener: (context, state) {
          state.maybeMap(
              viewSelectedEventState: (data) {
                AutoRouter.of(context).navigate(EventRoute());
              },
              orElse: () {});
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Joined Events'),
        ),
        body: BlocBuilder<JoinedEventsBloc, JoinedEventsState>(
          builder: (context, state) {
            context.read<JoinedEventsBloc>().add(JoinedEventsEvent.started());
            return context.read<JoinedEventsBloc>().state.maybeMap(
              // viewSelectedEventState: (selectedEvent) {

              // },
              showJoinedEvents: (received) {
                if (received.data.length > 0) {
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
                                print(
                                    '${received.data[index]} Button to join event');
                                context.read<JoinedEventsBloc>().add(
                                    JoinedEventsEvent.unjoinEvent(
                                        received.data[index]));
                              },
                              icon: Icon(
                                Icons.cancel,
                                color: Colors.red,
                                size: 30,
                              )),
                          onTap: () {
                            print(received.data[index]['eventId']);
                            context.read<JoinedEventsBloc>().add(
                                JoinedEventsEvent.viewSelectedEvent(
                                    received.data[index]));
                          },
                        ),
                      );
                    },
                  );
                } else {
                  return Center(
                      child: Text(
                    'No Events Joined',
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
