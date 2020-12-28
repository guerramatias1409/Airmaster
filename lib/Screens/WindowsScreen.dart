import 'package:airmaster/Widgets/HomeFooter.dart';
import 'package:airmaster/Widgets/HomeLeading.dart';
import 'package:airmaster/Widgets/HomeMenuBar.dart';
import 'package:airmaster/Widgets/WindowsCategories.dart';
import 'package:airmaster/Widgets/WindowsMainPicture.dart';
import 'package:flutter/material.dart';

class WindowsScreen extends StatefulWidget {
  @override
  _WindowsScreenState createState() => _WindowsScreenState();
}

class _WindowsScreenState extends State<WindowsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeLeading(),
          HomeMenuBar(),
          WindowsMainPicture(),
          WindowsCategories(),
          HomeFooter()
        ],
      ),
    );
  }
}
