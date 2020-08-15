import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import '../models/newPost_model.dart';

class CameraScreen extends StatefulWidget {

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class PostEntryFields {
  String photoURL;
  String quantity;
}

class _CameraScreenState extends State<CameraScreen> {

  NewModel newModel;
  final postEntryFields = PostEntryFields();
  
  var weight;
  File image;

  Future getImage() async{
    image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() { });
    //don't forget to add logic for handling errors or other stuff
  }

  LocationData locationData;
  var locationService = Location();

  @override
  void initState() {
    super.initState();
    retrieveLocation();
  }

  void retrieveLocation() async {
    try {
      var _serviceEnabled = await locationService.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await locationService.requestService();
        if (!_serviceEnabled) {
          print('Failed to enable service. Returning.');
          return;
        }
      }

      var _permissionGranted = await locationService.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await locationService.requestPermission();
        if (_permissionGranted != PermissionStatus.granted) {
          print('Location service permission not granted. Returning.');
        }
      }

      locationData = await locationService.getLocation();
    } on PlatformException catch (e) {
      print('Error: ${e.toString()}, code: ${e.code}');
      locationData = null;
    }
    locationData = await locationService.getLocation();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return Center(
        child: FloatingActionButton(
            child: Icon(Icons.add_a_photo),
            onPressed: () {
              getImage();
            }
          ) 
      );
    } else {
      return ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Container(
            child: Image.file(image),
            height:400,
          ),
          Container(
            height: 100,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Enter Amount of Waste'
              ),
              keyboardType: TextInputType.number,
              validator: (value) => validateQuantity(value),
              onSaved: (value) {
                postEntryFields.quantity = value;
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              child: Icon(Icons.cloud_upload),
              onPressed: () {
                uploadImage(context);
              },
            )
          ),
        ]
      );
    }
  }

  void pushEntries(BuildContext context) {
    Navigator.of(context).pop();
  }

  String validateQuantity(String value) {
    if (value.isEmpty) {
      return 'Please enter a quantity';
    } else
      return null;
  }

  Future uploadImage(BuildContext context) async {

    StorageReference storageReference = 
      FirebaseStorage.instance.ref().child('test1.jpg');
    StorageUploadTask uploadTask = storageReference.putFile(image);
    await uploadTask.onComplete;
    final url = await storageReference.getDownloadURL();
    print(url);
    await Firestore.instance.collection('posts').add({
        
        'submission_date': DateTime.now(),
        'url': url,
        //'weight': int.parse(postEntryFields.quantity),
        'weight': int.parse('42'),
        'longitude':locationData.longitude,
        'latitude':locationData.latitude,
      });
    pushEntries(context);
  }
}