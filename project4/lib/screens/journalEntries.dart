import 'package:flutter/material.dart';

class JournalEntries extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: 
        centerTitle: true,
        title: Text('August 4th, 2020'),
      ),
      body: SingleChildScrollView (
      child: ListTile(
          //leading: Icon(Icons.chevron_right),
          title: Text("Great Bagel", style: TextStyle(fontSize: 25, fontStyle: FontStyle.italic)),
          subtitle: Text("This is the best bagel in the world!  It's unbelievable, I can't believe it!!!"),
          isThreeLine: true,
        )
      ),
    );
  }
}