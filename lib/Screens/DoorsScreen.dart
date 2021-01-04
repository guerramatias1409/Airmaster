import 'package:airmaster/Views/HomeLeading/HomeLeadingBase.dart';
import 'package:airmaster/Widgets/DoorsCategories.dart';
import 'package:airmaster/Widgets/DoorsMainPicture.dart';
import 'package:airmaster/Widgets/HomeFooter.dart';
import 'package:airmaster/Widgets/HomeMenuBar.dart';
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
          HomeMenuBar(),
          DoorsMainPicture(),
          DoorsCategories(),
          HomeFooter()
        ],
      ),
    );
  }
}
