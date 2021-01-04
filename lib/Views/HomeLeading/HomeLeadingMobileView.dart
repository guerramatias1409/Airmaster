import 'package:airmaster/Controllers/HomeLeadingController.dart';
import 'package:airmaster/Responsive/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeLeadingMobileView extends View<HomeLeadingController> {
  @override
  Widget build(BuildContext context, HomeLeadingController controller) {
    return Container(
      height: 40,
      color: Colors.red,
    );
  }
}