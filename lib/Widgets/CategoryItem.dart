import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  String title;
  MaterialColor color;
  String comment;

  CategoryItem({this.title, this.color, this.comment});

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
          Text(widget.title,
            style: TextStyle(
                fontSize: 20
            ),),
          SizedBox(height: 5),
          Container(
            height: 250,
            width: 250,
            color: widget.color,
          ),
          SizedBox(height: 5),
          Text(widget.comment,
            style: TextStyle(
              fontSize: 13,
            ),
            maxLines: 3,)
        ],
      ),
    );
  }
}
