import 'package:airmaster/Widgets/CategoryItem.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatefulWidget {
  @override
  _HomeCategoriesState createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal:25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CategoryItem(title: "WINDOWS",
              image: 'assets/Home/categorywindows.jpg',
              comment: "HIGH PERFORMANCE WINDOWS",
              subcomment: "Impact and Hurricane Resistance Certification",
            ),
            CategoryItem(title: "DOORS",
                image: 'assets/Home/categorydoors.jpg',
                comment: "HIGH PERFORMANCE WINDOWS",
                subcomment: "Impact and Hurricane Resistance Certification"
            ),
            CategoryItem(title: "RAILINGS",
                image: 'assets/Home/categoryrailings.jpg',
                comment: "HIGH PERFORMANCE WINDOWS",
                subcomment: "Impact and Hurricane Resistance Certification"
            ),
            CategoryItem(title: "SHOWERS",
                image: 'assets/Home/categoryshowers.jpg',
                comment: "HIGH PERFORMANCE WINDOWS",
                subcomment: "Impact and Hurricane Resistance Certification"
            )

          ],
        ),
      ),
    );
  }
}
