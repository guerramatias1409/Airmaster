import 'dart:io';

import 'file:///C:/Users/BringtBlack/Desktop/Matias/airmaster/lib/Utils/enums.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

PlatformType getPlatform() {
  if (kIsWeb) {
    return PlatformType.Web;
  }
  if (Platform.isAndroid) {
    return PlatformType.Android;
  }
  if (Platform.isIOS) {
//    return PlatformType.Web;
    return PlatformType.Ios;
  }

  return PlatformType.Ios;
}


class PlatformLayout extends StatelessWidget {
  final Widget ios;
  final Widget android;
  final Widget mobile;
  final Widget web;
  const PlatformLayout({
    Key key,
    this.ios,
    this.android,
    this.mobile,
    this.web,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var platform = getPlatform();

    switch (platform) {
      case PlatformType.Web:
        if (web != null) {
          return web;
        }
        break;
      case PlatformType.Android:
        if (android != null) {
          return android;
        }
        if (mobile != null) {
          return mobile;
        }
        if (ios != null) {
          return ios;
        }
        break;
      case PlatformType.Ios:
        if (ios != null) {
          return ios;
        }
        if (mobile != null) {
          return mobile;
        }
        if (android != null) {
          return android;
        }
        break;
    }

    return mobile;
  }
}
