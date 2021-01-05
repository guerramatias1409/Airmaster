import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeFooterController.dart';
import 'package:airmaster/responsive/view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeFooterMobileView extends View<HomeFooterController>{
  @override
  Widget build(BuildContext context,HomeFooterController controller) {
    return Container(
      height: 300,
      color: Color(0xFF5C6061),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/whitelogo.png'))),
                )
              ],
            ),
            Text(
              "San Juan Showroom",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                AssetImage('assets/Footer/footer.jpg')))),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Follow us on social media",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(3)),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Icon(MdiIcons.facebook,
                                    color: Color(0xFF5C6061),
                                    size: 22),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(8)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(MdiIcons.instagram,
                                      color: Color(0xFF5C6061),
                                      size: 22),
                                )),
                            SizedBox(width: 10),
                            Container(
                                height: 30,
                                width: 30,
                                color: Colors.white,
                                child: Center(
                                  child: Icon(MdiIcons.youtube,
                                      color: Color(0xFF5C6061),
                                      size: 22),
                                ))
                          ],
                        ),
                        SizedBox(height: 10),
                        //TODO revisar icono y texto
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 2),
                          width: 75,
                          height: 25,
                          child: FloatingActionButton.extended(
                            heroTag: 'location',
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(0))),
                            backgroundColor: Color(0xFF48A742),
                            icon: Icon(Icons.location_on, size: 12),
                            label: Text("San Juan",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white)),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Ave de Diego 258 Puerto Nuevo",
                          style: TextStyle(fontSize: 12, color: Colors.white, height: 1),
                        ),
                        Text(
                          "San Juan, PR 00921",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Text(
                              "787 999 0717",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white),
                            ),
                            SizedBox(width: 10),
                            //TODO ver por que no funciona el HomeLeadingDivider
                            Text("|", style: TextStyle(color: Colors.white)),
                            SizedBox(width: 10),
                            Text(
                              "787 999 0719",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Air Master © 2020 All rights reserved",
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}