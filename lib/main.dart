import 'package:airmaster/Screens/DoorsScreen.dart';
import 'package:airmaster/Screens/Home.dart';
import 'package:airmaster/Screens/WindowsScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Airmaster',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/doors': (BuildContext context) => new DoorsScreen(),
        '/windows': (BuildContext context) => new WindowsScreen(),
      },
      home: Home(),
    );
  }
}
