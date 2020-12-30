import 'package:flutter/material.dart';

class HomeMenuBar extends StatefulWidget {
  @override
  _HomeMenuBarState createState() => _HomeMenuBarState();
}

class _HomeMenuBarState extends State<HomeMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 115,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                        color: Color(0xFF5C6061).withOpacity(0.6)
                      ),)),
                  SizedBox(width: 30),
                  InkWell(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        //Navigator.pushNamed(context, '/doors');
                      },
                      child: Text("DOORS",
                          style: TextStyle(
                              color: Color(0xFF5C6061).withOpacity(0.6)
                          ))),
                  SizedBox(width: 30),
                  InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                    },
                    child: Text("RAILINGS & SHOWERS",
                        style: TextStyle(
                            color: Color(0xFF5C6061).withOpacity(0.6)
                        )),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                    },
                    child: Text("ABOUT US",
                        style: TextStyle(
                            color: Color(0xFF5C6061).withOpacity(0.6)
                        )),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                    },
                    child: Text("OUR GLASS",
                        style: TextStyle(
                            color: Color(0xFF5C6061).withOpacity(0.6)
                        )),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    onTap: () {
                    },
                    child: Text("CONTACT US",
                        style: TextStyle(
                            color: Color(0xFF5C6061).withOpacity(0.6)
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
