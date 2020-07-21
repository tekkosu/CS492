import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'components/app.dart';

const String title = 'Project 3: Call Me Maybe';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp
  ]);
  runApp(App(title:title));
}