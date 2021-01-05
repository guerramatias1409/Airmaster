import 'package:airmaster/Widgets/CategoryItem.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCategoriesController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeCategoriesMobileView extends View<HomeCategoriesController>{
  @override
  Widget build(BuildContext context,HomeCategoriesController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CategoryItem(
            title: "WINDOWS",
            route: '/windows',
            image: 'assets/Home/categorywindows.jpg',
            comment: "HIGH PERFORMANCE WINDOWS",
            subcomment: "Impact and Hurricane Resistance Certification",
            isMobile: true,
          ),
          CategoryItem(
              title: "DOORS",
              route: '/doors',
              image: 'assets/Home/categorydoors.jpg',
              comment: "HIGH PERFORMANCE WINDOWS",
              subcomment: "Impact and Hurricane Resistance Certification",
              isMobile: true,),
          CategoryItem(
              title: "RAILINGS",
              image: 'assets/Home/categoryrailings.jpg',
              comment: "HIGH PERFORMANCE WINDOWS",
              subcomment: "Impact and Hurricane Resistance Certification",
              isMobile: true,),
          CategoryItem(
              title: "SHOWERS",
              image: 'assets/Home/categoryshowers.jpg',
              comment: "HIGH PERFORMANCE WINDOWS",
              subcomment: "Impact and Hurricane Resistance Certification",
              isMobile: true,)
        ],
      ),
    );
  }
}