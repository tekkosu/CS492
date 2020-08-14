import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:intl/intl.dart';

class SeeTile extends StatelessWidget {
  final snapshot;
  SeeTile({this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wasteagram - Details')
        ),
      //body: TileDetails(snapshot),
      body: Column(
        children: [
          Text('test'),
        ],
      )
    );
  }

  static String formatDate(date) {
    var dateParsed = DateTime.parse(date.toString());
    final DateFormat dateFormat = DateFormat("EEEE, MMMM d, y");

    return dateFormat.format(dateParsed).toString();
  }
}

// class TileDetails extends StatelessWidget {
//   final snapshot;
//   TileDetails({this.snapshot});

//   @override
//   Widget build(BuildContext context) {
//     if (snapshot.hasData) {
//       return Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: snapshot.data.documents.length,
//               itemBuilder: (context,index) {
//                 var post = snapshot.data.documents[index];
//                 return ListTile(
//                   onTap: () {
//                     pushSeeTile(context,post);
//                   },
//                   title: Text(formatDate(post['submission_date'].toDate())),
//                   trailing: Text(post['weight'].toString()),
//                 );
//               }
//             ),
//           ),
//         ],
//       );
//   } else {
//       return Center(child: CircularProgressIndicator());
//     }
//   };

//   void popSeeTile(BuildContext context) {
//     Navigator.of(context).pop();
//   }
// }