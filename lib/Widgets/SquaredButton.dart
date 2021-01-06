import 'package:flutter/material.dart';

class SquaredButton extends StatefulWidget {
  String text;
  bool isMobile;

  SquaredButton({this.text, this.isMobile = false});

  @override
  _SquaredButtonState createState() => _SquaredButtonState();
}

class _SquaredButtonState extends State<SquaredButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: widget.isMobile ? 60 : 120,
        height: widget.isMobile ? 60 : 120,
        child: FloatingActionButton(
          heroTag: null,
          onPressed: () {},
          backgroundColor: Color(0xFF48A742),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1,
                fontSize: widget.isMobile ? 15 : 33,
                fontWeight: FontWeight.w100,
              color: Colors.white
            ),),
          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 0.8)),
        ),
      ),
    );
  }
}
