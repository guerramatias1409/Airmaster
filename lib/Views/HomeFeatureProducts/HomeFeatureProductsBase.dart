import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeFeatureProductsController.dart';
import 'package:airmaster/Views/HomeFeatureProducts/HomeFeatureProductsMobileView.dart';
import 'package:airmaster/Views/HomeFeatureProducts/HomeFeatureProductsDesktopView.dart';

class HomeFeatureProductsBase extends StatefulWidget {
  @override
  HomeFeatureProductsBaseState createState() => HomeFeatureProductsBaseState();
}

class HomeFeatureProductsBaseState extends State<HomeFeatureProductsBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeFeatureProductsController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeFeatureProductsMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeFeatureProductsMobileView(),
            desktop:HomeFeatureProductsDesktopView(),
            ),
        ),
     );
  }
}
