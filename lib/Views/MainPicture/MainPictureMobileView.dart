import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/MainPictureController.dart';
import 'package:airmaster/responsive/view.dart';

class MainPictureMobileView extends View<MainPictureController>{
  @override
  Widget build(BuildContext context,MainPictureController controller) {
    return Stack(
      alignment: AlignmentDirectional.centerStart,
      children: [
        Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage('assets/Home/mainpicture.jpg')))
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "HIGH PERFORMANCE",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300
                    ),
                  ),
                  Text(
                    "WINDOWS & DOORS",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "IMPACT AND HURRICANE\nRESISTANCE CERTIFICATION",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                    height: 1
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SquaredButton(text: "LEARN\nMORE", isMobile: true)
            ],
          ),
        )
      ],
    );
  }
}