import 'package:flutter/material.dart';
import '../components/logDetail.dart';

class Log extends StatelessWidget {

  final bool lights;
  const Log({Key key, this.lights}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: lights ? Colors.grey[850] : Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('New Entry'),
        backgroundColor: lights ? Colors.black : Colors.blue,
      ),
      body: SingleChildScrollView (
        child: Container(
          child: LogDetail(lights:lights),
        ),
      ),
    );
  }

}