import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/upload_event/upload_event_bloc.dart';

class UploadEventPage extends StatelessWidget {
  UploadEventPage({Key? key}) : super(key: key);
  File? fileObj;
  String? fileName = 'No Files Selected';
  String? fileSize = '0';
  UploadTask? uploadFileTask;

  @override
  Widget build(BuildContext context) {
    context.read<UploadEventBloc>().add(UploadEventEvent.started());

    return MultiBlocListener(
      listeners: [
        BlocListener<UploadEventBloc, UploadEventState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              selectSongFileState: (recieved) {
                print(recieved.filePath.files.single.extension);

                this.fileName = recieved.filePath.files.single.name;
                this.fileObj =
                    File(recieved.filePath.files.single.path.toString());
                this.fileSize =
                    ((recieved.filePath.files.single.size) / 1000000)
                        .toStringAsPrecision(3);
              },
              fileSelectedForUploadState: (_) {
                print('$_ <---- UPLOAD STATUS');
              },
              uploadFileState: (uploadFileTaskRec) {
                print(
                    '${uploadFileTaskRec.uploadStatusCurrent.toString()} <---- RECIEVED UploadTaskFile');
              },
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Upload Songs'),
        ),
        body: BlocBuilder<UploadEventBloc, UploadEventState>(
          bloc: BlocProvider.of<UploadEventBloc>(context),
          builder: (context, state) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        print('HERE');
                        context
                            .read<UploadEventBloc>()
                            .add(UploadEventEvent.selectSongFileClicked());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.attach_file),
                          SizedBox(width: 10),
                          Text('Select Song File'),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$fileName',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          '($fileSize MB)',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        print(' <---- FILENAME UPLOAD BUTTOn');

                        context
                            .read<UploadEventBloc>()
                            .add(UploadEventEvent.uplodFileClicked());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.my_library_music_outlined),
                          SizedBox(width: 10),
                          Text('Upload Song File'),
                        ],
                      ),
                    ),
                    context.read<UploadEventBloc>().state.maybeMap(
                      uploadFileState: (rec) {
                        return rec.uploadStatusCurrent;
                        // return StreamBuilder<TaskSnapshot>(
                        //     stream: rec.uploadStatusCurrent,
                        //     builder: (context, snapshot) {
                        //       print(snapshot.data);
                        //       return Text(rec.uploadStatusCurrent.toString());
                        //     });
                      },
                      // uploadFileState: (received) {
                      //   return StreamBuilder<TaskSnapshot>(
                      //     stream: received.uploadStatusCurrent,
                      //     builder: (context, snapshot) {
                      //       if (snapshot.hasData) {
                      //         final snap = snapshot.data!;
                      //         final progress =
                      //             snap.bytesTransferred / snap.totalBytes;
                      //         final percentage =
                      //             (progress * 100).toStringAsFixed(2);

                      //         return Text(
                      //           '$percentage %',
                      //           style: TextStyle(
                      //               fontSize: 20, fontWeight: FontWeight.bold),
                      //         );
                      //       } else {
                      //         return Container();
                      //       }
                      //     },
                      //   );
                      // },
                      orElse: () {
                        return Container();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // Text displayMessage(fileObj) {
  //   if (fileObj == null) {
  //     return Text('No files selected for upload');
  //   } else {
  //     return Text(fileObj.toString());
  //   }
  // }
  // Widget fileUploadStatus(UploadTask uploadFileTask) =>
  //     StreamBuilder<TaskSnapshot>(
  //       stream: uploadFileTask.snapshotEvents,
  //       builder: (context, snapshot) {
  //         if (snapshot.hasData) {
  //           final fileData = snapshot.data;
  //           final status =
  //               ((fileData!.bytesTransferred / fileData.totalBytes) * 100)
  //                   .toStringAsPrecision(2);
  //           return Text('$status %');
  //         } else {
  //           return Container();
  //         }
  //       },
  //     );

  Widget buildStatus(UploadTask? uploadFileTask) => StreamBuilder<TaskSnapshot>(
        stream: uploadFileTask!.snapshotEvents,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            print('${snapshot.data} HAS DATA <----');
            final snap = snapshot.data;
            final progress = snap!.bytesTransferred / snap.totalBytes;
            final percentage = (progress * 100).toStringAsFixed(2);
            return Text('$percentage %');
          }

          return Text('TEST');
        },
      );

  Future fileUploadStatus(UploadTask uploadFileTask) async {
    return StreamBuilder<TaskSnapshot>(
      stream: uploadFileTask.snapshotEvents,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          print('${snapshot.data} <---- HAS DATA');
          final fileData = snapshot.data;
          final status =
              ((fileData!.bytesTransferred / fileData.totalBytes) * 100)
                  .toStringAsPrecision(2);
          print('$status <---- STATUS PERCENTAGE');
          return Text('$status %');
        } else {
          return Text('');
        }
      },
    );
  }
}
