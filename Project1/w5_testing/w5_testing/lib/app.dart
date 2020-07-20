import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'screens/alpha_screen.dart';
import 'screens/beta_screen.dart';
import 'screens/chi_screen.dart';

class App extends StatelessWidget {
  final String title;
  const App({Key key, this.title}) : super(key: key);
  @override 
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: title,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MainScreen(title: title),
      //home: MainTabController()
    );
  }
}

class MainTabController extends StatelessWidget{

  static const tabs = [
    Tab(text: 'Alpha'),
    Tab(text: 'Beta'),
    Tab(text: 'Chi')
  ]; 

  final screens = [AlphaScreen(), BetaScreen(), ChiScreen()];

  @override 
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cool'),
          bottom: TabBar(tabs: tabs)
        ),
        body: TabBarView(children: screens)
      )
    );
  }
}
 