import 'package:airmaster/Responsive/responsive_builder.dart';
import 'package:airmaster/Utils/enums.dart';
import 'package:flutter/material.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ScreenTypeLayout({
    Key key,
    @required this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var deviceScreenType=sizingInformation.deviceScreenType;

        switch(deviceScreenType){
          case DeviceScreenType.Mobile:
            if(mobile!=null){
              return mobile;
            }
            break;
          case DeviceScreenType.Tablet:
            if (tablet != null) {
              return tablet;
            }
            break;
          case DeviceScreenType.Desktop:
            if (desktop != null) {
              return desktop;
            }

            if (tablet != null) {
              return tablet;
            }
            break;
        }

        return mobile;
      },
    );
  }
}
