import 'package:airmaster/Responsive/platform_layout.dart';
import 'package:airmaster/Utils/enums.dart';
import 'package:flutter/material.dart';

class PlatformFunction{
  final Function ios;
  final Function android;
  final Function mobile;
  final Function web;

  PlatformFunction({
    Key key,
    this.ios,
    this.android,
    this.mobile,
    this.web,
  }) {
    run();
  }

  run() {
    var platform = getPlatform();

    switch (platform) {
      case PlatformType.Web:
        if (web != null) {
          web.call();
        }
        break;
      case PlatformType.Android:
        if (android != null) {
          android.call();
        }
        if (mobile != null) {
          mobile.call();
        }
        if (ios != null) {
          ios.call();
        }
        break;
      case PlatformType.Ios:
        if (ios != null) {
          ios.call();
        }
        if (mobile != null) {
          mobile.call();
        }
        if (android != null) {
          android.call();
        }
        break;
    }
  }
}
