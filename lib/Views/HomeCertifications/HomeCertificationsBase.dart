import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCertificationsController.dart';
import 'package:airmaster/Views/HomeCertifications/HomeCertificationsMobileView.dart';
import 'package:airmaster/Views/HomeCertifications/HomeCertificationsDesktopView.dart';

class HomeCertificationsBase extends StatefulWidget {
  @override
  HomeCertificationsBaseState createState() => HomeCertificationsBaseState();
}

class HomeCertificationsBaseState extends State<HomeCertificationsBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeCertificationsController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeCertificationsMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeCertificationsMobileView(),
            desktop:HomeCertificationsDesktopView(),
            ),
        ),
     );
  }
}
