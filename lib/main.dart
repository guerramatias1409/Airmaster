import 'package:airmaster/Responsive/GenerateControllers.dart';
import 'package:airmaster/Screens/DoorsScreen.dart';
import 'package:airmaster/Screens/WindowsScreen.dart';
import 'package:airmaster/Views/Home/HomeBase.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  print("entra a main");
  runApp(GenerateControllers(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Air Master | Windows and Doors | Puerto Rico',
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/doors': (BuildContext context) => new DoorsScreen(),
        '/windows': (BuildContext context) => new WindowsScreen(),
      },
      home: HomeBase(),
    );
  }
}
