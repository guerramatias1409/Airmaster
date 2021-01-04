import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeGalleryController.dart';
import 'package:airmaster/Views/HomeGallery/HomeGalleryMobileView.dart';
import 'package:airmaster/Views/HomeGallery/HomeGalleryDesktopView.dart';

class HomeGalleryBase extends StatefulWidget {
  @override
  HomeGalleryBaseState createState() => HomeGalleryBaseState();
}

class HomeGalleryBaseState extends State<HomeGalleryBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeGalleryController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeGalleryMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeGalleryMobileView(),
            desktop:HomeGalleryDesktopView(),
            ),
        ),
     );
  }
}
