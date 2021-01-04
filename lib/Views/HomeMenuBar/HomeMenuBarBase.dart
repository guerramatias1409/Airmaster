import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeMenuBarController.dart';
import 'package:airmaster/Views/HomeMenuBar/HomeMenuBarMobileView.dart';
import 'package:airmaster/Views/HomeMenuBar/HomeMenuBarDesktopView.dart';

class HomeMenuBarBase extends StatefulWidget {
  @override
  HomeMenuBarBaseState createState() => HomeMenuBarBaseState();
}

class HomeMenuBarBaseState extends State<HomeMenuBarBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeMenuBarController>(
      onControllerReady: (controller) =>
          controller.init(),
      child: PlatformLayout(
        mobile: HomeMenuBarMobileView(),
        web: ScreenTypeLayout(
            mobile:HomeMenuBarMobileView(),
            desktop:HomeMenuBarDesktopView(),
            ),
        ),
     );
  }
}
