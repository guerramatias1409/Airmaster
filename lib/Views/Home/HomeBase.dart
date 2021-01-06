import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:airmaster/Controllers/HomeController.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Views/Home/HomeMobileView.dart';
import 'package:airmaster/Views/Home/HomeDesktopView.dart';

class HomeBase extends StatefulWidget {
  @override
  HomeBaseState createState() => HomeBaseState();
}

class HomeBaseState extends State<HomeBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeMobileView(),
            desktop:HomeDesktopView(),
            ),
        ),
     );
  }
}
