import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/upload_event/upload_event_bloc.dart';

class UploadEventPage extends StatelessWidget {
  const UploadEventPage({Key? key}) : super(key: key);
  // File? fileObj;
  // String? fileName = 'No Files Selected';
  // String? fileSize = '0';
  // UploadTask? uploadFileTask;

  @override
  Widget build(BuildContext context) {
    File? fileObj;
    String? fileName = 'No Files Selected';
    String? fileSize = '0';
    UploadTask? uploadFileTask;
    context.read<UploadEventBloc>().add(UploadEventEvent.started());

    return MultiBlocListener(
      listeners: [
        BlocListener<UploadEventBloc, UploadEventState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              selectSongFileState: (recieved) {
                print(recieved.filePath.files.single.extension);

                fileName = recieved.filePath.files.single.name;
                fileObj = File(recieved.filePath.files.single.path.toString());
                fileSize = ((recieved.filePath.files.single.size) / 1000000)
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
                    SizedBox(height: 20),
                    context.read<UploadEventBloc>().state.maybeMap(
                      uploadFileState: (rec) {
                        return rec.uploadStatusCurrent;
                      },
                      orElse: () {
                        return Container();
                      },
                    ),
                    SizedBox(height: 20),
                    OutlinedButton(
                      onPressed: () {
                        AutoRouter.of(context).pop();
                      },
                      child: Text('Back'),
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
}
