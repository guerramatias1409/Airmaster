import 'package:flutter/material.dart';

class CategoryItem extends StatefulWidget {
  String title;
  String comment;
  String subcomment;
  String image;
  String route;
  bool isMobile;

  CategoryItem({this.title, this.image, this.comment, this.subcomment, this.route, this.isMobile = false});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: (){
        // if(widget.route != null){
        //   Navigator.pushNamed(context, widget.route);
        // }
      },
      child: Container(
        width: widget.isMobile ? 100 : 310,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: widget.isMobile ? 15 : 28),
            ),
            SizedBox(height: 5),
            Container(
                height: widget.isMobile ? 100 : 310,
                width: widget.isMobile ? 100 : 310,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(widget.image)))),
            SizedBox(height: 5),
            Text(widget.comment,
                style: TextStyle(
                  fontSize:  widget.isMobile ? 12 : 20,
                ),
                maxLines: widget.isMobile ? 3 : 1),
            Text(widget.subcomment,
                style: TextStyle(
                  fontSize:  widget.isMobile ? 10 : 18,
                  height: 1
                ),
                maxLines: widget.isMobile ? 4 : 2)
          ],
        ),
      ),
    );
  }
}
