import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  var date;
  var url;
  var location;
  var weight;

  Post(DocumentSnapshot document) {
    this.date = document['submission_date'];
    this.url = document['url'];
    this.location = document['location'];
    this.weight = document['weight'];
  }
}