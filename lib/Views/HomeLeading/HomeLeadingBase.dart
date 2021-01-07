import 'package:airmaster/Controllers/HomeLeadingController.dart';
import 'package:airmaster/Responsive/base_widget.dart';
import 'package:airmaster/Responsive/platform_layout.dart';
import 'package:airmaster/Responsive/screen_type_layout.dart';
import 'package:airmaster/Views/HomeLeading/HomeLeadingDesktopView.dart';
import 'package:airmaster/Views/HomeLeading/HomeLeadingMobileView.dart';
import 'package:flutter/material.dart';

class HomeLeadingBase extends StatefulWidget {
  @override
  _HomeLeadingBaseState createState() => _HomeLeadingBaseState();
}

class _HomeLeadingBaseState extends State<HomeLeadingBase> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeLeadingController>(
      onControllerReady: (controller) => controller.init(context),
      child: PlatformLayout(
        mobile: HomeLeadingMobileView(),
        web: ScreenTypeLayout(
          mobile: HomeLeadingMobileView(),
          desktop: HomeLeadingDesktopView(),
        ),
      ),
    );
  }
}
