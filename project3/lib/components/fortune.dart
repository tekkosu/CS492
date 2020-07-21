import '../models/eightBall.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


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
              fontFamily: 'Ranchers', 
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
              style: TextStyle(fontSize: 20)
              )
          )
        ),
        Text(
          '${eightball.fortune}', 
          style: TextStyle(
            fontFamily: 'Bangers',
            fontSize: 25
          )
        )
      ],
    );
  }
}

//   // Widget build(BuildContext context) {
//   //   return FractionallySizedBox(
//   //     widthFactor: 0.9,
//   //     heightFactor: 0.9,
//   //     child: FittedBox(
//   //       alignment: Alignment.bottomRight,
//   //       fit: BoxFit.scaleDown,
//   //       child: GestureDetector(
//   //         onTap: () { displaySnackBar(context);},
//   //         child: Image.asset('assets/rh.png')
//   //       ),
//   //     ),
//   //   );
//   // }

//   // void displaySnackBar(BuildContext context) {
//   //   final snackBar = SnackBar(content: Text('Pretty Cool!!'));
//   //   Scaffold.of(context).showSnackBar(snackBar);
//   // }

//   // double padding(BuildContext context) {
//   //   return MediaQuery.of(context).size.width * 0.1;
//   // }

// }