import 'package:flutter/material.dart';

class HomeLeadingDivider extends StatefulWidget {
  @override
  _HomeLeadingDividerState createState() => _HomeLeadingDividerState();
}

class _HomeLeadingDividerState extends State<HomeLeadingDivider> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 25),
        VerticalDivider(
          endIndent: 10,
          indent: 10,
          width: 2,
          color: Colors.white,
        ),
        SizedBox(width: 25),
      ],
    );
  }
}
