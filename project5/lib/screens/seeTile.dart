import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';
import '../models/post.dart';

class SeeTile extends StatelessWidget {
  final Post post;

  SeeTile({Key key, @required this.post}) : super(key: key);

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
                child: Text(formatDate(post.date), style: TextStyle(fontSize: 25),),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                alignment: Alignment.center,
                child: Image.network(post.url),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(post.weight.toString() + ' Items', style: TextStyle(fontSize: 30)),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Location: ' + post.location.toString(), 
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