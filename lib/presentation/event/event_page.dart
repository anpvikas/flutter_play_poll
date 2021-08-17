import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/event/event_bloc.dart';
import 'package:flutter_play_poll/application/event/songs_player/songs_player_bloc.dart';

import 'package:flutter_play_poll/presentation/event/songs_player/songs_player.dart';

class EventPage extends StatelessWidget {
  final data;
  EventPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List received = [];
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String currentUser = '';
    bool isUserVoted = false;
    AudioPlayer audioPlayer = AudioPlayer();
    List songList = [];

    // BlocProvider.of<EventBloc>(context)
    //     .add(EventEvent.started(data.data.data['creatorId']));

    context
        .read<EventBloc>()
        .add(EventEvent.started(data.data.data['creatorId']));

    print('~~~~~~~> EVENT DATA ${data.data.data['eventId']} ');
    context.read<EventBloc>().state.maybeMap(showFetchedSongs: (received) {
      songList = received.showFetchedSongs;
    }, orElse: () {
      return CircularProgressIndicator();
    });

    return MultiBlocListener(
      listeners: [
        BlocListener<EventBloc, EventState>(
          listener: (context, state) {
            state.map(
              initial: (receivedEventSongs) {
                // context.read<EventBloc>().add(EventEvent.displaySongs());
                print('$receivedEventSongs <---- INITIAL ----');
              },
              showFetchedSongs: (received) {
                songList = received.showFetchedSongs;
                // received = received;

                // for (var i = 0; i < received.showFetchedSongs.length; i++) {
                //   songList.add(received.showFetchedSongs[i]['songUrl']);
                // }

                // context
                //     .read<EventBloc>()
                //     .add(EventEvent.displaySongs(songList));
              },
              incrementedVoteCount: (value) {
                // BlocProvider.of<EventBloc>(context)
                //     .add(EventEvent.started(data.data.data['creatorId']));
              },
              getSignedInUserState: (receivedUserId) {
                currentUser = receivedUserId.userId;
              },
              displayFetchedSongs: (displayFetchedSongs) {},
              gameModeVoteState: (_) {},
              updateAppearedInOptionCountState: (value) {
                return Text('${value.updatedCountInOption}');
              },
              showWinnerState: (_) {
                return Text('WINNER');
              },
              createGameModeEntryState: (_) {},
              votingStartedState: (_) {
                print('TIMER VALUE Listener  ~~~~> ${_.timerValue}');
                return Container();
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('${data.data.data['name']}'),
        ),
        body: BlocBuilder<EventBloc, EventState>(
          builder: (context, state) {
            //VIKAS
            // context
            //     .read<EventBloc>()
            //     .add(EventEvent.started(data.data.data['creatorId']));
            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: height / 2,
                    child: SongsPlayer(
                        audioPlayer: audioPlayer,
                        songList: songList,
                        eventData: data),
                  ),
                  context.read<EventBloc>().state.map(
                    showFetchedSongs: (received) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            // Text('${songList[0]}'),
                            ListView.builder(
                                primary: false,
                                shrinkWrap: true,
                                itemCount: received.showFetchedSongs.length,
                                itemBuilder: (context, index) {
                                  for (var user in received
                                      .showFetchedSongs[index]['votes']) {
                                    if (user == currentUser ||
                                        received
                                                .showFetchedSongs[index]
                                                    ['votes']
                                                .length ==
                                            0) {
                                      isUserVoted = true;
                                    } else {
                                      isUserVoted = false;
                                    }
                                  }

                                  // if (index != 0) {
                                  return Card(
                                    child: ListTile(
                                      title: Text(
                                        '${(received.showFetchedSongs[index]['title']).toString().split('.')[0]}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                      // subtitle: Text(
                                      //     '${received.showFetchedSongs[index]['songId']} \n ${received.showFetchedSongs[index]['songUrl']}'),
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
                                              // if (isUserVoted == true) {
                                              //   final snackBar = SnackBar(
                                              //     content: Text(
                                              //       'Already Voted for song \n ${received.showFetchedSongs[index]['title']}',
                                              //       textAlign: TextAlign.center,
                                              //       style:
                                              //           TextStyle(fontSize: 20),
                                              //     ),
                                              //     backgroundColor:
                                              //         Colors.red.shade200,
                                              //   );
                                              //   ScaffoldMessenger.of(context)
                                              //       .showSnackBar(snackBar);
                                              // } else {
                                              //   final snackBar = SnackBar(
                                              //     content: Text(
                                              //       'Voted for song \n ${received.showFetchedSongs[index]['title']}',
                                              //       textAlign: TextAlign.center,
                                              //       style:
                                              //           TextStyle(fontSize: 20),
                                              //     ),
                                              //     backgroundColor:
                                              //         Colors.green.shade200,
                                              //   );
                                              //   ScaffoldMessenger.of(context)
                                              //       .showSnackBar(snackBar);
                                              // }
                                            },
                                            icon: Icon(
                                              Icons.thumb_up,
                                              color: Colors.green[900],
                                              size: 20,
                                            ),
                                            // icon: isUserVoted
                                            //     ? Icon(Icons.task_alt,
                                            //         color: Colors.green[900])
                                            //     : Icon(Icons.thumb_up,
                                            //         color: Colors.green[900]),
                                          ),
                                          // BlocBuilder<EventBloc, EventState>(
                                          //   builder: (context, state) {
                                          //     return Text(
                                          //       '${received.showFetchedSongs[index]['votes'].length}',
                                          //       style: TextStyle(fontSize: 7),
                                          //     );
                                          //   },
                                          // ),
                                        ],
                                      ),
                                      leading:
                                          BlocBuilder<EventBloc, EventState>(
                                        builder: (context, state) {
                                          return CircleAvatar(
                                            child: Text(
                                              '${received.showFetchedSongs[index]['votes'].length}',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          );
                                        },
                                      ),
                                      onTap: () {},
                                    ),
                                  );
                                  // } else {
                                  //   return Container();
                                  // }
                                }),
                          ],
                        ),
                      );
                    },
                    getSignedInUserState: (userId) {
                      return Container();
                    },
                    displayFetchedSongs: (displayFetchedSongs) {
                      return Container();
                    },
                    incrementedVoteCount: (updatedVoteCount) {
                      // songList = [];
                      //VIKAS
                      context
                          .read<EventBloc>()
                          .add(EventEvent.started(data.data.data['creatorId']));

                      return Container();
                    },
                    initial: (_) {
                      return Container();
                    },
                    gameModeVoteState: (_) {
                      return Container();
                    },
                    updateAppearedInOptionCountState: (value) {
                      return Text('${value.updatedCountInOption}');
                    },
                    showWinnerState: (_) {
                      return Text('WINNER');
                    },
                    createGameModeEntryState: (_) {
                      return Container();
                    },
                    votingStartedState: (_) {
                      return Container();
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
