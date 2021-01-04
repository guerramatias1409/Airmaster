import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCategoriesController.dart';
import 'package:airmaster/Views/HomeCategories/HomeCategoriesMobileView.dart';
import 'package:airmaster/Views/HomeCategories/HomeCategoriesDesktopView.dart';

class HomeCategoriesBase extends StatefulWidget {
  @override
  HomeCategoriesBaseState createState() => HomeCategoriesBaseState();
}

class HomeCategoriesBaseState extends State<HomeCategoriesBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeCategoriesController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeCategoriesMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeCategoriesMobileView(),
            desktop:HomeCategoriesDesktopView(),
            ),
        ),
     );
  }
}
