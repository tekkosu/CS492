import '../components/card.dart';
import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Business Card')
      ),
      body: Center(child:MyCard()),
    );
  }
}
