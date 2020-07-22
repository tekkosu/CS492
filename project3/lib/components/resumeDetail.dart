import 'package:flutter/material.dart';

class ResumeDetail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        paddedStringNormal(' '),
        Text('Anthony Fauci', style: TextStyle(fontFamily: 'Oswald', fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
        Text('afauci@covid.edu', style: TextStyle(fontFamily: 'Oswald', fontSize: 18, color: Colors.white)),
        Text('https://coronavirus.jhu.edu/', style: TextStyle(fontFamily: 'Oswald', fontSize: 15, color: Colors.white)),
        paddedStringNormal(' '),

        //next job
        paddedStringNormal(' '),
        Row(
          children: [paddedStringBold('Software Developer II')]
        ),
        placeHolderRow('Google', 'May 2018-Present', 'Mountain View, CA'),
        Row(
          children: [Expanded(child: paddedStringNormal('Organized the world\'s information and made it universally accessible and useful.'))]
        ),
        
        //next job
        paddedStringNormal(' '),
        Row(
          children: [paddedStringBold('Software Developer I')]
        ),
        placeHolderRow('Amazon', 'Jan 2016-May 2018', 'Seattle, WA'),
        Row(
          children: [Expanded(child: paddedStringNormal('Raised the bar of the customer experience by using the internet and technology to help' + 
            ' consumers, find, discover and buy anything, and empowered businesses and content creators to maximise their success.'))]
        ),

        //next job
        paddedStringNormal(' '),
        Row(
          children: [paddedStringBold('Jr. Software Developer')]
        ),
        placeHolderRow('Apple', 'Dec 2014 - Jan 2016', 'Cupertino, CA'),
        Row(
          children: [Expanded(child: paddedStringNormal('Brought the best user experience to customers through innovative hardware, software ' +
            'and services.'))]
        ),

        //next job
        paddedStringNormal(' '),
        Row(
          children: [paddedStringBold('Software Developer Intern')]
        ),
        placeHolderRow('Intel', 'May 2014 - Sep 2014', 'Santa Clara, CA'),
        Row(
          children: [Expanded(child: paddedStringNormal('Delighted customers, employees and shareholders by relentlessly delivering the ' + 
            'platform and technology advancements that become essential to the way they work and live.'))]
        ),

        //next job
        paddedStringNormal(' '),
        Row(
          children: [paddedStringBold('Software Developer Intern')]
        ),
        placeHolderRow('Intel', 'May 2013 - Sep 2013', 'Santa Clara, CA'),
        Row(
          children: [Expanded(child: paddedStringNormal('Delighted customers, employees and shareholders by relentlessly delivering the ' + 
            'platform and technology advancements that become essential to the way they work and live.'))]
        ),

        //next job
        paddedStringNormal(' '),
        Row(
          children: [paddedStringBold('Help Desk Technician')]
        ),
        placeHolderRow('Providence Hospital', 'May 2012 - Sep 2012', 'Everett, WA'),
        Row(
          children: [Expanded(child: paddedStringNormal('Have you restarted your computer?'))]
        ),

        paddedStringNormal(' '),
        paddedStringNormal(' '),
        paddedStringNormal(' ')
      ],
    );
  }

  //normal text
  Widget paddedStringNormal(var someString) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(someString, style: TextStyle(fontFamily: 'Oswald', color: Colors.white))
    );
  }

  //Italicized row
  Widget paddedStringRow(var someString) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(someString, style: TextStyle(fontFamily: 'Oswald', fontStyle: FontStyle.italic, color: Colors.white))
    );
  }

  //row where strings are evenly spaced
  Widget placeHolderRow(var stringOne, var stringTwo, var stringThree) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [paddedStringRow(stringOne), paddedStringRow(stringTwo), paddedStringRow(stringThree)]);
  }

  //bold text
  Widget paddedStringBold(var someString) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(someString, style: TextStyle(fontFamily: 'Oswald', fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white))
    );
  }

}