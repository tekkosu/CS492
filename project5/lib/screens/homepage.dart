import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:project5/models/cloudPost_model.dart';
import 'addNew.dart';
import 'seeTile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var totalWeight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wasteagram - $totalWeight'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: Firestore.instance.collection('posts').orderBy('submission_date', descending: true).snapshots(),
          builder: (content, snapshot) {
            if (snapshot.hasData && !snapshot.data.documents.isEmpty) {
              totalWeight = 0;
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data.documents.length,
                      itemBuilder: (context,index) {
                        CloudPost cloudPos = CloudPost(snapshot.data.documents[index]);
                        totalWeight += cloudPos.weight; 
                        //var post = snapshot.data.documents[index];
                        return Semantics(
                          child: ListTile(
                            onTap: () {
                              pushSeeTile(context,cloudPos);
                            },
                            title: Text(changeDateToString(cloudPos.date), style: TextStyle(fontSize: 20)),
                            trailing: Text(cloudPos.weight.toString(), style: TextStyle(fontSize: 25)),
                          ),
                          label: 'Details for $changeDateToString(post.date)',
                          button: true,
                          enabled: true,
                          onTapHint: 'View Post Details',
                        );
                      }
                    ),
                  ),
                ],
              );
          } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(), 
                  ]
                )
              );
            }
          }
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Semantics(
        child: FloatingActionButton(
          onPressed: () => pushAddNew(context),
          child: Icon(Icons.camera_enhance),
        ),
        label: 'Add New Photos/Journal Entry',
        button: true,
        enabled: true,
        onTapHint: 'Select an Image',
      )
        
    );
  }

  static String changeDateToString(date) {
    var dateParsed = DateTime.parse(date.toDate().toString());
    final DateFormat dateFormat = DateFormat("EEEE, MMMM d, y");

    return dateFormat.format(dateParsed).toString();
  }

  void pushAddNew(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddNew()));
  }

  void pushSeeTile(BuildContext context, CloudPost cloudPos) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SeeTile(cloudPos: cloudPos)));
  }

}