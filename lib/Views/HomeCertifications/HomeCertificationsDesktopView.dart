import 'package:airmaster/Widgets/SquaredButton.dart';
import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeCertificationsController.dart';
import 'package:airmaster/responsive/view.dart';


class HomeCertificationsDesktopView extends View<HomeCertificationsController>{
  @override
  Widget build(BuildContext context,HomeCertificationsController controller) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Container(
                height: 113,
                child: Center(
                  child: Text(
                    "CERTIFICATIONS",
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ),
            ),
            Container(
              height: 470,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 50),
                              Text(
                                "IMPACT TEST VIDEO DEMONSTRATION",
                                style: TextStyle(
                                    fontSize: 46, fontWeight: FontWeight.bold, height: 1),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                constraints: BoxConstraints(maxWidth: 400),
                                child: Text(
                                  "Testing process to meet the Miami Dade County regulations",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w400,
                                  height: 1),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              SquaredButton(
                                text: "VIEW\nVIDEO",
                              )
                            ],
                          ),
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
      ),
    );
  }
}