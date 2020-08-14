import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'package:project5/models/post.dart';
import 'addNew.dart';
import 'seeTile.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('posts').orderBy('submission_date', descending: true).snapshots(),
      builder: (content, snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: snapshot.data.documents.length,
                  itemBuilder: (context,index) {
                    Post post = Post(snapshot.data.documents[index]);
                    //var post = snapshot.data.documents[index];
                    return ListTile(
                      onTap: () {
                        pushSeeTile(context,post);
                      },
                      // title: Text(formatDate(post['submission_date'].toDate())),
                      // trailing: Text(post['weight'].toString()),
                      title: Text(formatDate(post.date)),
                      trailing: Text(post.weight.toString()),
                    );
                  }
                ),
              ),
              Padding (
                padding: EdgeInsets.all(10),
                child: FloatingActionButton(
                  onPressed: () => pushAddNew(context),
                  child: Icon(Icons.camera_enhance),
                ),
              )
              
            ],
          );
      } else {
          return Center(child: CircularProgressIndicator());
        }
      }
    );
  }

  static String formatDate(date) {
    var dateParsed = DateTime.parse(date.toDate().toString());
    final DateFormat dateFormat = DateFormat("EEEE, MMMM d, y");

    return dateFormat.format(dateParsed).toString();
  }

  void pushAddNew(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddNew()));
  }

  void pushSeeTile(BuildContext context, Post post) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SeeTile(post: post)));
  }

}