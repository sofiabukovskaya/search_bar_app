import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_search_bar/home_page.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.tealAccent,
      home: HomePage(),
    );
  }
}