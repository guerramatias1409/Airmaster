import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:airmaster/responsive/view.dart';

class MainPictureMobileView extends View<MainPictureController>{
  @override
  Widget build(BuildContext context,MainPictureController controller) {
    return Container(
      height: 40,
      color: Colors.cyan,
    );
  }
}