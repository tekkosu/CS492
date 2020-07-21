import 'dart:math';
import '../models/die.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Flower extends StatefulWidget {
  @override
  _FlowerState createState() => _FlowerState();
}

class _FlowerState extends State<Flower> {

  final die = Die(numberOfSides:20);
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${die.currentValue}', style: Theme.of(context).textTheme.display4),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            //onTap: () => launch('https://flutter.dev'),
            onTap: () { setState( () {die.roll();}); },
            child: Image.asset('assets/images/profile.png'),
          ),
        )
      ],
    );
  }
}

// class Flower extends StatelessWidget {

//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Text('##', style: Theme.of(context).textTheme.display4),
//         Padding(
//           padding: EdgeInsets.all(20),
//           child: GestureDetector(
//             onTap: () { },
//             child: Image.asset('assets/rh.png'),
//           ),
//         )
//       ],
//     );
//   }

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