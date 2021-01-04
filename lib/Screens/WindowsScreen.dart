import 'package:airmaster/Views/HomeFooter/HomeFooterBase.dart';
import 'package:airmaster/Views/HomeLeading/HomeLeadingBase.dart';
import 'package:airmaster/Views/HomeMenuBar/HomeMenuBarBase.dart';
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
          HomeLeadingBase(),
          HomeMenuBarBase(),
          WindowsMainPicture(),
          WindowsCategories(),
          HomeFooterBase()
        ],
      ),
    );
  }
}
