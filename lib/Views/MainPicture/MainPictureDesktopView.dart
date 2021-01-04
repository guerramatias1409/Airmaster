import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:airmaster/responsive/view.dart';

class MainPictureDesktopView extends View<MainPictureController>{
  @override
  Widget build(BuildContext context,MainPictureController controller) {
    return Material(
      child: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Container(
              height: 830,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage('assets/Home/mainpicture.jpg')))
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "HIGH PERFORMANCE",
                      style: TextStyle(
                          fontSize: 54,
                          color: Colors.white,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    Text(
                      "WINDOWS & DOORS",
                      style: TextStyle(
                          fontSize: 46,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "IMPACT AND HURRICANE\nRESISTANCE CERTIFICATION",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.w100,
                    height: 1
                  ),
                ),
                SizedBox(
                  height: 45,
                ),
                SquaredButton(text: "LEARN\nMORE")
              ],
            ),
          )
        ],
      ),
    );
  }
}