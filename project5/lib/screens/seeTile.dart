import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/cloudPost_model.dart';

class SeeTile extends StatelessWidget {
  final CloudPost cloudPos;

  SeeTile({Key key, @required this.cloudPos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wasteagram - Details')
        ),
      body: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(formatDate(cloudPos.date), style: TextStyle(fontSize: 25),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                alignment: Alignment.center,
                child: Image.network(cloudPos.url),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(cloudPos.weight.toString() + ' Items', style: TextStyle(fontSize: 30)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Location: ' + cloudPos.latitude.toString() + ', ' + cloudPos.longitude.toString(), 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)
                ),
              )
            ],
          )
    );
  }

  static String formatDate(date) {
    var dateParsed = DateTime.parse(date.toDate().toString());
    final DateFormat dateFormat = DateFormat("EEEE, MMMM d, y");

    return dateFormat.format(dateParsed).toString();
  }
}