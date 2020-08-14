import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class CameraScreen extends StatefulWidget {

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {

  File image;

  Future getImage() async{
    image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() { });
    //don't forget to add logic for handling errors or other stuff
  }

  Future uploadImage() async {
    StorageReference storageReference = 
      FirebaseStorage.instance.ref().child('test1.jpg');
    StorageUploadTask uploadTask = storageReference.putFile(image);
    await uploadTask.onComplete;
    final url = await storageReference.getDownloadURL();
    print(url);
    Firestore.instance.collection('posts').add({
        'weight': 122,
        'submission_date': DateTime.parse('2020-06-15'),
        'url': url,
        'location':'8888.88',
      });
    pushEntries(context);
  }

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return Center(
        child: RaisedButton(
          child: Text('Select A Photo'),
          onPressed: () {
            getImage();
          }
        ) 
      );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(image),
            SizedBox(height: 20,),
            RaisedButton(
              child: Text('Upload Photo'),
              onPressed: () {
                uploadImage();
              },
            )
          ]
        )
      );
    }
  }

  void pushEntries(BuildContext context) {
    Navigator.of(context).pop();
  }
}