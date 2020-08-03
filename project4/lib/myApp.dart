import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 4',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          centerTitle:true, 
          title: Text('Welcome'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings,color:Colors.white),
              onPressed: () {},
            )],
          ),
        body: LayoutBuilder(builder: layoutDecider),
        floatingActionButton: FloatingActionButton(
          child:  Icon(Icons.add),
          onPressed: () {},
          ),
        ),
    );
  }

  Widget layoutDecider(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth < 500 ? VerticalLayout() : HorizonalLayout();
}

class VerticalLayout extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(color: Colors.lightGreen);
  }
}

class HorizonalLayout extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Container(color:Colors.lightGreen)),
        Expanded(child: Container(color:Colors.deepOrange)),
      ],
    );
  }
}
