import 'package:flutter/material.dart';

class DoorsMainPicture extends StatefulWidget {
  @override
  _DoorsMainPictureState createState() => _DoorsMainPictureState();
}

class _DoorsMainPictureState extends State<DoorsMainPicture> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: AlignmentDirectional.topStart,
        children: [
          Container(
            height: 450,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 50),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DOORS",
                    style: TextStyle(
                        fontSize: 55,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "HIGH PERFORMANCE DOORS",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w100,
                        color: Colors.white),
                  ),
                  Text(
                    "Impact and Hurricane Resistance Certification.\nTo suit your style, we offer a wide variety of designs and combinations of residential and commercial entrance doors.",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w100
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
