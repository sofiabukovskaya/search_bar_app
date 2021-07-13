import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Search'),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {
          showSearch(context: context, delegate: DataSearch());
        })],
      ),
      body: Container(),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<String> cities = [
    "Paris",
    "London",
    "Bangkok",
    "Hong Kong",
    "Dubai",
    "Singapore",
    "Rome",
    "Macau",
    "Istanbul",
    "Delhi",
    "Tokyo",
    "Antalya",
    "Osaka",
    "Los Angeles",
    "Pattaya"
  ];
  final recentCities = [
    "Tokyo",
    "Antalya",
    "Osaka",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon: Icon(Icons.clear), onPressed: () {
    })];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
            icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
        onPressed: () {});
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty ? recentCities : cities;
    return ListView.builder(
        itemBuilder: (context, index) => ListTile(
              leading: Icon(Icons.location_city),
              title: Text(suggestionList[index]),
            ),
    itemCount: suggestionList.length,);
  }
}
