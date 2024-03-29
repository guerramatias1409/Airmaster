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
        height: 70,
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
                        Navigator.pushNamed(context, '/windows');
                      },
                      child: Text("WINDOWS")),
                  SizedBox(width: 30),
                  InkWell(
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onTap: () {
                        Navigator.pushNamed(context, '/doors');
                      },
                      child: Text("DOORS")),
                  SizedBox(width: 30),
                  Text("RAILINGS & SHOWERS"),
                  SizedBox(width: 30),
                  Text("ABOUT US"),
                  SizedBox(width: 30),
                  Text("OUR GLASS"),
                  SizedBox(width: 30),
                  Text("CONTACT US"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
