import 'package:flutter/material.dart';

class SquaredButton extends StatefulWidget {
  String text;

  SquaredButton({this.text});

  @override
  _SquaredButtonState createState() => _SquaredButtonState();
}

class _SquaredButtonState extends State<SquaredButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: FloatingActionButton(
        heroTag: null,
        onPressed: () {},
        backgroundColor: Color(0xFF48A742),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
            color: Colors.white
          ),),
        shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black, width: 0.8)),
      ),
    );
  }
}
