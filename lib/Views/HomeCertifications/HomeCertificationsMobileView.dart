import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCertificationsController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeCertificationsMobileView extends View<HomeCertificationsController>{
  @override
  Widget build(BuildContext context,HomeCertificationsController controller) {
    return Container(
      height: 200,
      color: Colors.yellow,
    );
  }
}