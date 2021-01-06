import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeMenuBarController.dart';
import 'package:airmaster/responsive/view.dart';


class HomeMenuBarDesktopView extends View<HomeMenuBarController>{
  @override
  Widget build(BuildContext context,HomeMenuBarController controller) {
    return Container(
      height: 115,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage('assets/logo.png'))),
            ),
            SizedBox(width: 25),
            Row(
              children: [
                InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      //Navigator.pushNamed(context, '/windows');
                    },
                    child: Text("WINDOWS",
                      style: TextStyle(
                          color: Color(0xFF5C6061).withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w100
                      ),)),
                SizedBox(width: 45),
                InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                      //Navigator.pushNamed(context, '/doors');
                    },
                    child: Text("DOORS",
                        style: TextStyle(
                            color: Color(0xFF5C6061).withOpacity(0.8),
                            fontSize: 18,
                            fontWeight: FontWeight.w100
                        ))),
                SizedBox(width: 45),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                  },
                  child: Text("RAILINGS & SHOWERS",
                      style: TextStyle(
                          color: Color(0xFF5C6061).withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w100
                      )),
                ),
                SizedBox(width: 45),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                  },
                  child: Text("ABOUT US",
                      style: TextStyle(
                          color: Color(0xFF5C6061).withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w100
                      )),
                ),
                SizedBox(width: 45),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                  },
                  child: Text("OUR GLASS",
                      style: TextStyle(
                          color: Color(0xFF5C6061).withOpacity(0.8),
                          fontSize: 18,
                          fontWeight: FontWeight.w100
                      )),
                ),
                SizedBox(width: 45),
                InkWell(
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                  },
                  child: Text("CONTACT US",
                      style: TextStyle(
                          color: Color(0xFF5C6061).withOpacity(0.8),
                        fontSize: 18,
                        fontWeight: FontWeight.w100
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}