import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:space/screens/home.dart';
import 'package:space/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    return MaterialApp(
      title: 'RYCIN',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Landing_Screen(),
    );
  }
}
