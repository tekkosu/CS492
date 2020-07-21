import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class MyCard extends StatefulWidget {
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {

  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(25),
          child: Image.asset('assets/images/profile.png'),
        ),
        Text('Kevin Tek'),
        Text('Software Developer'),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () => launch("sms:5555555555"),
            child: Text('555-555-5555')
          )
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 55.0),
              child: GestureDetector(
                onTap: () => launch('http://github.com'),
                child: Text('http://github.com')
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Text('tekk@oregonstate.edu')
            )
          ],
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