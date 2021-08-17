import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/application/view_report/view_report_bloc.dart';
import 'package:flutter_play_poll/constants.dart';

class ViewReportPage extends StatelessWidget {
  const ViewReportPage({Key? key}) : super(key: key);

/**
 * 
 *    artistData.add(songIdList);
      artistData.add(songNameList);
      artistData.add(timesSongAppearedAsOption);
      artistData.add(isSongPlayedCountList);
      artistData.add(yesCountList);
      artistData.add(noCountList);
 */

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List artistSongData = [];
    return MultiBlocListener(
      listeners: [
        BlocListener<ViewReportBloc, ViewReportState>(
            listener: (context, state) {
          state.map(initial: (_) {
            print('MultiBlocListenenr - INITIAL-1');
            // context
            //     .read<ViewReportBloc>()
            //     .add(ViewReportEvent.showArtistReportEvent());
          }, showArtistReportState: (received) {
            print('----> MultiBlocListenenr - showArtistReportState-2');
            // if (received.artistData[0].length > 0) {

            // }
            artistSongData = received.artistData;

            print(received.artistData);
            print(artistSongData);
          }, onViewReportPageState: (_) {
            // print('----> PRINTING UNDERSCORE - ${_.artistData}');
            artistSongData = _.artistData;
          });
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('View Report'),
        ),
        body: BlocBuilder<ViewReportBloc, ViewReportState>(
            builder: (context, state) {
          // context.read<ViewReportBloc>().add(ViewReportEvent.started());
          return context.read<ViewReportBloc>().state.maybeMap(
            initial: (_) {
              print('----> state.maybeMap - INITIAL-3');
              // context
              //     .read<ViewReportBloc>()
              //     .add(ViewReportEvent.showArtistReportEvent());
              // return Text('Initial');
              return Center(child: CircularProgressIndicator());
            },
            showArtistReportState: (received) {
              print(
                  '----> state.maybeMap - showArtistReportState-4 $artistSongData');
              // return Text(artistSongData.toList().toString());
              // if ((artistSongData[0]).length == 0) {
              //   return Center(child: Text('Upload songs to view report.'));
              // } else {

              // }
              return ArtistReportWidget(
                  artistSongData: artistSongData, height: height);
            },
            orElse: () {
              // return Text('No songs uploaded as Artist');
              return Center(child: CircularProgressIndicator());
            },
          );
        }),
      ),
    );
  }
}

class ArtistReportWidget extends StatelessWidget {
  const ArtistReportWidget({
    Key? key,
    required this.artistSongData,
    required this.height,
  }) : super(key: key);

  final List artistSongData;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 4,
        );
      },
      itemCount: artistSongData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [boxTopShadow, boxBotomShadow],
                gradient: forContainerLinear),
            height: height / 6,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  //Song Name
                  Row(
                    children: [
                      Icon(Icons.library_music,
                          size: 45, color: Colors.amberAccent),
                      SizedBox(width: 8),
                      Text(
                        '${artistSongData[1][index]}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Times Appeared as Option
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.queue_music,
                                  size: 30, color: Colors.purple),
                              SizedBox(width: 8),
                              Text('Appeared - ${artistSongData[2][index]}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          // Times the Song got Played
                          Row(
                            children: [
                              Icon(Icons.play_circle_fill_outlined,
                                  size: 30, color: Colors.green.shade800),
                              SizedBox(width: 8),
                              Text('Played - ${artistSongData[3][index]}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      // Total Yes Votes Count
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.sentiment_very_satisfied_outlined,
                                  size: 30, color: Colors.green.shade400),
                              SizedBox(width: 8),
                              Text('Liked - ${artistSongData[4][index]}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                          // Total No Votes Count
                          Row(
                            children: [
                              Icon(Icons.sentiment_very_dissatisfied_outlined,
                                  size: 30, color: Colors.red.shade400),
                              SizedBox(width: 8),
                              Text('Unliked - ${artistSongData[5][index]}',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
