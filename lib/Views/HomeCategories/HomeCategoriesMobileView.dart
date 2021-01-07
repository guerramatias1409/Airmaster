import 'package:airmaster/Widgets/CategoryItem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
            route: '/windows',
            image: 'assets/Home/categorywindows.jpg',
            isMobile: true,
            documentReference: FirebaseFirestore.instance.collection("Categories").doc("Windows")
          ),
          CategoryItem(
              route: '/doors',
              image: 'assets/Home/categorydoors.jpg',
              isMobile: true,
              documentReference: FirebaseFirestore.instance.collection("Categories").doc("Doors")
          ),
          CategoryItem(
              image: 'assets/Home/categoryrailings.jpg',
              isMobile: true,
              documentReference: FirebaseFirestore.instance.collection("Categories").doc("Railings")
          ),
          CategoryItem(
              image: 'assets/Home/categoryshowers.jpg',
              isMobile: true,
              documentReference: FirebaseFirestore.instance.collection("Categories").doc("Showers")
          )
        ],
      ),
    );
  }
}