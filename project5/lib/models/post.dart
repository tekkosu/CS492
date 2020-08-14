import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  String date;
  String url;
  String location;
  int weight;

  Post(DocumentSnapshot document) {
    this.date = document['submission_date'];
    this.url = document['url'];
    this.location = document['location'];
    this.weight = document['weight'];
  }
}