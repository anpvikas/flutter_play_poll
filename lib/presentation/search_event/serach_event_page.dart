import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz_unsafe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_play_poll/application/home/home_bloc.dart';
import 'package:flutter_play_poll/application/my_events/my_events_bloc.dart';
import 'package:flutter_play_poll/application/search_event/search_event_bloc.dart';
import 'package:flutter_play_poll/constants.dart';
import 'package:flutter_play_poll/domain/events/i_event_repository.dart';
import 'package:flutter_play_poll/injection.dart';
import 'package:flutter_play_poll/presentation/routes/router.gr.dart';

class SearchEventPage extends StatelessWidget {
  SearchEventPage({Key? key}) : super(key: key);
  dynamic allEventsData;
  @override
  Widget build(BuildContext context) {
    TextEditingController _eventNameController = TextEditingController();
    String queryString = '';

    return MultiBlocListener(
      listeners: [
        BlocListener<SearchEventBloc, SearchEventState>(
          listener: (context, state) {
            state.map(
              initial: (_) {
                context.read<SearchEventBloc>().add(SearchEventEvent.started());
              },
              searchResultsDisplayed: (searchResults) {},
              showAllEvents: (searchResults) {
                allEventsData = searchResults;
                print('WORKING2?? $allEventsData <----');
              },
              emptySearchState: (_) {},
              noDataFetchedState: (_) {
                print('NO DATA FETCHED??');
                return Center(
                    child: Text('No data fetched for the input query string2'));
              },
              searchQueryStringExistsState: (_) {
                print('${_.toString()} <---- PRINTING UNDERSCORE');

                context
                    .read<SearchEventBloc>()
                    .add(SearchEventEvent.searchButtonClicked(_.queryString));
              },
              joinState: (_) {
                AutoRouter.of(context).navigate(EventRoute());
              },
            );
          },
        ),
        BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            state.map(
              navigatedToCreateEventPage: (_) {},
              navigatedToSearchEventPage: (_) {},
              navigatedToMyEventPage: (_) {},
              navigatedToJoinedEventPage: (_) {},
              onCreateEventPage: (_) {},
              onHomePageState: (_) {},
              onMyEventsPage: (_) {},
              onSearchEventsPage: (_) {},
              onJoinedEventPage: (_) {},
            );
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search Event'),
          centerTitle: true,
          // actions: [],
        ),
        body: BlocBuilder<SearchEventBloc, SearchEventState>(
          builder: (context, state) {
            return Column(
              children: [
                buildSearchBox(queryString, _eventNameController, context),
                context.read<SearchEventBloc>().state.maybeMap(
                  showAllEvents: (searchResults) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: searchResults.data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              '${searchResults.data[index]['name']}',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                                '${searchResults.data[index]['location']}'),
                            leading: Icon(
                              Icons.date_range_outlined,
                              color: Colors.blue,
                              size: 40,
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                print(
                                    '${searchResults.data[index]} Button to join event');
                                context.read<SearchEventBloc>().add(
                                    SearchEventEvent.joinEvent(
                                        searchResults.data[index]));
                              },
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                color: Colors.green,
                                size: 35,
                              ),
                            ),
                            onTap: () {
                              print(searchResults.data[index]['eventId']);
                            },
                          ),
                        );
                      },
                    );
                  },
                  emptySearchState: (_) {
                    return Center(
                        child: Text(
                      'Please enter an event name',
                      style: TextStyle(color: Colors.red.shade500),
                    ));
                  },
                  noDataFetchedState: (_) {
                    return Center(
                        child: Text(
                      'No data fetched for the input event name. \n Try with different event name.',
                      // style: TextStyle(color: Colors.red.shade500),
                    ));
                  },
                  searchResultsDisplayed: (searchResults) {
                    print(
                        '${searchResults.data.length} <-----SEARCH DATA LENGTH');
                    // if (searchResults.data.length > 0) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: searchResults.data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              '${searchResults.data[index]['name']}',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            subtitle: Text(
                                '${searchResults.data[index]['location']}'),
                            leading: Icon(
                              Icons.date_range_outlined,
                              color: Colors.blue,
                              size: 40,
                            ),
                            trailing: IconButton(
                              onPressed: () {
                                print(
                                    '${searchResults.data[index]} Button to join event in searchResultsDisplayed state.map');
                                context.read<SearchEventBloc>().add(
                                    SearchEventEvent.joinEvent(
                                        searchResults.data[index]));
                              },
                              icon: Icon(
                                Icons.add_circle_outline_outlined,
                                color: Colors.green,
                                size: 35,
                              ),
                            ),
                            onTap: () {
                              print(searchResults.data[index]['eventId']);
                            },
                          ),
                        );
                      },
                    );
                    // } else {
                    //   print('NO DATA LENGTH');
                    //   // context.read<SearchEventBloc>().add(
                    //   //     SearchEventEvent.searchButtonClicked(queryString));
                    //   context
                    //       .read<SearchEventBloc>()
                    //       .add(SearchEventEvent.noDataFetchedEvent());
                    //   return Center(
                    //       child: Text('No Data fetched for the query string'));
                    // }
                  },
                  orElse: () {
                    context
                        .read<SearchEventBloc>()
                        .add(SearchEventEvent.started());
                    return Text('No Events Created by any user');
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Container buildSearchBox(String queryString,
      TextEditingController _eventNameController, BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [boxTopShadow, boxBotomShadow],
      ),
      child: TextField(
        onChanged: (value) {
          print(value);
          queryString = value;
          checkInputQueryString(queryString, context);
        },
        onSubmitted: (queryString) {
          // context
          //     .read<SearchEventBloc>()
          //     .add(SearchEventEvent.searchButtonClicked(queryString));
          print('Search Button SUBMITTED by keyboard $allEventsData<----');
          checkInputQueryString(queryString, context);
        },
        controller: _eventNameController,
        decoration: InputDecoration(
          prefixIcon: IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // context
              //     .read<SearchEventBloc>()
              //     .add(SearchEventEvent.searchButtonClicked(queryString));
              print(
                  '$allEventsData  Button Clicked ZZZZ ${allEventsData.data}<----');

              checkInputQueryString(queryString, context);
            },
          ),
          suffixIcon: IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () {
              _eventNameController.clear();
            },
          ),
          hintText: 'Enter event name ...',
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }

  void checkInputQueryString(String queryString, BuildContext context) {
    if (queryString.length > 0) {
      List<dynamic> newEventsList =
          allEventsData.data.map((m) => (m['name'])).toList();
      print('$newEventsList <~~~~');
      int i;
      for (i = 0; i < newEventsList.length; i++) {
        if (newEventsList[i].toString().toLowerCase() ==
            queryString.toLowerCase()) {
          print(newEventsList[i].toString());
          context.read<SearchEventBloc>().add(
              SearchEventEvent.searchQueryStringExistsEvent(
                  newEventsList[i].toString()));
          // context.read<SearchEventBloc>().add(
          //     SearchEventEvent.searchButtonClicked(
          //         newEventsList[i].toString()));
        } else {
          print('TESTING-123');
          context
              .read<SearchEventBloc>()
              .add(SearchEventEvent.noDataFetchedEvent());
        }
      }
    } else {
      // context.read<SearchEventBloc>().add(SearchEventEvent.emptySearchEvent());
      context.read<SearchEventBloc>().add(SearchEventEvent.started());
    }
  }
}
