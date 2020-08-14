import 'package:flutter/material.dart';
import '../components/camera_screen.dart';

class AddNew extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Wasteagram')
        ),
      body: CameraScreen(),
    );
  }
}