import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  var date;
  var url;
  var longitude;
  var latitude;
  var weight;

  Post(DocumentSnapshot document) {
    this.date = document['submission_date'];
    this.url = document['url'];
    this.longitude = document['longitude'];
    this.latitude = document['latitude'];
    this.weight = document['weight'];
  }
}