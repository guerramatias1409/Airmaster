import 'package:airmaster/Controllers/HomeCategoriesController.dart';
import 'package:airmaster/Controllers/HomeCertificationsController.dart';
import 'package:airmaster/Controllers/HomeController.dart';
import 'package:airmaster/Controllers/HomeFeatureProductsController.dart';
import 'package:airmaster/Controllers/HomeFooterController.dart';
import 'package:airmaster/Controllers/HomeGalleryController.dart';
import 'package:airmaster/Controllers/HomeLeadingController.dart';
import 'package:airmaster/Controllers/HomeMenuBarController.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GenerateControllers extends StatelessWidget {
  final Widget child;

  GenerateControllers({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("generate controllers");

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeLeadingController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeCategoriesController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeCertificationsController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeFeatureProductsController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeFooterController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeGalleryController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeMenuBarController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => MainPictureController(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => HomeController(),
          lazy: true,
        ),

      ],
      child: child,
    );
  }
}
