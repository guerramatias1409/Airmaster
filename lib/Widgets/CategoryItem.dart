import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  String title;
  String comment;
  String subcomment;
  String image;

  CategoryItem({this.title, this.image, this.comment, this.subcomment});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 5),
          Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.contain, image: AssetImage(widget.image)))),
          SizedBox(height: 5),
          Text(widget.comment,
              style: TextStyle(
                fontSize: 16,
              ),
              maxLines: 1),
          Text(widget.subcomment,
              style: TextStyle(
                fontSize: 14,
              ),
              maxLines: 2)
        ],
      ),
    );
  }
}
