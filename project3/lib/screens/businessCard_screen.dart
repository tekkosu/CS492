import '../components/card.dart';
import 'package:flutter/material.dart';

class BusinessCardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Business Card', style: TextStyle(fontFamily: 'Lobster', fontSize: 20))
      ),
      body: SingleChildScrollView (
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.red, Colors.lightBlue]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [MyCard()],
            ),
          )
        )  
    );
  }

}
