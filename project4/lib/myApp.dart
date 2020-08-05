import 'package:flutter/material.dart';
import 'screens/log.dart';
import 'models/journalEntries.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 4',
      //theme: ThemeData(primarySwatch: Colors.grey),
      home: MainHome()
    );
  }
}

class MainHome extends StatefulWidget {

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  bool lights = false;

  dynamic themeColors() {
    if (lights) {
      return Colors.black;
    } else {
      return Colors.blue;
    }
  }

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: lights ? Colors.black : Colors.blue,
        accentColor: lights ? Colors.black : Colors.blue,
        //textTheme: TextTheme(bodyText2: TextStyle(color: lights ? Colors.black : Colors.blue))

      ),
      home: Scaffold(
        backgroundColor: lights ? Colors.grey[850] : Colors.white,
        appBar: AppBar(
          //backgroundColor: themeColors(),
          centerTitle:true, 
          title: Text('Welcome'),
        ),
        body: SafeArea(
          child: Container(
            //color: lights ? Colors.grey[850] : Colors.white,
            child: LayoutBuilder(builder: layoutDecider),
          )
        ),
        
        endDrawer: Drawer(
          child: ListView(
            children: [
              ListTile(
                title: Text ('Settings', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              SwitchListTile(
                title: const Text('Dark Mode'),
                value: lights,
                onChanged: (bool value) {
                  setState(() {
                    lights = value;
                  });
                },
                secondary: const Icon(Icons.brightness_medium),
              ),
            ],
          )
        ),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: themeColors(),
          child:  Icon(Icons.add),
          onPressed: () => pushNewLog(context),
          ),
        ),
    );
  }

  Widget layoutDecider(BuildContext context, BoxConstraints constraints) =>
    constraints.maxWidth < 500 ? VerticalLayout() : HorizonalLayout();

  void pushEntries(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => JournalEntries()));
  }

  void pushNewLog(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Log(lights:lights)));
  }
}

class VerticalLayout extends StatefulWidget {

  @override
  _VerticalLayoutState createState() => _VerticalLayoutState();
}

class _VerticalLayoutState extends State<VerticalLayout> {

  @override 
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      child: Column(
      children: [
        ListTile(
          //leading: Icon(Icons.chevron_right),
          title: Text("Great Bagel"),
          subtitle: Text("August 4, 2020"),
          onTap: () => pushEntries(context),
          )
        ],
      )
    ); 
  }

  void pushEntries(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => JournalEntries()));
  }
}

class HorizonalLayout extends StatefulWidget {
  @override
  _HorizonalLayoutState createState() => _HorizonalLayoutState();
}

class _HorizonalLayoutState extends State<HorizonalLayout> {
  @override 
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: ListTile(
            //leading: Icon(Icons.chevron_right),
            title: Text("Great Bagel"),
            subtitle: Text("August 4, 2020"),
          )
        ),
        Expanded(
          child: ListTile(
            //leading: Icon(Icons.chevron_right),
            title: Text("Great Bagel", style: TextStyle(fontSize: 20),),
            subtitle: Text("This is the best bagel in the world!  It's unbelievable, I can't believe it!!!"),
            isThreeLine: true,
          )
        ),
      ],
    );
  }
}
