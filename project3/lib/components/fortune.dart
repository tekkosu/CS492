import '../models/eightBall.dart';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class MyFortune extends StatefulWidget {
  @override
  _MyFortuneState createState() => _MyFortuneState();
}

class _MyFortuneState extends State<MyFortune> {
  final eightball = EightBall();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(0),
          child: Text(
            'Call Me... Maybe?', 
            textAlign: TextAlign.center, 
            style: TextStyle(
              fontFamily: 'Bangers', 
              fontSize: 30
              )
            ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: GestureDetector(
            onTap: () { setState(() { eightball.shake(); }); },
            child: Text(
              'Ask a question... TAP for the answer.', 
              style: TextStyle(
                fontFamily: 'Staatliches',
                fontSize: 20,
                fontStyle: FontStyle.italic,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 100),
                    const Offset(300, 100),
                    <Color>[
                      Colors.blue,
                      Colors.orange,
                    ],
                )
              )
            )
          )
        ),
        Text(
          '${eightball.fortune}', 
          style: TextStyle(
            fontFamily: 'Bangers',
            fontSize: 25,
            color: Colors.purple[500]
          )
        )
      ],
    );
  }
}