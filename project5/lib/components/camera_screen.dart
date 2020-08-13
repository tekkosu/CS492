import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File image;

  void getImage() async{
    image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() { });
    //don't forget to add logic for handling errors or otehr stuff
  }

  // @override
  // Widget build(BuildContext context) {
  //   return FloatingActionButton(
  //     child: Icon(Icons.camera_enhance),
  //       onPressed: () {
  //         getImage();
  //       },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    if (image == null) {
      return Center(
        child: Text('getImage'),
      );
      // return Center(
      //   child: RaisedButton(
      //     child: Text('Select Photo'),
      //     onPressed: () {
      //       getImage();
      //     }
      //   )
      // );
    } else {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.file(image),
            SizedBox(height: 40,),
            RaisedButton(
              child: Text('Here it is'),
              onPressed: () {},
              )
            ]
        )
      );
    }
  }
}