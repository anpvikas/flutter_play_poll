import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/create_event/create_bloc.dart';

import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/domain/events/value_objects.dart';

class CreateEventPage extends StatelessWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CreateBloc, CreateState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              returnToHomePage: (_) {
                print(
                    '8-CreateBloc Listener responds to the added event cancelButtonClicked and yields state = returnToHomePage ');
                print('inside listener returntohomepage <---- $context');
                print(
                    '9-Another event = onHomePageEvent added to the HomeBloc');
                context.read<HomeBloc>()..add(HomeEvent.onHomePageEvent());
                print('10-Another event = onHomePage added to the CreateBloc');
                context.read<CreateBloc>().add(CreateEvent.onHomePage());
              },
              onHomePageFromCreatePage: (_) {},
              eventNameValidated: (_) {},
              eventCreated: (_) {
                print('Event Successfully Created');
                final snackBar = SnackBar(
                  content: Text(
                    'Event Successfully Created Under \n My Events',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                  backgroundColor: Colors.green,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                context
                    .read<CreateBloc>()
                    .add(CreateEvent.cancelButtonClicked());
              },
              eventLocationValidated: (_) {},
              eventCreationFailed: (_) {
                print('FAILED <----');
              },
            );
          },
        ),
        BlocListener<HomeBloc, HomeState>(listener: (context, state) {
          state.map(
            onHomePageState: (_) {
              print('After 9-Popping page to go back to HomePage');
              AutoRouter.of(context).pop();
            },
            navigatedToCreateEventPage: (_) {},
            onCreateEventPage: (_) {},
            navigatedToSearchEventPage: (_) {},
            navigatedToMyEventPage: (_) {},
            navigatedToJoinedEventPage: (_) {},
            onMyEventsPage: (_) {},
          );
        })
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Create Event'),
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    EventNameFieldWidget(),
                    LocationFieldWidget(),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AddImageButtonWidget(),
                        AddPeopleButtonWidget(),
                      ],
                    ),
                    SizedBox(height: 20),
                    // SongsRepoButtonWidget(),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<CreateBloc>()
                                  .add(CreateEvent.create());
                            },
                            child: Text('Create'),
                          ),
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: OutlinedButton(
                            onPressed: () {
                              print(
                                  '6-Cancel Button Pressed on CreateEventPage');
                              print(
                                  '7-Event added to the CreateBloc = cancelButtonClicked <----');
                              context
                                  .read<CreateBloc>()
                                  .add(CreateEvent.cancelButtonClicked());
                            },
                            child: Text('Cancel'),
                          ),
                        ),
                      ],
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

class EventNameFieldWidget extends StatelessWidget {
  Name name = Name('');
  EventNameFieldWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        name = Name(value);
        context.read<CreateBloc>().add(CreateEvent.validateEventName(name));
      },
      validator: (_) {
        context.read<CreateBloc>().add(CreateEvent.validateEventName(name));
        if (name.value.toString().length <= 2) {
          return 'Too Short';
        }
      },
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        labelText: "Event Name",
        labelStyle: TextStyle(color: Colors.blueGrey[600]),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
      ),
    );
  }
}

class LocationFieldWidget extends StatelessWidget {
  Location location = Location('');
  LocationFieldWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        location = Location(value);
        context
            .read<CreateBloc>()
            .add(CreateEvent.validateEventLocation(location));
        // location = Location('');
      },
      cursorColor: Colors.blueGrey,
      decoration: InputDecoration(
        labelText: "Location",
        labelStyle: TextStyle(color: Colors.blueGrey[600]),
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey, width: 2),
        ),
      ),
    );
  }
}

class AddImageButtonWidget extends StatelessWidget {
  const AddImageButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: Colors.blueGrey[600]!),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(Icons.add_circle_outlined),
              Text(
                'Add Image',
                style: TextStyle(color: Colors.blueGrey[600], fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddPeopleButtonWidget extends StatelessWidget {
  const AddPeopleButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: Colors.blueGrey[600]!),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Icon(Icons.add_circle_outlined),
              Text(
                'Add People',
                style: TextStyle(color: Colors.blueGrey[600], fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SongsRepoButtonWidget extends StatelessWidget {
  const SongsRepoButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(width: 2, color: Colors.blueGrey[600]!),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.music_note),
              Text(
                'Select Default Songs Repository',
                style: TextStyle(color: Colors.blueGrey[600], fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
