import 'package:flutter/material.dart';
import 'screens/log.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 4',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainHome()
    );
  }

}

class MainHome extends StatelessWidget {

  static final routes = {
    Log.routeName: (context) => Log()
  };

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle:true, 
          title: Text('Welcome'),
          // actions: <Widget>[
          //   IconButton(
          //     icon: Icon(Icons.settings,color:Colors.white),
          //     onPressed: () =>
          //       Scaffold.of(context).openEndDrawer(),
          //   )],
          ),
        body: LayoutBuilder(builder: layoutDecider),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(child: Text('Settings')),
              ListTile(
                title: Text ('Dark Mode'),
              )
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          child:  Icon(Icons.add),
          onPressed: () => pushNewLog(context),
          ),
        ),
        routes: routes,
    );
  }

  Widget layoutDecider(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth < 500 ? VerticalLayout() : HorizonalLayout();

  void pushNewLog(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Log()));
  }
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
