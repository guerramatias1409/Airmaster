import 'package:airmaster/Widgets/CategoryItem.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCategoriesController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeCategoriesDesktopView extends View<HomeCategoriesController>{
  @override
  Widget build(BuildContext context,HomeCategoriesController controller) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 22),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(
              title: "WINDOWS",
              route: '/windows',
              image: 'assets/Home/categorywindows.jpg',
              comment: "HIGH PERFORMANCE WINDOWS",
              subcomment: "Impact and Hurricane Resistance Certification",
            ),
            CategoryItem(
                title: "DOORS",
                route: '/doors',
                image: 'assets/Home/categorydoors.jpg',
                comment: "HIGH PERFORMANCE WINDOWS",
                subcomment: "Impact and Hurricane Resistance Certification"),
            CategoryItem(
                title: "RAILINGS",
                image: 'assets/Home/categoryrailings.jpg',
                comment: "HIGH PERFORMANCE WINDOWS",
                subcomment: "Impact and Hurricane Resistance Certification"),
            CategoryItem(
                title: "SHOWERS",
                image: 'assets/Home/categoryshowers.jpg',
                comment: "HIGH PERFORMANCE WINDOWS",
                subcomment: "Impact and Hurricane Resistance Certification")
          ],
        ),
      ),
    );
  }
}