import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCategoriesController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeCategoriesMobileView extends View<HomeCategoriesController>{
  @override
  Widget build(BuildContext context,HomeCategoriesController controller) {
    return new Container(
      height: 200,
        color: Colors.blue,
    );
  }
}