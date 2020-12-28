import 'package:flutter/material.dart';

class GalleryItem extends StatefulWidget {
  String image;

  GalleryItem({this.image});

  @override
  _GalleryItemState createState() => _GalleryItemState();
}

class _GalleryItemState extends State<GalleryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(widget.image))));
  }
}
