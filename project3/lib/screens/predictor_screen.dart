import '../components/fortune.dart';
import 'package:flutter/material.dart';

class PredictorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Fortune Teller', style: TextStyle(fontFamily: 'Lobster', fontSize: 20))
      ),
      body: Center(child:MyFortune())
    );
  }
}