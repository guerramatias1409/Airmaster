import 'package:airmaster/responsive/base_widget.dart';
import 'package:airmaster/responsive/platform_layout.dart';
import 'package:airmaster/responsive/screen_type_layout.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/ChangeImageController.dart';
import 'package:airmaster/Views/ChangeImage/ChangeImageMobileView.dart';
import 'package:airmaster/Views/ChangeImage/ChangeImageDesktopView.dart';

class ChangeImageBase extends StatefulWidget {
  String storageReference;
  DocumentReference documentReference;

  ChangeImageBase({this.storageReference, this.documentReference});

  @override
  ChangeImageBaseState createState() => ChangeImageBaseState();
}

class ChangeImageBaseState extends State<ChangeImageBase>{

  @override
  Widget build(BuildContext context) {
    return BaseWidget<ChangeImageController>(
      onControllerReady: (controller) =>
          controller.init(widget.storageReference, widget.documentReference),
      child: PlatformLayout(
        mobile: ChangeImageMobileView(),
        web: ScreenTypeLayout(
            mobile:ChangeImageMobileView(),
            desktop:ChangeImageDesktopView(),
            ),
        ),
     );
  }
}
