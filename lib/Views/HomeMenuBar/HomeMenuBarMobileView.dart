import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeMenuBarController.dart';
import 'package:airmaster/responsive/view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeMenuBarMobileView extends View<HomeMenuBarController>{
  @override
  Widget build(BuildContext context,HomeMenuBarController controller) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                icon: Icon(MdiIcons.menu, color: Color(0xFF5C6061),size: 25),
                onPressed: (){
                  controller.homeController.changeMenuBool();
                }),
            Container(
              width: 180,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/logo.png'))),
            ),
          ],
        ),
      ),
    );
  }
}