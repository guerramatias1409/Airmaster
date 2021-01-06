import 'package:airmaster/Views/HomeCategories/HomeCategoriesBase.dart';
import 'package:airmaster/Views/HomeCertifications/HomeCertificationsBase.dart';
import 'package:airmaster/Views/HomeFeatureProducts/HomeFeatureProductsBase.dart';
import 'package:airmaster/Views/HomeFooter/HomeFooterBase.dart';
import 'package:airmaster/Views/HomeGallery/HomeGalleryBase.dart';
import 'package:airmaster/Views/HomeMenuBar/HomeMenuBarBase.dart';
import 'package:airmaster/Views/MainPicture/MainPictureBase.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeController.dart';
import 'package:airmaster/responsive/view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeMobileView extends View<HomeController> {
  @override
  Widget build(BuildContext context, HomeController controller) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            SingleChildScrollView(
                child: Column(
              children: [
                HomeMenuBarBase(),
                MainPictureBase(),
                HomeCategoriesBase(),
                HomeFeatureProductsBase(),
                HomeCertificationsBase(),
                HomeGalleryBase(),
                HomeFooterBase()
              ],
            )),
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              color: Colors.white,
              width: controller.width,
              child: controller.openedMenu == false
                  ? Container()
                  : Container(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.0),
                              child: Text(
                                "WINDOWS",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF5C6061).withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Divider(height: 2),
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.0),
                              child: Text(
                                "DOORS",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF5C6061).withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Divider(height: 2),
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.0),
                              child: Text(
                                "RAILINGS & SHOWERS",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF5C6061).withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Divider(height: 2),
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.0),
                              child: Text(
                                "ABOUT US",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF5C6061).withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Divider(height: 2),
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.0),
                              child: Text(
                                "OUR GLASS",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF5C6061).withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Divider(height: 2),
                          InkWell(
                            onTap: () {},
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 8.0),
                              child: Text(
                                "CONTACT US",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: Color(0xFF5C6061).withOpacity(0.6),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                          Spacer(),
                          IconButton(
                              icon: Icon(MdiIcons.arrowCollapseLeft),
                              color: Color(0xFF5C6061),
                              iconSize: 30,
                              onPressed: () {
                                controller.changeMenuBool();
                              })
                        ],
                      ),
                    ),
                  ),
            )
          ],
        ),
      ),
    );
  }
}
