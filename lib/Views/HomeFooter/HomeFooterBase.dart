import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:airmaster/Controllers/HomeFooterController.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Views/HomeFooter/HomeFooterMobileView.dart';
import 'package:airmaster/Views/HomeFooter/HomeFooterDesktopView.dart';

class HomeFooterBase extends StatefulWidget {
  @override
  HomeFooterBaseState createState() => HomeFooterBaseState();
}

class HomeFooterBaseState extends State<HomeFooterBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeFooterController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeFooterMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeFooterMobileView(),
            desktop:HomeFooterDesktopView(),
            ),
        ),
     );
  }
}
