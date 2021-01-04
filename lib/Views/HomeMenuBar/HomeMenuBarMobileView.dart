import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeMenuBarController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeMenuBarMobileView extends View<HomeMenuBarController>{
  @override
  Widget build(BuildContext context,HomeMenuBarController controller) {
    return Container(
      height: 40,
      color: Colors.grey,
    );
  }
}