import '../components/resumeDetail.dart';
import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Resume', style: TextStyle(fontFamily: 'Lobster', fontSize: 20))
      ),
      body: SingleChildScrollView(
        child: ResumeDetail(),
      )
    );
  }
}
