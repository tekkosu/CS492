import 'package:flutter/material.dart';
import 'screens/homepage.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     centerTitle: true,
      //     title: Text('Wasteagram - ###'),
      //   ),
      //   body: MyHomePage(),
      //   ),
      );
  }
}