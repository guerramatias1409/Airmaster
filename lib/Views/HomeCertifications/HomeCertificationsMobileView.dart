import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCertificationsController.dart';
import 'package:airmaster/responsive/view.dart';

class HomeCertificationsMobileView extends View<HomeCertificationsController>{
  @override
  Widget build(BuildContext context,HomeCertificationsController controller) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Container(
              height: 30,
              child: Center(
                child: Text(
                  "CERTIFICATIONS",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Container(
            height: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Flexible(
                    flex: 2,
                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15),
                          Text(
                            "IMPACT TEST VIDEO DEMONSTRATION",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold, height: 1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            constraints: BoxConstraints(maxWidth: 150),
                            child: Text(
                              "Testing process to meet the Miami Dade County regulations",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SquaredButton(
                            text: "VIEW\nVIDEO",
                            isMobile: true
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/Home/certificationvideoimage.jpg'))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}