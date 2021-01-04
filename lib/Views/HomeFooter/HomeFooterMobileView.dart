import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeFooterController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeFooterMobileView extends View<HomeFooterController>{
  @override
  Widget build(BuildContext context,HomeFooterController controller) {
    return Container(
      height: 200,
      color: Colors.brown,
    );
  }
}