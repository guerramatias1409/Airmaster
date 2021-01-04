import 'package:airmaster/Views/HomeCategories/HomeCategoriesBase.dart';
import 'package:airmaster/Views/HomeCertifications/HomeCertificationsBase.dart';
import 'package:airmaster/Views/HomeFeatureProducts/HomeFeatureProductsBase.dart';
import 'package:airmaster/Views/HomeFooter/HomeFooterBase.dart';
import 'package:airmaster/Views/HomeLeading/HomeLeadingBase.dart';
import 'package:airmaster/Widgets/HomeGallery.dart';
import 'package:airmaster/Widgets/HomeMenuBar.dart';
import 'package:airmaster/Widgets/MainPicture.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child:
            Column(
              children: [
                HomeLeadingBase(),
                HomeMenuBar(),
                MainPicture(),
                HomeCategoriesBase(),
                HomeFeatureProductsBase(),
                HomeCertificationsBase(),
                HomeGallery(),
                HomeFooterBase()
              ],
            ),



        // Stack(
        //   alignment: Alignment.topCenter,
        //   children: [
        //     Container(
        //       height: MediaQuery.of(context).size.height * 7.55,
        //       decoration: BoxDecoration(
        //           image: DecorationImage(
        //               fit: BoxFit.fitWidth,
        //               image: AssetImage(
        //                   'assets/home.png'))),
        //     ),
        //     Opacity(
        //       opacity: 0.0,
        //       child: Column(
        //         children: [
        //           HomeLeading(),
        //           HomeMenuBar(),
        //           MainPicture(),
        //           HomeCategories(),
        //           HomeFeatureProducts(),
        //           HomeCertifications(),
        //           HomeGallery(),
        //           HomeFooter()
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
