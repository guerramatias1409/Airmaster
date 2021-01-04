import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeGalleryController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeGalleryMobileView extends View<HomeGalleryController>{
  @override
  Widget build(BuildContext context,HomeGalleryController controller) {
    return Container(
      height: 200,
      color: Colors.orange,
    );
  }
}