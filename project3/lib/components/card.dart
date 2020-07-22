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
          child: Image.asset('assets/images/aFauci.png', height: 250, width: 250),
        ),
        Text('Anthony Fauci', style: TextStyle(fontFamily: 'Oswald', fontWeight: FontWeight.bold, fontSize: 25)),
        Text('MD Extraordinaire', style: TextStyle(fontFamily: 'Oswald', fontSize: 18),),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
            onTap: () => launch("sms:5555555555"),
            child: Text('555-555-5555', style: TextStyle(fontWeight: FontWeight.bold))
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding(context)),
              child: GestureDetector(
                onTap: () => launch('https://coronavirus.jhu.edu/us-map'),
                child: Text('https://coronavirus.jhu.edu/', style: TextStyle(fontFamily: 'Oswald', fontSize: 15))
              )
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: padding(context)),
              child: Text('afauci@covid.edu', style: TextStyle(fontFamily: 'Oswald', fontSize: 15))
            )
          ],
        ),
        paddedStringNormal(''),
        paddedStringNormal(''),
        paddedStringNormal(''),
      ],
    );
  }

  Widget paddedStringNormal(var someString) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(someString)
    );
  }

  double padding(BuildContext context) {
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      return 100;
    }
    else {
      return 20;
    }
  }

}