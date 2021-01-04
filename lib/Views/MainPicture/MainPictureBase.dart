import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:airmaster/Views/MainPicture/MainPictureMobileView.dart';
import 'package:airmaster/Views/MainPicture/MainPictureDesktopView.dart';

class MainPictureBase extends StatefulWidget {
  @override
  MainPictureBaseState createState() => MainPictureBaseState();
}

class MainPictureBaseState extends State<MainPictureBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<MainPictureController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: MainPictureMobileView(),
        web: ScreenTypeLayout(
            mobile:MainPictureMobileView(),
            desktop:MainPictureDesktopView(),
            ),
        ),
     );
  }
}
