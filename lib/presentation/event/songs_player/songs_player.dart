import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/event/event_bloc.dart';
import 'package:flutter_play_poll/application/event/songs_player/songs_player_bloc.dart';

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
    int soungCounter = 0;
    List gameModeFullSongList = [];

    BlocProvider.of<SongsPlayerBloc>(context)
        .add(SongsPlayerEvent.fetchArtistSongsEvent());

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
      soungCounter++;
      // context.read<EventBloc>().add(EventEvent.started(songList[0]['uid']));
      // this.audioPlayer.play(songPath);
      if (soungCounter == 2) {
        soungCounter = 0;
        print('START GAMEMODE <----');
      }
    });

    // else {
    // this.audioPlayer.play(songPath);

    // /// Reset Vote Count to Zero
    // context.read<SongsPlayerBloc>().add(
    //     SongsPlayerEvent.onPlayerCompletionEvent(
    //         songList[0]['songId'], songList[0]['uid']));
    // }

    // String songPath =
    //     "https://firebasestorage.googleapis.com/v0/b/flutter-play-poll.appspot.com/o/1M7d0zRBnXO65tMx3FXsfnxFVvS2%2Fsongs%2Fbensound-betterdays.mp3?alt=media&token=7c53d18b-c35e-4641-8360-175f6f3dc572";

    return MultiBlocListener(
      listeners: [
        BlocListener<SongsPlayerBloc, SongsPlayerState>(
          listener: (context, state) {
            state.map(
                initial: (_) {},
                onAudioPositionChangedState: (currentPositionValue) {
                  this
                      .audioPlayer
                      .onAudioPositionChanged
                      .listen((songPosition) {
                    _pos = songPosition;
                    context.read<SongsPlayerBloc>().add(
                        SongsPlayerEvent.onAudioPositionChangedEvent(_pos));
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
                });
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
                  max: _dur.inSeconds.toDouble(),
                  value:
                      _pos.inSeconds.toDouble().floorToDouble().roundToDouble(),
                  onChanged: (double value) {
                    this.audioPlayer.seek(Duration(seconds: value.toInt()));
                    // Duration(seconds: _pos.inSeconds.toDouble().toInt()));
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
                          // print(' $songPath <-------- SONG PATH ----');
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
            OutlinedButton(
              onPressed: () {
                playLocal();
                showDialog(
                  useSafeArea: true,
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return new AlertDialog(
                      scrollable: true,
                      title: new Text(
                          "Vote for your favourite song and win offers !!!"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      content: SingleChildScrollView(
                        child: Container(
                          width: double.maxFinite,
                          height: height / 2,
                          child: context.read<SongsPlayerBloc>().state.maybeMap(
                            fetchArtistSongsState: (received) {
                              // Future.delayed(const Duration(seconds: 2), () {});
                              return ListView.builder(
                                // shrinkWrap: true,
                                itemCount: received.artistSongs.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      title: Text(
                                          '${received.artistSongs[index]['title']}'),
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
                      ),
                      actions: <Widget>[
                        TextButton(
                          child: Text('End Game-Mode'),
                          onPressed: () {
                            AutoRouter.of(context).pop();
                          },
                        )
                      ],
                    );
                  },
                );
              },
              child: Text(
                'START GAME-MODE',
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
    AudioPlayer result = await audioCache.play('sounds/drum_roll.wav');
  }
}
