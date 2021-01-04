import 'package:flutter/material.dart';
import 'package:airmaster/Controllers/HomeFooterController.dart';
import 'package:airmaster/responsive/view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


class HomeFooterDesktopView extends View<HomeFooterController>{
  @override
  Widget build(BuildContext context,HomeFooterController controller) {
    return Material(
      child: Container(
        height: 400,
        color: Color(0xFF5C6061),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "San Juan Showroom",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  Container(
                    height: 80,
                    width: 350,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/whitelogo.png'))),
                  )                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          height: 280,
                          width: 350,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                  AssetImage('assets/Footer/footer.jpg')))),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Follow us on social media",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(3)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(MdiIcons.facebook,
                                      color: Color(0xFF5C6061),
                                  size: 45),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(8)),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Icon(MdiIcons.instagram,
                                        color: Color(0xFF5C6061),
                                    size: 45),
                                  )),
                              SizedBox(width: 20),
                              Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.white,
                                  child: Center(
                                    child: Icon(MdiIcons.youtube,
                                        color: Color(0xFF5C6061),
                                    size: 45),
                                  ))
                            ],
                          ),
                          SizedBox(height: 20),
                          //TODO revisar icono y texto
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 2),
                            width: 120,
                            height: 35,
                            child: FloatingActionButton.extended(
                              heroTag: 'location',
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(0))),
                              backgroundColor: Color(0xFF48A742),
                              icon: Icon(Icons.location_on, size: 12),
                              label: Text("San Juan",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white)),
                              onPressed: () {},
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Ave de Diego 258 Puerto Nuevo",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          Text(
                            "San Juan, PR 00921",
                            style: TextStyle(fontSize: 22, color: Colors.white),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "787 999 0717",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                              SizedBox(width: 20),
                              //TODO ver por que no funciona el HomeLeadingDivider
                              Text("|", style: TextStyle(color: Colors.white)),
                              SizedBox(width: 20),
                              Text(
                                "787 999 0719",
                                style: TextStyle(
                                    fontSize: 22, color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Text(
                    "Air Master © 2020 All rights reserved",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}