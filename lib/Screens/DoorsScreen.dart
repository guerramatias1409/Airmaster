import 'package:airmaster/Views/HomeFooter/HomeFooterBase.dart';
import 'package:airmaster/Views/HomeLeading/HomeLeadingBase.dart';
import 'package:airmaster/Views/HomeMenuBar/HomeMenuBarBase.dart';
import 'package:airmaster/Widgets/DoorsMainPicture.dart';
import 'package:flutter/material.dart';

class DoorsScreen extends StatefulWidget {
  @override
  _DoorsScreenState createState() => _DoorsScreenState();
}

class _DoorsScreenState extends State<DoorsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeLeadingBase(),
          HomeMenuBarBase(),
          DoorsMainPicture(),
          //DoorsCategories(),
          HomeFooterBase()
        ],
      ),
    );
  }
}
