import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../components/camera_screen.dart';
import 'addNew.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildListItem(BuildContext context, DocumentSnapshot document) {
    return MyHomePage();    
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Center(child: Text('ListTile Heree')),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended (
        onPressed: () => pushEntries(context),
        label: Text('Add A Photo'),
        icon: Icon(Icons.add_a_photo),
        backgroundColor: Colors.pinkAccent,
      )
    );
  }

  void pushEntries(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraScreen()));
  }
}

