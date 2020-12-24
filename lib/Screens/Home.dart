import 'package:airmaster/Widgets/HomeCategories.dart';
import 'package:airmaster/Widgets/HomeFeatureProducts.dart';
import 'package:airmaster/Widgets/HomeLeading.dart';
import 'package:airmaster/Widgets/HomeMenuBar.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeLeading(),
          HomeMenuBar(),
          Container(
            height: 450,
            color: Colors.black,
          ),
          HomeCategories(),
          HomeFeatureProducts()
        ],
      ),
    );
  }
}
