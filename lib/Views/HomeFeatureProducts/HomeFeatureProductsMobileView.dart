import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeFeatureProductsController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeFeatureProductsMobileView extends View<HomeFeatureProductsController>{
  @override
  Widget build(BuildContext context,HomeFeatureProductsController controller) {
    return Container(
      height: 200,
      color: Colors.brown,
    );
  }
}