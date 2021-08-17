import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/event/event_bloc.dart';
import 'package:flutter_play_poll/application/event/songs_player/songs_player_bloc.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SongsPlayer extends StatelessWidget {
  const SongsPlayer(
      {Key? key,
      required this.audioPlayer,
      required this.songList,
      required this.eventData})
      : super(key: key);
  final AudioPlayer audioPlayer;
  final List songList;
  final dynamic eventData;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Duration _dur = Duration();
    Duration _pos = Duration();
    Random random = Random();

    List gameModeFullSongList = [];
    List optionsToShow = [];
    print('~~~~~~~> EVENT DATA on songsPage $eventData');
    // BlocProvider.of<SongsPlayerBloc>(context)
    //     .add(SongsPlayerEvent.fetchArtistSongsEvent());

    // print('$songPath <---- SONG PATH TOP');

    if (songList.length == 0) {
      return Center(child: CircularProgressIndicator());
    }

    String eventId = '${eventData.data.data['eventId']}';
    print('EVENT ID ~~~~> $eventId');

    String songPath = '${songList[0]['songUrl']}';

    this.audioPlayer.onDurationChanged.listen((songDuration) {
      _dur = songDuration;
      context
          .read<SongsPlayerBloc>()
          .add(SongsPlayerEvent.onDurationChangedEvent(_dur));
      // print('$_dur <-----------DURATION----------');
    });

    this.audioPlayer.onAudioPositionChanged.listen((songDuration) {
      _pos = songDuration;
      context
          .read<SongsPlayerBloc>()
          .add(SongsPlayerEvent.onAudioPositionChangedEvent(_pos));
      // print('$_pos <-----------POSITION songPosition ----------');
    });

    this.audioPlayer.onPlayerCompletion.listen((event) {
      _pos = _dur;
    });

    return MultiBlocListener(
      listeners: [
        BlocListener<SongsPlayerBloc, SongsPlayerState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              onAudioPositionChangedState: (currentPositionValue) {
                this.audioPlayer.onAudioPositionChanged.listen((songPosition) {
                  _pos = songPosition;
                  context
                      .read<SongsPlayerBloc>()
                      .add(SongsPlayerEvent.onAudioPositionChangedEvent(_pos));
                  // print('$_pos <-----------POSITION----------');
                });
              },
              onDurationChangedState: (currentDurationValue) {
                this.audioPlayer.onDurationChanged.listen((songDuration) {
                  _dur = songDuration;
                  context
                      .read<SongsPlayerBloc>()
                      .add(SongsPlayerEvent.onDurationChangedEvent(_dur));
                  // print('$_dur <-----------DURATION----------');
                });
              },
              onPlayerCompletionState: (_) {},
              fetchArtistSongsState: (received) {
                print('----> ARTIST SONGS! ${received.artistSongs} ');
                gameModeFullSongList = received.artistSongs;
                // int i = 0;
                // int random_number1 = 0;
                // int random_number2 = 0;
                // for (i = 0; i < 2; i++) {
                //   if (i == 0) {
                //     random_number1 =
                //         random.nextInt(gameModeFullSongList.length);
                //   } else {
                //     random_number2 =
                //         random.nextInt(gameModeFullSongList.length);
                //     if (random_number1 == random_number2) {
                //       i = i - 1;
                //     }
                //   }
                // }

                optionsToShow.add(gameModeFullSongList[
                    random.nextInt(gameModeFullSongList.length)]);
                // optionsToShow.add(gameModeFullSongList[random_number2]);

                // optionsToShow = new List.generate(
                //         2,
                //         (_) => gameModeFullSongList[
                //             random.nextInt(gameModeFullSongList.length)])
                //     .toSet()
                //     .toList();
                // optionsToShow = List.generate(
                //     2,
                //     (_) => gameModeFullSongList[
                //         random.nextInt(gameModeFullSongList.length)]);
                print('OPTION TO SHOW ----> ARTIST SONGS!$optionsToShow');
              },
              generateOptionsState: (receivedSongOptions) {
                print(
                    'OPTIONS TO SHOW ----> ${receivedSongOptions.songOptions}');
                optionsToShow = receivedSongOptions.songOptions;
              },
            );
          },
        ),
      ],
      child: Container(
        height: height / 3,
        color: Colors.blue[50],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/MusicCD.png'),
                          fit: BoxFit.fill),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${songList[0]['title']}',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18),
                      ),
                      Text('SongDetails'),
                    ],
                  )
                ],
              ),
            ),
            BlocBuilder<SongsPlayerBloc, SongsPlayerState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _pos.toString().split(".")[0],
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        _dur.toString().split(".")[0],
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                );
              },
            ),
            BlocBuilder<SongsPlayerBloc, SongsPlayerState>(
              builder: (context, state) {
                return Slider(
                  activeColor: Colors.green,
                  inactiveColor: Colors.lightBlue,
                  min: 0.0,
                  max: _dur.inSeconds.toDouble() + 1,
                  value:
                      _pos.inSeconds.toDouble().floorToDouble().roundToDouble(),
                  onChanged: (double value) {
                    this.audioPlayer.seek(Duration(seconds: value.toInt()));

                    value = value;
                  },
                );
              },
            ),
            BlocBuilder<SongsPlayerBloc, SongsPlayerState>(
              builder: (context, state) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {
                          print(' $songPath <-------- SONG PATH ----');
                          this.audioPlayer.play(songPath);

                          /// Reset Vote Count to Zero
                          context.read<SongsPlayerBloc>().add(
                              SongsPlayerEvent.onPlayerCompletionEvent(
                                  songList[0]['songId'], songList[0]['uid']));
                        },
                        icon: Icon(
                          Icons.play_circle_fill_outlined,
                          size: 50,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            audioPlayer.stop();
                          },
                          icon: Icon(
                            Icons.stop_circle_outlined,
                            size: 50,
                            color: Colors.red[200],
                          )),
                    ],
                  ),
                );
              },
            ),
            context.read<SongsPlayerBloc>().state.maybeMap(
                onPlayerCompletionState: (_) {
              // _pos = _dur;
              return Container();
            }, orElse: () {
              return Container();
            }),
            OutlinedButton(
              onPressed: () {
                audioPlayer.stop();
                BlocProvider.of<SongsPlayerBloc>(context)
                    .add(SongsPlayerEvent.fetchArtistSongsEvent());
                playLocal();
                showDialog(
                  barrierColor: Colors.amber,
                  useSafeArea: true,
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      scrollable: true,
                      title: Align(
                        alignment: Alignment.center,
                        child: Text("Vote and win offers !!!"),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      content: SingleChildScrollView(
                        child: BlocBuilder<SongsPlayerBloc, SongsPlayerState>(
                          builder: (context, state) {
                            bool showWinner = false;
                            return Column(
                              children: [
                                Container(
                                  width: double.maxFinite,
                                  height: height / 2,
                                  child: context
                                      .read<SongsPlayerBloc>()
                                      .state
                                      .maybeMap(
                                    fetchArtistSongsState: (received) {
                                      // Future.delayed(const Duration(seconds: 2), () {});
                                      return ListView.builder(
                                        // shrinkWrap: true,
                                        itemCount: optionsToShow.length,
                                        itemBuilder: (context, index) {
                                          bool _isPressed = false;

                                          context.read<EventBloc>().add(
                                              EventEvent
                                                  .createGameModeEntryEvent(
                                                      eventId,
                                                      optionsToShow[index]
                                                          ['songId'],
                                                      optionsToShow[index]
                                                          ['artistUid']));

                                          /// Update the count of appeared in option
                                          context.read<EventBloc>().add(EventEvent
                                              .updateAppearedInOptionCountEvent(
                                                  optionsToShow[index]
                                                      ['songId'],
                                                  optionsToShow[index]
                                                      ['artistUid']));

                                          AudioPlayer optionAudioPlayer =
                                              AudioPlayer();

                                          if (index == 0) {
                                            optionAudioPlayer.play(
                                                optionsToShow[0]['songUrl']);
                                            Future.delayed(
                                                const Duration(seconds: 20),
                                                () {
                                              optionAudioPlayer.stop();

                                              /// Show a text message that Voting has started after the song preview
                                              context.read<EventBloc>().add(
                                                  EventEvent
                                                      .votingStartedEvent());
                                            });

                                            // optionAudioPlayer.stop();
                                            Future.delayed(
                                                Duration(seconds: 30), () {
                                              optionAudioPlayer.stop();
                                            });

                                            Future.delayed(
                                                Duration(seconds: 35), () {
                                              ///Enabling this code will pop the showDIalog
                                              // AutoRouter.of(context).pop();
                                              showWinner = true;
                                              context.read<EventBloc>().add(
                                                      EventEvent
                                                          .showWinnerEvent(
                                                    eventId,
                                                    optionsToShow[index]
                                                        ['songId'],
                                                  ));
                                              print(
                                                  'NOW PRINTING AFTEREVENT <----');
                                            });
                                          }

                                          return Card(
                                            child: ListTile(
                                              selected: true,
                                              title: Column(
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: Colors.blue,
                                                      shape: BoxShape.rectangle,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              4.0),
                                                      child: Text(
                                                        // "OPTION - ${index + 1}",
                                                        'SONG',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            color: Colors.white,
                                                            fontSize: 10),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 8),
                                                  Text(
                                                    '${optionsToShow[index]['title'].split('.')[0]}',
                                                    // '${optionsToShow[index]['title'].split('.')[0]} \n ${optionsToShow[index]}',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(height: 8),
                                                ],
                                              ),
                                              subtitle: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      /// Code to register a users vote for game-mode
                                                      /// API call will be made to capture the user Id and the option thata they selected.
                                                      /// Game-Mode closes in 10 seconds so the user will have option to change their votes till then.
                                                      /// The votes will be used to generate the report for the Artist.

                                                      context
                                                          .read<EventBloc>()
                                                          .add(
                                                            EventEvent
                                                                .gameModeVoteEvent(
                                                              optionsToShow[
                                                                      index]
                                                                  ['songId'],
                                                              optionsToShow[
                                                                      index]
                                                                  ['artistUid'],
                                                              'sentiment_very_dissatisfied',
                                                            ),
                                                          );

                                                      print(
                                                          'sentiment_very_dissatisfied');
                                                    },
                                                    icon: Icon(
                                                      Icons
                                                          .sentiment_very_dissatisfied,
                                                      size: 32,
                                                      color:
                                                          Colors.red.shade800,
                                                    ),
                                                  ),
                                                  // IconButton(
                                                  //   onPressed: () {
                                                  //     context
                                                  //         .read<EventBloc>()
                                                  //         .add(
                                                  //           EventEvent
                                                  //               .gameModeVoteEvent(
                                                  //             optionsToShow[
                                                  //                     index]
                                                  //                 ['songId'],
                                                  //             optionsToShow[
                                                  //                     index]
                                                  //                 ['artistUid'],
                                                  //             'sentiment_neutral',
                                                  //           ),
                                                  //         );
                                                  //     print(
                                                  //         'sentiment_neutral');
                                                  //   },
                                                  //   icon: Icon(
                                                  //     Icons.sentiment_neutral,
                                                  //     size: 32,
                                                  //     color: Colors
                                                  //         .blueGrey.shade800,
                                                  //   ),
                                                  // ),
                                                  IconButton(
                                                    onPressed: () {
                                                      context
                                                          .read<EventBloc>()
                                                          .add(
                                                            EventEvent
                                                                .gameModeVoteEvent(
                                                              optionsToShow[
                                                                      index]
                                                                  ['songId'],
                                                              optionsToShow[
                                                                      index]
                                                                  ['artistUid'],
                                                              'sentiment_very_satisfied',
                                                            ),
                                                          );

                                                      print(
                                                          'sentiment_very_satisfied');
                                                    },
                                                    icon: Icon(
                                                      Icons
                                                          .sentiment_very_satisfied,
                                                      size: 32,
                                                      color:
                                                          Colors.green.shade800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    orElse: () {
                                      Text('No Data');
                                    },
                                  ),
                                ),
                                // context.read<SongsPlayerBloc>().state.maybeMap(
                                //   gameModeTimerState: (time) {
                                //     return CircleAvatar(
                                //       minRadius: 50,
                                //       child: Text('$time'),
                                //       maxRadius: 60,
                                //     );
                                //   },
                                //   orElse: () {
                                //     return Container();
                                //   },
                                // ),
                                BlocBuilder<EventBloc, EventState>(
                                  builder: (context, state) {
                                    return context
                                        .read<EventBloc>()
                                        .state
                                        .maybeMap(showWinnerState: (_) {
                                      print('NOW PRINTING STATE <----');
                                      // return Text('Winner is .... ${_.winner}',
                                      //     style: TextStyle(fontSize: 40));

                                      return Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .sentiment_very_dissatisfied,
                                                    size: 32,
                                                    color: Colors.red.shade800,
                                                  ),
                                                  Text(_.winner[2].toString())
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .sentiment_very_satisfied,
                                                    size: 32,
                                                    color:
                                                        Colors.green.shade800,
                                                  ),
                                                  Text(_.winner[1].toString())
                                                ],
                                              ),
                                            ],
                                          ),
                                          Text('... and the winner is ...',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                color: Colors.green,
                                              )),
                                          SizedBox(height: 10),
                                          Center(
                                            child: Card(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Row(
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundImage:
                                                          NetworkImage(
                                                              _.winner[0]
                                                                  ['photoUrl']),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            '${_.winner[0]['displayName']}',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                        Text(
                                                            '${_.winner[0]['email']}',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );

                                      // return showWinner == true
                                      //     ? Text('Winner is ....')
                                      //     : Text('Waiting');
                                    }, votingStartedState: (_) {
                                      return Center(
                                          child: Text(
                                              'Voting Closes in 10 seconds'));
                                      // child: Text(
                                      //     'Voting Closes in 10 seconds${_.timerValue}'));
                                    }, orElse: () {
                                      return Container();
                                    });
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      actions: <Widget>[
                        Center(
                          child: TextButton(
                            child: Text(
                              'END GAME-MODE',
                              style: TextStyle(color: Colors.red),
                            ),
                            onPressed: () {
                              /// Resetting the options array to make it ready for new options
                              optionsToShow = [];
                              context
                                  .read<EventBloc>()
                                  .add(EventEvent.started(songList[0]['uid']));
                              context
                                  .read<SongsPlayerBloc>()
                                  .add(SongsPlayerEvent.started());
                              // BlocProvider.of<SongsPlayerBloc>(context).add(
                              //     SongsPlayerEvent.fetchArtistSongsEvent());
                              AutoRouter.of(context).pop();
                            },
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child: Text(
                'BEGIN GAME-MODE',
                style:
                    TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  playLocal() async {
    AudioCache audioCache = AudioCache();
    await audioCache.play('sounds/drum_roll.wav');
  }
}
