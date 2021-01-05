import 'package:flutter/material.dart';

class GalleryItem extends StatefulWidget {
  String image;
  bool isMobile;

  GalleryItem({this.image, this.isMobile = false});

  @override
  _GalleryItemState createState() => _GalleryItemState();
}

class _GalleryItemState extends State<GalleryItem> {
  double width;

  @override
  void didChangeDependencies() {
    if(widget.isMobile){
      width = MediaQuery.of(context).size.width/3.5;
    }else{
      width = MediaQuery.of(context).size.width/4.15;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: width*0.66,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(widget.image))));
  }
}
