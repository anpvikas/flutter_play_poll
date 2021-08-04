import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/event/event_bloc.dart';

import 'package:flutter_play_poll/presentation/event/songs_player/songs_player.dart';

class EventPage extends StatelessWidget {
  final data;
  EventPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String currentUser = '';
    bool isUserVoted = false;
    AudioPlayer audioPlayer = AudioPlayer();

    BlocProvider.of<EventBloc>(context)
        .add(EventEvent.started(data.data.data['creatorId']));

    return MultiBlocListener(
      listeners: [
        BlocListener<EventBloc, EventState>(
          listener: (context, state) {
            state.map(
              initial: (_) {
                print('$_ printing UNDERSCORE <----');
                // context.read<EventBloc>().add(EventEvent.displaySongs());
              },
              showFetchedSongs: (received) {
                print(
                    '${received.showFetchedSongs.length} printing RECEIVED SONGSS LIST <----');
              },
              incrementedVoteCount: (value) {
                print('$value <---- UPDATED VOTE COUNT');

                BlocProvider.of<EventBloc>(context)
                    .add(EventEvent.started(data.data.data['creatorId']));
              },
              getSignedInUserState: (receivedUserId) {
                print('${receivedUserId.userId} <---- CURRENT USERID');
                currentUser = receivedUserId.userId;
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('${data.data.data['name']}'),
        ),
        body: Column(
          children: [
            // Text('CreatorID: ${data.data.data['creatorId']}'),
            // Text('EventID: ${data.data.data['eventId']}'),
            SongsPlayer(
              audioPlayer: audioPlayer,
            ),
            Text('Songs Playlist'),
            BlocBuilder<EventBloc, EventState>(
              builder: (context, state) {
                return Center(
                  child: Column(
                    children: [
                      context.read<EventBloc>().state.maybeMap(
                        showFetchedSongs: (received) {
                          return ListView.builder(
                              shrinkWrap: true,
                              itemCount: received.showFetchedSongs.length,
                              itemBuilder: (context, index) {
                                return Card(
                                  child: ListTile(
                                    title: Text(
                                      '${(received.showFetchedSongs[index]['title']).toString().split('.')[0]}',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
                                    ),
                                    subtitle: Text(
                                        '${received.showFetchedSongs[index]['songId']} \n ${received.showFetchedSongs[index]['songUrl']}'),
                                    trailing: Column(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              context.read<EventBloc>().add(
                                                  EventEvent
                                                      .getSignedInUserEvent());
                                              context.read<EventBloc>().add(
                                                  EventEvent.incrementVoteCount(
                                                      received.showFetchedSongs[
                                                              index]['songId']
                                                          .toString(),
                                                      received.showFetchedSongs[
                                                              index]['uid']
                                                          .toString()));
                                              final snackBar = SnackBar(
                                                content: Text(
                                                  'Voted for song \n ${received.showFetchedSongs[index]['title']}',
                                                  textAlign: TextAlign.center,
                                                  style:
                                                      TextStyle(fontSize: 20),
                                                ),
                                                backgroundColor: Colors.green,
                                              );
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(snackBar);

                                              for (var user in received
                                                      .showFetchedSongs[index]
                                                  ['votes']) {
                                                if (user == currentUser ||
                                                    received
                                                            .showFetchedSongs[
                                                                index]['votes']
                                                            .length ==
                                                        0) {
                                                  print(
                                                      '$user - $currentUser <~~~~~~~~~~~~~');
                                                  isUserVoted = true;
                                                } else {
                                                  isUserVoted = false;
                                                }
                                              }
                                            },
                                            icon: Icon(Icons.thumb_up,
                                                color: Colors.green[900])
                                            // icon: isUserVoted
                                            //     ? Icon(Icons.task_alt,
                                            //         color: Colors.green[900])
                                            //     : Icon(Icons.thumb_up,
                                            //         color: Colors.green[900]),
                                            ),
                                        Text(
                                          '${received.showFetchedSongs[index]['votes'].length}',
                                          style: TextStyle(fontSize: 7),
                                        ),
                                      ],
                                    ),
                                    onTap: () {},
                                  ),
                                );
                              });
                        },
                        orElse: () {
                          return Center(child: CircularProgressIndicator());
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
