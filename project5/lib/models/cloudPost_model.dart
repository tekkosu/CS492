import 'package:cloud_firestore/cloud_firestore.dart';

class CloudPost {
  var date;
  var url;
  var longitude;
  var latitude;
  var weight;

  CloudPost(DocumentSnapshot document) {
    this.date = document['submission_date'];
    this.url = document['url'];
    this.longitude = document['longitude'];
    this.latitude = document['latitude'];
    this.weight = document['weight'];
  }
}