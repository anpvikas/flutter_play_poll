import 'dart:async';
import 'dart:math';

import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/event/event_bloc.dart';
import 'package:flutter_play_poll/application/event/songs_player/songs_player_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SongsPlayer extends StatelessWidget {
  const SongsPlayer(
      {Key? key, required this.audioPlayer, required this.songList})
      : super(key: key);
  final AudioPlayer audioPlayer;
  final List songList;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Duration _dur = Duration();
    Duration _pos = Duration();
    Random random = Random();

    List gameModeFullSongList = [];
    List optionsToShow = [];

    // BlocProvider.of<SongsPlayerBloc>(context)
    //     .add(SongsPlayerEvent.fetchArtistSongsEvent());

    // print('$songPath <---- SONG PATH TOP');

    if (songList.length == 0) {
      return Center(child: CircularProgressIndicator());
    }

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

      // context.read<SongsPlayerBloc>().add(
      //     SongsPlayerEvent.onPlayerCompletionEvent(
      //         songList[0]['songId'], songList[0]['uid']));
      // context.read<EventBloc>().add(EventEvent.started(songList[0]['uid']));
      // this.audioPlayer.play(songPath);
    });

    // else {
    // this.audioPlayer.play(songPath);

    // /// Reset Vote Count to Zero
    // context.read<SongsPlayerBloc>().add(
    //     SongsPlayerEvent.onPlayerCompletionEvent(
    //         songList[0]['songId'], songList[0]['uid']));
    // }

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
                int i = 0;
                int random_number1 = 0;
                int random_number2 = 0;
                for (i = 0; i < 2; i++) {
                  if (i == 0) {
                    random_number1 =
                        random.nextInt(gameModeFullSongList.length);
                  } else {
                    random_number2 =
                        random.nextInt(gameModeFullSongList.length);
                    if (random_number1 == random_number2) {
                      i = i - 1;
                    }
                  }
                }
                optionsToShow.add(gameModeFullSongList[random_number1]);
                optionsToShow.add(gameModeFullSongList[random_number2]);

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
                  barrierColor: Colors.black,
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
                                          AudioPlayer optionAudioPlayer =
                                              AudioPlayer();
                                          // int i = 0;
                                          // for (i = 0;
                                          //     i <= (optionsToShow.length);
                                          //     i++) {}
                                          if (index == 0) {
                                            optionAudioPlayer.play(
                                                optionsToShow[0]['songUrl']);
                                            Future.delayed(
                                                const Duration(seconds: 15),
                                                () {
                                              optionAudioPlayer.stop();
                                              optionAudioPlayer.play(
                                                  optionsToShow[1]['songUrl']);
                                              // AutoRouter.of(context).pop();
                                            });

                                            // optionAudioPlayer.stop();
                                            Future.delayed(
                                                Duration(seconds: 40), () {
                                              ///Enabling this code will pop the showDIalog
                                              // AutoRouter.of(context).pop();
                                            });
                                          }

                                          Future.delayed(Duration(seconds: 30),
                                              () {
                                            optionAudioPlayer.stop();
                                          });

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
                                                        "OPTION - ${index + 1}",
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
                                                  IconButton(
                                                    onPressed: () {
                                                      print(
                                                          'sentiment_neutral');
                                                    },
                                                    icon: Icon(
                                                      Icons.sentiment_neutral,
                                                      size: 32,
                                                      color: Colors
                                                          .blueGrey.shade800,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
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
