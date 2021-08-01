import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Event Page'),
      ),
      body: Center(
        child: Text('Event Page'),
      ),
    );
  }
}
