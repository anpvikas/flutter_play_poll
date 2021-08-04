import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SongsPlayer extends StatelessWidget {
  const SongsPlayer({Key? key, required this.audioPlayer}) : super(key: key);
  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    Duration _dur = Duration();
    Duration _pos = Duration();

    String songPath =
        "https://firebasestorage.googleapis.com/v0/b/flutter-play-poll.appspot.com/o/1M7d0zRBnXO65tMx3FXsfnxFVvS2%2Fsongs%2Fbensound-betterdays.mp3?alt=media&token=7c53d18b-c35e-4641-8360-175f6f3dc572";

    // this.audioPlayer.play(songPath);

    return Text('Audio Player');
  }
}
