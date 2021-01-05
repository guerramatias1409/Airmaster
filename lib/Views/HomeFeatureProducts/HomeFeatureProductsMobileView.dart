import 'package:airmaster/Widgets/FeatureProductItem.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeFeatureProductsController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeFeatureProductsMobileView extends View<HomeFeatureProductsController>{
  @override
  Widget build(BuildContext context,HomeFeatureProductsController controller) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 30,
              child: Center(
                child: Text("FEATURE PRODUCTS",
                  style: TextStyle(
                    fontSize: 20,
                  ),),
              ),
            ),
          ),
          FeatureProductItem(
            title: "CASEMENT WINDOWS",
            content: "It is characterized by having a system of integrated sight unseen hinges. It also has a hardware system that allows a better seal. Their panels open outward.",
            image: 'assets/Home/featurecasement.jpg',
            isMobile: true
          ),
          SizedBox(height: 10),
          FeatureProductItem(
            title: "GLASS RAILINGS",
            content: "Having a second level, a balcony or terrace means having more freedom in your space. A railing or glass railings will allow you to maintain a fresh and transparent view.",
            image: 'assets/Home/featureglass.jpg',
            isMobile: true
          )
        ],
      ),
    );
  }
}