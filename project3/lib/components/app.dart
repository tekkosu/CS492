import 'package:flutter/material.dart';
import '../screens/businessCard_screen.dart';
import '../screens/resume_screen.dart';
import '../screens/predictor_screen.dart';

class App extends StatelessWidget {
  final String title;
  const App({Key key, this.title}) : super(key: key);
  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: title,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainTabController()
    );
  }
}

class MainTabController extends StatelessWidget{

  static const tabs = [
    Image(image:AssetImage('assets/images/profile_tab.png'), height: 55, width: 55),
    Image(image:AssetImage('assets/images/resume_tab.png'), height: 45, width: 45),
    Image(image:AssetImage('assets/images/fortune_tab.png'), height: 45, width: 45)
  ]; 

  final screens = [BusinessCardScreen(), ResumeScreen(), PredictorScreen()];

  @override 
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Call Me Maybe', 
            style: TextStyle(fontFamily: 'Ranchers', fontSize: 30, color: Colors.amberAccent)),
          bottom: TabBar(tabs: tabs)
        ),
        body: TabBarView(
          children: screens
        )
      )
    );
  }
}
 