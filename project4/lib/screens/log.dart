import 'package:flutter/material.dart';
import '../components/logDetail.dart';

class Log extends StatelessWidget {

  static const routeName = 'log';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New Entry'),
      ),
      body: SingleChildScrollView (
        child: Container(
          child: LogDetail(),
        ),
      ),
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
    );
  }

}